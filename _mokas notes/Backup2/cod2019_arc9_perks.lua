local ATT = {}
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Sleight of Hand]]
ATT.Description = [[Training in reloading faster when under pressure.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_soh.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = false

ATT.Category = "cod2019_perks_soh"
ATT.ActivateElements = {"perk_speedreload"}

--ATT.ReloadTimeMult = 0.80

ARC9.LoadAttachment(ATT, "cod2019_perks_soh")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Sleight of Hand]]
ATT.Description = [[Training in reloading faster when under pressure.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_soh.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = false

ATT.Category = "cod2019_perks_soh_2"
ATT.ActivateElements = {"perk_speedreload_2"}

ATT.ReloadTimeMult = 0.80

ARC9.LoadAttachment(ATT, "cod2019_perks_soh_alt")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Speed Melee]]
ATT.Description = [[Training in executing melee maneuvers with great speed]]
ATT.Icon = Material("entities/attachs/cod2019_perks_fastmelee.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = false

ATT.Category = "cod2019_perks"
ATT.ActivateElements = {"perk_speedmelee"}

-- ATT.PostBashTime = 0.1
ATT.BashSpeedMult = 1.15

ARC9.LoadAttachment(ATT, "cod2019_perks_speedmelee")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Heavy Hitter]]
ATT.Description = [[Melee produces greater stun/damage on targets.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_heavyhitter.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = false

ATT.Category = "cod2019_perks"
ATT.ActivateElements = {"perk_heavyhitter"}

ATT.BashDamageMult = 1.2

ARC9.LoadAttachment(ATT, "cod2019_perks_heavyhitter")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Enforcer]]
ATT.CompactName = [[Enforcer]]
ATT.Icon = Material("entities/attachs/cod2019_perks_juggernaut.png", "mips smooth")
ATT.Description = [[Gain 30% resistance to damage.]]
ATT.Pros = {
    "+ 30% Resistance to all damage."
}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.Free = false

ATT.Category = "cod2019_perks"
ATT.ActivateElements = {"perk_enforcer"}

hook.Add("EntityTakeDamage", "ARC9_COD2019_PERK_ENFORCER", function(ent, dmg)
    if !(ent:IsPlayer() or ent:IsNPC()) then return end
    local wep = ent:GetActiveWeapon()
    if !IsValid(wep) or !wep.ARC9 then return end
    local attached = wep:GetElements()
    if !attached["enforcer"] then return end

    if attached["enforcer"] then
        dmg:ScaleDamage(0.7)
    end
end)

ARC9.LoadAttachment(ATT, "cod2019_perks_enforcer")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Deft Hands]]
ATT.Description = [[Cycling your weapon 25% faster than normal.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_bolt.png", "mips smooth")
ATT.AutoStats = true
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.Free = false

ATT.Category = {"cod2019_perks_2"}
ATT.ActivateElements = {"perk_bolt"}

ATT.CycleTimeMult = 0.75
--ATT.RPMMult = 1.75

ARC9.LoadAttachment(ATT, "cod2019_perks_bolt")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Deft Hands]]
ATT.Description = [[Cycling your weapon 25% faster than normal.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_bolt.png", "mips smooth")
ATT.AutoStats = true
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.Free = false

ATT.Category = {"cod2019_perks_2_alt"}
ATT.ActivateElements = {"perk_bolt"}

--ATT.CycleTimeMult = 0.75
--ATT.RPMMult = 1.75

ARC9.LoadAttachment(ATT, "cod2019_perks_bolt")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Slam Fire]]
ATT.Description = [[Increases the weapon's firing and pumping speed.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_slamfire.png", "mips smooth")
ATT.AutoStats = true
ATT.MenuCategory = "ARC9 - MW2019 Attachments"

ATT.Free = false

ATT.Category = {"cod2019_perks_shot"}
ATT.ActivateElements = {"perk_slamfire"}

ATT.CycleTimeMult = 0.75
ATT.RPMMult = 1.75

ARC9.LoadAttachment(ATT, "cod2019_perks_slamfire")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Burst]]
ATT.Description = [[Changes fire mode to 3-round burst.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_burst.png", "mips smooth")
ATT.AutoStats = true
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.RunawayBurst = true
ATT.PostBurstDelay = 0.15
--ATT.TracerEffect = "ARC9_tracer"

ATT.Category = {"cod2019_perks_burst"}
ATT.ActivateElements = {"perk_burst"}

ATT.Firemodes = {
    {
        Mode = 3,
        RunawayBurst = true,
		PoseParam = 0,
		TracerEffect = "ARC9_tracer"
    },
    {
        Mode = 1,
		RPMMult = 1.5,
		PoseParam = 1,
    },
}

ARC9.LoadAttachment(ATT, "cod2019_perks_burst")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Burst]]
ATT.Description = [[Changes fire mode to 2-round burst.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_burst_2.png", "mips smooth")
ATT.AutoStats = true
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.Free = false

ATT.Category = {"cod2019_perks_burst_2"}
ATT.ActivateElements = {"perk_burst"}

ATT.RunawayBurst = true
ATT.PostBurstDelay = 0.15
--ATT.TracerEffect = "ARC9_tracer"

ATT.Firemodes = {
    {
        Mode = 2,
		PoseParam = 0,
		TracerEffect = "ARC9_tracer"
    },
    {
        Mode = 1,
		RPMMult = 1.5,
		PoseParam = 1,
    },
}

ARC9.LoadAttachment(ATT, "cod2019_perks_burst_2")
------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Tactical Sprint]]
ATT.Description = [[Training in glutens giving you a more tactical sprinting.]]
ATT.Icon = Material("entities/attachs/cod2019_perks_supersprint.png", "mips smooth")
ATT.MenuCategory = "ARC9 - MW2019 Attachments"
ATT.AutoStats = true

ATT.Free = false

ATT.Category = "cod2019_perks_ss"
ATT.ActivateElements = {"perk_super_sprint"}

ATT.SpeedSprint = 1.2
ATT.CamQCA_MultSprint = 0.25
ATT.SprintToFireTimeMult = 1.1

ATT.SprintPos = Vector(0, 0, 0)
ATT.SprintAng = Angle(0, 0, 0)

ARC9.LoadAttachment(ATT, "cod2019_perks_super_sprint")