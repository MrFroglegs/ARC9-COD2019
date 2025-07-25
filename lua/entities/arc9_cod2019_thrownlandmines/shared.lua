AddCSLuaFile()

ENT.Base = "arc9_cod2019_plantable"
ENT.PrintName = "Landmine"

ENT.Model = "models/weapons/w_eq_landmines_dropped.mdl"
ENT.WeaponClass = "arc9_cod2019_nade_landmines"
ENT.Bury = 3
ENT.DetectionRange = 96
ENT.ArmDelay = 3
ENT.Radius = 300
ENT.SpinAngles = Vector(0, 0, 900)

ENT.MinS = Vector(-6, -6, 0)
ENT.MaxS = Vector(6, 6, 3)

PrecacheParticleSystem("small_smoke_effect3")

if CLIENT then
    killicon.Add( "arc9_cod2019_thrownlandmines", "VGUI/killicons/cod2019_landmines", Color(251, 85, 25, 255))
end

function ENT:OnPlant()
    self:EmitSound("weapons/cod2019/throwables/mine/proxy_plant_01.ogg", 75, 100, 1, CHAN_AUTO)
    ParticleEffect("small_smoke_effect3", self:GetPos(), self:GetAngles(), nil)
end

function ENT:Think()
    if SERVER and self:GetArmed() and not self.Primed then
        for _, i in ipairs(ents.FindInSphere(self:GetPos(), self.DetectionRange)) do
            if IsValid(i) and ((i:IsPlayer() and i:GetVelocity():Length2DSqr() >= 22500) or i:IsNPC() or i:IsNextBot() or i:IsVehicle()) then
                self.Primed = true
                timer.Simple(0.75, function()
                    if IsValid(self) then self:Detonate() end
                end)
                break
            end
        end

        self:NextThink(CurTime() + 0.25)
        return true
    elseif SERVER and self.Primed then
        local effectData = EffectData()
        effectData:SetEntity(self)
        effectData:SetOrigin(self:GetPos())
        util.Effect("cod2019_effect_semtex", effectData)
        self:NextThink(CurTime() + 0.075)
        return true
    end
end

function ENT:Detonate()
    if SERVER then
        if not self:IsValid() then return end
        local pos = self:GetPos() + self:GetUp() * 6
        local effectdata = EffectData()
        effectdata:SetOrigin(pos)
        effectdata:SetStart(pos)
        effectdata:SetRadius(512)
        effectdata:SetEntity(self)

        if self:WaterLevel() >= 1 then
            util.Effect("WaterSurfaceExplosion", effectdata)
        else
            --ParticleEffect("explosion_grenade", pos, self:GetAngles(), nil)
            util.Effect("cod2019_grenade_explosion", effectdata)
            self:EmitSound("COD2019.Mine.Explode")
            local spos = pos

            local trs = util.TraceLine({
                start = spos + Vector(0, 0, 64),
                endpos = spos + Vector(0, 0, -32),
                filter = self
            })
            util.Decal("Scorch", trs.HitPos + trs.HitNormal, trs.HitPos - trs.HitNormal)
        end

        local oldowner = self.Attacker or self:GetOwner()
        if not IsValid(oldowner) then
            oldowner = self
        end

        local d = Lerp(self:GetUp():Dot(Vector(0, 0, 1)), 0.5, 1)
        --self:SetOwner(NULL)
        util.BlastDamage(oldowner, oldowner, pos, 128, 200 * d)
        util.BlastDamage(oldowner, oldowner, pos, 256, 100 * d)
        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()

        if self:GetArmed() and math.sin(self.SpawnTime + CurTime() * 2) >= 0.8 then
            local pos = self:GetPos() + self:GetUp() * 4
            cam.Start3D() -- Start the 3D function so we can draw onto the screen.
            render.SetMaterial(Material("effects/blueflare1")) -- Tell render what material we want, in this case the flash from the gravgun
            render.DrawSprite(pos, 12, 12, Color(255, 0, 0)) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
            cam.End3D()
        end
    end
end