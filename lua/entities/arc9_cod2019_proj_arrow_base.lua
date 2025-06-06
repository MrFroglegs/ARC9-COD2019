ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Crossbow Arrow Base"

ENT.ImpactDamage = 75
ENT.Model = "models/weapons/cod2019/mags/w_eq_crossbow_bolt.mdl"

ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE
ENT.CanPickup = true
ENT.GunshipWorkaround = true
ENT.ImpactScorch = false
ENT.ExplodeOnImpact = false

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_crossbow_default", "hud/killicons/default", Color( 255, 255, 255, 255 ) )
end

if SERVER then
    AddCSLuaFile()

    function ENT:Initialize()
        self:SetModel(self.Model)
        self:SetNoDraw(false)
        self:SetSolid(SOLID_VPHYSICS)
        --self:PhysicsInitBox(Vector(-4, -1, -1), Vector(4, 1, 1))
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:AddEFlags(EFL_NO_DAMAGE_FORCES)
        self:AddEFlags(EFL_DONTWALKON)
        self:AddEFlags(EFL_DONTBLOCKLOS)
        self:AddEFlags(EFL_NO_PHYSCANNON_INTERACTION)
        self:DrawShadow(false)
        local phys = self:GetPhysicsObject()

        if (phys:IsValid()) then
            phys:Wake()
            phys:EnableGravity(true)
            phys:SetBuoyancyRatio(1)
            phys:SetDragCoefficient(2)
            phys:SetMass(2)
        end

        util.SpriteTrail(self, 0, Color(155, 155, 155), false, 3, 1, 0.1, 2, "trails/smoke.vmt")
        SafeRemoveEntityDelayed(self, 60)
		self:OnInitialize()
    end

    function ENT:Think()
        local effectdata = EffectData()
        effectdata:SetOrigin(self:GetPos())

        if self.Stuck then
            if self:GetSolid() == SOLID_VPHYSICS then
                return
            elseif not self.AttachToWorld and (not IsValid(self:GetParent())) or (IsValid(self:GetParent()) and self:GetParent():GetSolid() ~= SOLID_VPHYSICS and (self:GetParent():Health() <= 0)) then
                timer.Simple(0, function()
				self:SetParent()
                self:PhysicsInit(SOLID_VPHYSICS)
                self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
                self:PhysWake()
				self:SetTrigger(true)
				self:UseTriggerBounds(true, 16)
				end)
            end
        end
		
    local gunship = {
	["npc_combinegunship"] = true,
	["npc_helicopter"] = true,
	["npc_combinedropship"] = true
	}

    if SERVER and self.GunshipWorkaround and (self.GunshipCheck or 0 < CurTime()) then
            self.GunshipCheck = CurTime() + 0.33
            local tr = util.TraceLine({
                start = self:GetPos(),
                endpos = self:GetPos() + (self:GetVelocity() * 6 * engine.TickInterval()),
                filter = {self:GetOwner(), self},
                mask = MASK_SHOT_PORTAL,
                collisiongroup = COLLISION_GROUP_PROJECTILE,
            })
        if IsValid(tr.Entity) and gunship[tr.Entity:GetClass()] then
           self:SetPos(tr.HitPos)
           self:Detonate()
           self:Explode()
        end
    end
	
    end

    function ENT:StartTouch(ent)
        if self.Stuck and self.CanPickup and ent:IsPlayer() then
            ent:GiveAmmo(1, "xbowbolt")
			self:EmitSound("shared/iw8_mp_scavenger_pack_pickup.wav", 120, 100, 1, CHAN_AUTO)
            timer.Simple(0, function()
			if (!IsValid(self)) then return end
			self:Remove() end) 
        end
    end

    function ENT:Use(ply)
        if self.Stuck and self.CanPickup then
            ply:GiveAmmo(1, "xbowbolt")
			self:EmitSound("shared/iw8_mp_scavenger_pack_pickup.wav", 120, 100, 1, CHAN_AUTO)
            timer.Simple(0, function()
			if (!IsValid(self)) then return end
			self:Remove() end) 
        end
    end

    function ENT:PhysicsCollide(data, physobj)
        if self.Stuck then return end
        self.Stuck = true
        local tgt = data.HitEntity
        local dmginfo = DamageInfo()
        dmginfo:SetDamageType(DMG_NEVERGIB)
        dmginfo:SetDamage(self.ImpactDamage)
        dmginfo:SetAttacker(self:GetOwner())
        dmginfo:SetInflictor(self)
        tgt:TakeDamageInfo(dmginfo)
        local angles = self:GetAngles()
        local hitEntity = data.HitEntity -- Get the entity that was hit (can be nil if it hit the world)

        if tgt:IsWorld() or (IsValid(tgt) and tgt:GetPhysicsObject():IsValid()) then
            timer.Simple(0, function()
                self:SetAngles(angles)
                self:SetPos(data.HitPos)
                self:GetPhysicsObject():Sleep()
				
                self:SetTrigger(true)
                self:UseTriggerBounds(true, 16)

                if tgt:IsWorld() or IsValid(tgt) then
				if !self:IsValid() then return end
                    self:SetSolid(SOLID_NONE)
                    self:SetMoveType(MOVETYPE_NONE)
                    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

                    local f = {self}
                    table.Add(f, tgt:GetChildren())

                    local tr = util.TraceLine({
                        start = data.HitPos - data.OurOldVelocity * 0.5,
                        endpos = data.HitPos + data.OurOldVelocity,
                        filter = f,
                        mask = MASK_SHOT
                    })

                    local bone = tr.Entity:TranslatePhysBoneToBone(tr.PhysicsBone) or tr.Entity:GetHitBoxBone(tr.HitBox, tr.Entity:GetHitboxSet())
                    local matrix = tgt:GetBoneMatrix(bone or 0)
                    if tr.Entity == tgt and bone and matrix then
                        local pos = matrix:GetTranslation()
                        local ang = matrix:GetAngles()
                        self:FollowBone(tgt, bone)
                        local n_pos, n_ang = WorldToLocal(tr.HitPos, tr.Normal:Angle(), pos, ang)
                        self:SetLocalPos(n_pos)
                        self:SetLocalAngles(n_ang)
                        debugoverlay.Cross(pos, 8, 5, Color(255, 0, 255), true)
                    elseif not tgt:IsWorld() then
                        self:SetParent(tgt)
                        self:GetParent():DontDeleteOnRemove(self)
                    else
                        self.AttachToWorld = true
                    end
                end
            end)
        end
		
		if self.ImpactScorch then
		util.Decal("Scorch", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)
		end
		
        if self:Impact(tr1, data, bHull) then
            return
        end
        if self:OnHit(data, collider) then
            return
        end
    end
end

function ENT:Impact(tr1, data, bHull)
    local ang = data.OurOldVelocity:Angle()
	local dmginfo = DamageInfo()
	self:FireBullets({
		Attacker = self:GetOwner(),
		Num = 1,
		Tracer = 0,
        Dir = ang:Forward(),
        Src = data.HitPos - ang:Forward(),
		HullSize = bHull && self.Maxs:Length() * 2 || 1,
		IgnoreEntity = self,
		Callback = function(attacker, tr, dmgInfo)
			dmgInfo:SetInflictor(IsValid(self.Weapon) && self.Weapon || self)
			dmginfo:SetDamageType(DMG_SNIPER + DMG_SLASH)

			if (tr.HitSky) then
				self:Remove()
			else
            if self.ExplodeOnImpact then
                self:Detonate()
            end
				sound.Play("weapons/cod2019/shared/bullet_small_crossbow_bolt_swt_01.ogg", tr.HitPos)
			end
			
			if (tr.Entity:IsPlayer() || tr.Entity:IsNPC() || tr.Entity:IsNextBot() || tr.Entity:IsRagdoll()) then
				sound.Play("weapons/cod2019/shared/blt_imp_flesh_plr_04.ogg", tr.HitPos + tr.HitNormal * 5)
				return
			end
		end
	})
end

function ENT:OnHit()
end

function ENT:OnInitialize()
end

function ENT:Detonate()
end

function ENT:Explode()
end

function ENT:Draw()
    self:DrawModel()
end