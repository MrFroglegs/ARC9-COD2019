PrecacheParticleSystem("mw2019_tracer_rainbow")
EFFECT.TracerName = "mw2019_tracer_rainbow"

function EFFECT:Init(data)
    self.WeaponEnt = data:GetEntity()
    if not IsValid(self.WeaponEnt) then return end
    self.Attachment = data:GetAttachment() or 1
	self.Position = self:GetTracerShootPos(data:GetStart(), data:GetEntity(), self.Attachment)

    if IsValid(self.WeaponEnt.Owner) then
        if self.WeaponEnt.Owner == LocalPlayer() then
            if not self.WeaponEnt.Owner:GetViewEntity() then
                ang = self.WeaponEnt.Owner:EyeAngles()
                ang:Normalize()
                self.Forward = ang:Forward()
            else
                self.WeaponEnt = self.WeaponEnt.Owner:GetViewModel()
            end
        else
            ang = self.WeaponEnt.Owner:EyeAngles()
            ang:Normalize()
            self.Forward = ang:Forward()
        end
    end

    self.EndPos = data:GetOrigin()
    -- util.ParticleTracerEx(self.ParticleName, self.StartPos, self.EndPos, false, self:EntIndex(), self.Attachment)
    local pcf = CreateParticleSystem(self.WeaponEnt, self.TracerName, PATTACH_ABSORIGIN, self.Attachment)
    if IsValid(pcf) then
        pcf:SetControlPoint(0,self.Position)
        pcf:SetControlPoint(1,self.EndPos)
        pcf:StartEmission()
    end
    timer.Simple(1, function()
        if IsValid(pcf) then
            pcf:StopEmissionAndDestroyImmediately()
        end
    end)
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
    if self.InValid then return false end
end