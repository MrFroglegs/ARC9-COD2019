AddCSLuaFile()

ENT.Category = "ShadowMoly"
ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Incendiary Grenade"
ENT.Spawnable = false

game.AddParticles("particles/sdrk_molotov.pcf")
PrecacheParticleSystem( "incen_fire_pool" )

if SERVER then

local function TargetIsValid(ent) 
    return !ent:IsWorld()
end

function ENT:Initialize() 
    self:SetModel("models/weapons/cod2019/w_eq_thermite_thrown.mdl") --set this string to the filepath of your molotov model | "models/your/filepath/yourfile.mdl"
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
	self:SetAngles(Angle(0, 0, -70))

	timer.Simple(0, function()
        if (!IsValid(self)) then return end
        ParticleEffectAttach("thermite_thrown_trail",PATTACH_POINT_FOLLOW,self,1)
	end)    

    local phys = self:GetPhysicsObject()
    if phys:IsValid() then
        phys:Wake()
    end

    phys:SetMass(10)
    phys:ApplyTorqueCenter( VectorRand(-10,10) )
end

function ENT:Think()
end

function ENT:PhysicsCollide( data,phys )
    local attacker = self.Attacker or self:GetOwner()
	if IsValid(data.HitEntity) then
       local dmginfo = DamageInfo()
       dmginfo:SetAttacker(attacker)
       dmginfo:SetInflictor(self)
       dmginfo:SetDamageType(DMG_CRUSH + DMG_CLUB)
       dmginfo:SetDamage(25)
       dmginfo:SetDamageForce(data.OurOldVelocity * 15)
       dmginfo:SetDamagePosition(data.HitPos)
       data.HitEntity:TakeDamageInfo(dmginfo)
	end

	local ang = data.HitNormal:Angle()
	ang.p = math.abs( ang.p )
	ang.y = math.abs( ang.y )
	ang.r = math.abs( ang.r )
	
	if ang.p > 90 or ang.p < 60 then
		self:EmitSound(Sound("weapons/cod2019/throwables/frag/phy_frag_bounce_concrete_hard_0" .. math.random(1,3) .. ".ogg"), 75, 100, 1, CHAN_AUTO )

		local impulse = (data.OurOldVelocity - 2 * data.OurOldVelocity:Dot(data.HitNormal) * data.HitNormal)*0.25
		phys:ApplyForceCenter(impulse)
	else
       self:Detonate()
	end
end

function ENT:Detonate()
    if self:WaterLevel() > 0 then self:Remove() self:StopParticles() self:SetNoDraw(true) return end
    local attacker = self.Attacker or self:GetOwner() or self
	
	self:EmitSound("^weapons/cod2019/throwables/molotov/inc_grenade_detonate_1.ogg", 100, 100, 1, CHAN_AUTO)

    local firepool = ents.Create( "arc9_cod2019_fire_pool" )
    if !IsValid(firepool) then return end

    firepool:SetPos(self:GetPos())
    firepool:SetOwner(attacker)
    firepool:Spawn()

    self:Remove()
end

function ENT:DrawTranslucent()
    self:Draw()
end

function ENT:Draw() 
    self:DrawModel()
end

end