AddCSLuaFile()

if CLIENT then
    killicon.Add("arc9_cod2019_thrownflash", "vgui/killicons/cod2019_flash", Color(251, 85, 25, 255))
end

ENT.Type = "anim"
ENT.Base = "arc9_nade_base"
ENT.PrintName = "Flash Bang"
ENT.Spawnable = false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE
ENT.Model = "models/weapons/cod2019/w_eq_flash_thrown.mdl"
ENT.PhysBoxSize = false
ENT.SphereSize = false
ENT.PhysMat = "grenade"
ENT.LifeTime = 1.5
ENT.Radius = 100
ENT.ExplodeOnImpact = false
ENT.SmokeTrail = false
ENT.BounceSound = "COD2019.Flash.Bounce"


function ENT:EntityFacingFactor(theirent)
    local dir = theirent:EyeAngles():Forward()
    local facingdir = (self:GetPos() - (theirent.GetShootPos and theirent:GetShootPos() or theirent:GetPos())):GetNormalized()

    return (facingdir:Dot(dir) + 1) / 2
end

function ENT:EntityFacingUs(theirent)
    local dir = theirent:EyeAngles():Forward()
    local facingdir = (self:GetPos() - (theirent.GetShootPos and theirent:GetShootPos() or theirent:GetPos())):GetNormalized()
    if facingdir:Dot(dir) > -0.25 then return true end
end

local BaseClass = baseclass.Get(ENT.Base)


function ENT:PhysicsCollide(data)
    BaseClass.PhysicsCollide(self, data)
    self:GetPhysicsObject():SetVelocityInstantaneous(data.OurNewVelocity * 0.9)
end

local function isCowerSupportedForNPC(npc)
    for _, a in pairs(npc:GetSequenceList()) do
        if npc:GetSequenceActivity(npc:LookupSequence(a)) == ACT_COWER then return true end
    end

    return false
end

local lethalToNpcs = {"npc_barnacle", "npc_crow", "npc_pigeon", "npc_seagull", "npc_zombie", "npc_fastzombie", "npc_zombie_torso", "npc_zombine", "npc_headcrab", "npc_headcrab_black", "npc_headcrab_fast", "npc_headcrab_fast", "npc_lambdaplayer",}

function ENT:Initialize()
    if SERVER then
        self:SetModel(self.Model)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
        self:PhysicsInit(SOLID_VPHYSICS)
        self:DrawShadow(true)
        self:SetAngles(Angle(0, 0, -75))
        local phys = self:GetPhysicsObject()

        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.SpawnTime = CurTime()

        timer.Simple(0, function()
            if not IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)

        sound.EmitHint(SOUND_DANGER, self:GetPos(), 200, 8, nil) --make shit run away (nil owner so even rebels run)
    end

    ParticleEffectAttach("grenadetrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
end

function ENT:Detonate()
    if not self:IsValid() then return end
    if self.Defused then return end

    if self:WaterLevel() > 0 then
        local tr = util.TraceLine({
            start = self:GetPos(),
            endpos = self:GetPos() + Vector(0, 0, 1) * 1024,
            filter = self,
        })

        local tr2 = util.TraceLine({
            start = tr.HitPos,
            endpos = self:GetPos(),
            filter = self,
            mask = MASK_WATER
        })

        ParticleEffect("explosion_water", tr2.HitPos + Vector(0, 0, 8), Angle(0, 0, 0), nil)
        self:EmitSound("weapons/underwater_explode3.wav", 100)
    else
        ParticleEffect("Generic_explo_flash", self:GetPos(), Angle(0, 0, 0), nil)
        self:EmitSound("COD2019.Flash.Explode")
    end

    util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, self:GetPos(), 256, 32)
    util.ScreenShake(self:GetPos(), 25, 4, 0.75, self.Radius * 4)
    local radius = 1200
    local owner = self:GetOwner()

    for _, e in pairs(ents.FindInSphere(self:GetPos(), radius)) do
        if (e:IsPlayer() or e:IsNPC()) and not e:IsLineOfSightClear(self:GetPos()) then continue end

        if e:IsPlayer() then
            local dist = e:GetPos():DistToSqr(self:GetPos())
            local distDelta = 1 - math.Clamp(dist / (radius * radius), 0, 1)
            local strength = Lerp(distDelta, 0, 2)
            e:SendLua("LocalPlayer():EmitSound('COD2019.Flash.Explode')")
            local dot = e:EyeAngles():Forward():Dot((e:GetPos() - self:GetPos()):GetNormalized())
            strength = strength * math.max(-dot, 0.1)
            e:ScreenFade(SCREENFADE.IN, color_white, strength, strength * 0.5)
            e:SetDSP(35)
            continue
        end

        if e:IsNPC() then
            e:StartEngineTask(89, 0) --task_sound_pain

            if isCowerSupportedForNPC(e) then
                e:SetSchedule(SCHED_COWER)
            else
                if table.HasValue(lethalToNpcs, e:GetClass()) then
                    e:TakeDamage(e:Health(), self:GetOwner(), self or nil)
                end
            end

            continue
        end
    end

    if SERVER then
        local dir = self.HitVelocity or self:GetVelocity()

        if self.Boost <= 0 then
            dir = Vector(0, 0, -1)
        end

        self:FireBullets({
            Attacker = self,
            Damage = 0,
            Tracer = 0,
            Distance = 256,
            Dir = dir,
            Src = self:GetPos(),
            Callback = function(att, tr, dmg)
                if self.Scorch then
                    util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
                end
            end
        })
    end

    sound.EmitHint(SOUND_DANGER, self:GetPos(), radius, 6, nil) --needed for task (make them blinded for a little longer)
    self:Remove()
end

function ENT:OnRemove()
    if self:WaterLevel() <= 0 then
        if CLIENT then
            local dlight = DynamicLight(self:EntIndex())

            if dlight then
                dlight.pos = self:GetPos()
                dlight.r = 255
                dlight.g = 255
                dlight.b = 255
                dlight.brightness = 5
                dlight.Decay = 2000
                dlight.Size = 1024
                dlight.DieTime = CurTime() + 5
            end
        end
    end

    self:StopParticles()
end