SWEP.CustomSelectIcon = Material("vgui/hud/arc9_cod2019_nade_landmines")

SWEP.Base = "arc9_cod2019_base_nade"

SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_throwable") or "Throwable"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_nade_landmines.png"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = true
SWEP.NotForNPCs = true

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_nade_proximity") or "Landmine"
SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lethal") or "Proximity Explosive"

SWEP.Description = ARC9:GetPhrase("mw19_weapon_nade_proximity_desc") or [[Pressure-triggered explosive that deals heavy damage.]]
SWEP.ARC9WeaponCategory = 8

SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_fss"),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/TheOnly8Z/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("mw19_firemode_plant")
        -- add other attachment modifiers
    },
}

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/cod2019/c_eq_mine.mdl"
SWEP.WorldModel = "models/weapons/w_eq_landmines.mdl"
SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKParentToSpine4 = true
SWEP.WorldModelOffset = {
    Pos = Vector(-6.5, 3, -11),
    Ang = Angle(20, -10, 195),

    TPIKPos = Vector(11, 2, 0),
    TPIKAng = Angle(0, 90, 90),
    Scale = 1,
}

SWEP.BottomlessClip = true
SWEP.ClipSize = 1
SWEP.ChamberSize = 0
SWEP.SupplyLimit = 3
SWEP.Crosshair = true

SWEP.Spread = 0
SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "arc9_cod2019_thrownlandmines"
SWEP.Ammo = "slam" -- What ammo type this gun uses.

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = false -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = -1 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 550 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 550 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 550 -- Force that the grenade will be thrown with when right clicked.

SWEP.ThrowChargeTime = 0 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.Disposable = true

SWEP.ThrowTumble = false
SWEP.ThrowOnGround = false
SWEP.ThrowInstantly = false
SWEP.ShootEntInheritPlayerVelocity = true

SWEP.ShootPosOffset = Vector(0, 15, -10)

-------------------------- AIM ASSIST

SWEP.NoAimAssist = true

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 64

SWEP.SprintPos = Vector(0, -1, 0)
SWEP.SprintAng = Angle(15, -5, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1.5, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.ActivePosBash = Vector(0, 0, 0)
SWEP.ActiveAngBash = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(0, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(0, 0, 0)
SWEP.CustomizePos = Vector(0, 20, 10.5)

SWEP.CustomizeSnapshotAng = Angle(90, 0, 0)
SWEP.CustomizeSnapshotPos = Vector(-13, 10, 3)
SWEP.CustomizeRotateAnchor = Vector(-5, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = true

-------------------------- HoldTypes

SWEP.HoldType = "slam"
SWEP.HoldTypeNPC = "slam"
SWEP.HoldTypeSprint = "slam"
SWEP.HoldTypeHolstered = "slam"
SWEP.HoldTypeSights = "slam"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1

local path = "weapons/cod2019/throwables/mine/"

function SWEP:SecondaryAttack()
    return self:MeleeAttack()
end

SWEP.PreBashTime = 0.22
SWEP.PostBashTime = 0.4
SWEP.ImpactForce = 25

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_primed"] = {
        Source = "idle"
    },
    ["quicknade"] = {
        Source = "draw",
        MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = path .. "proxy_pull_out.ogg", t = 0/30},
        },
    },
    ["draw"] = {
        Source = "draw",
        MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = path .. "proxy_pull_out.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "proxy_pull_out.ogg", t = 0/30},
        },
    },
    ["throw"] = {
        Source = "throw",
        EventTable = {
            {s = path .. "proxy_throw.ogg", t = 0/30},
        },
        MinProgress = 0.44
    },
    ["bash"] = {
        Source = "melee",
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        MinProgress = 0.9,
        FireASAP = true,
    },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks"},
    },
}