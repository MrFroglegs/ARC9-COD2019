AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sh_vlk", "vgui/killicons/cod2019_sh_vlk.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sh_vlk.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_shotgun") or "Shotguns"
SWEP.ARC9WeaponCategory = 2

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_vlk") or "VLK Rogue"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_shotgun") or "Shotgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_russia"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_vlk"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_12gauge"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 2.26, 2.26 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 493),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_vlk_desc") or [[An agile 12-gauge mag fed shotgun from VLK with extensive options to modify range, stability, and maneuverability.]]

SWEP.ViewModel = "models/weapons/cod2019/c_shot_vlk.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_shot_vlk.mdl"
SWEP.DefaultBodygroups = "00000000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_vlk.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-4, 3, -5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-5, 5, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(1, 0, -3),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 110 -- Damage done at point blank range
SWEP.DamageMin = 30 -- Damage done at maximum range
SWEP.DistributeDamage = true

SWEP.Num = 4

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 10 / ARC9.HUToM
SWEP.RangeMax = 12 / ARC9.HUToM

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0
SWEP.ImpactForce = 6.5
SWEP.DamageType = DMG_BULLET + DMG_BUCKSHOT
SWEP.CurvedDamageScaling = true

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.ForceStandardCrosshair = false

SWEP.ManualAction = true
SWEP.NoLastCycle = true
SWEP.ManualActionNoLastCycle = true

--SWEP.ShotgunReload = true
--SWEP.ManualActionChamber = 1

SWEP.BarrelLength = 13

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 7.5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.9

SWEP.RecoilPerShot = 3
SWEP.RecoilMax = 3

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.3

-------------------------- SPREAD

SWEP.Spread = 0.075

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = SWEP.Spread * 0
SWEP.SpreadAddMove = SWEP.Spread * 0.2
SWEP.SpreadAddMidAir = SWEP.Spread * 0.5
SWEP.SpreadAddCrouch = -SWEP.Spread * 0.1
SWEP.SpreadAddSights = -SWEP.Spread * 0.1

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = SWEP.RecoilMax
SWEP.RecoilModifierCapMove = 0

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-1.75, -2, 1.1),
    Ang = Angle(0, 0, 6.5),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(10.25, 32.5, 3)
SWEP.CustomizeRotateAnchor = Vector(10.25, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 35, 0)

SWEP.PeekPos = Vector(-1, -1, -2.5)
SWEP.PeekAng = Angle(0, 0.4, -45)

SWEP.PeekMaxFOV = 64

SWEP.PeekPosReloading = Vector(0, 3, -2)
SWEP.PeekAngReloading = Angle(-0.3, 0, -10)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeNPC = "shotgun"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_shotgun"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.TracerEffect = "cod2019_tracer_slow"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_jak12.mdl"
SWEP.ShellSounds = ARC9.COD2019_Shotgun_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true
SWEP.EjectDelay = 0.15

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_shot_vlk_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.85
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

-------------------------- SOUNDS

local path = "weapons/cod2019/vlk/"

SWEP.ShootSound = "COD2019.VLK.Fire"
SWEP.ShootSoundIndoor = "COD2019.VLK.Fire"

SWEP.ShootSoundSilenced = "COD2019.VLK.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.VLK.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Shotgun2.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_ShotgunSUP.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sh_mark26_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sh_mark26_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_shell_01",
    [2] = "j_shell_02",
    [3] = "j_shell_03",
}

SWEP.HideBones = {
    [1] = "j_mag2",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "j_mag2",
    },
    [2] = {
        "j_mag2",
        "j_mag1",
		"j_shell_01",
		"j_shell_02"
    }
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/jak12/weap_aalpha12_prefire_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/model680/weap_romeo870_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["fire_alt"] = {
        Source = "shoot1_alt",
		EjectAt = 0.05,
    },
    ["cycle"] = {
        Source = "pump",
		--EjectAt = 0.2,
		MinProgress = 0.4,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_sh_mark26_rechamber.ogg", v = 0.5, t = 0/30},
        },
    },
    ["dryfire"] = {
        Source = "dryfire",
		MinProgress = 0.4,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.95,
		RefillProgress = 0.725,
		PeekProgress = 0.825,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_magout.ogg", t = 11/30},
			{s = path .. "wfoly_sh_mark26_reload_maghit.ogg", t = 35/30},
			{s = path .. "wfoly_sh_mark26_reload_magin.ogg", t = 51/30},
			{s = path .. "wfoly_sh_mark26_reload_end.ogg", t = 55/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.7},
			{hide = 1, t = 0.9},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.95,
		RefillProgress = 0.825,
		PeekProgress = 0.875,
		FireASAP = true,
		EjectAt = 0.15,
		DropMagAt = 0.95,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.05, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_bolt_pull.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_mag_release.ogg", t = 15/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_magout.ogg", t = 18/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_arm_up.ogg", t = 34/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_maghit.ogg", t = 49/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_magin.ogg", t = 60/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_rotate.ogg", t = 68/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_bolt_forward.ogg", t = 80/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_end.ogg", t = 95/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.95},
			{hide = 1, t = 1.25},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.95,
		RefillProgress = 0.725,
		PeekProgress = 0.875,
		FireASAP = true,
		DropMagAt = 0.55,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_reload_fast_rotate.ogg", t = 0},
			{s = path .. "wfoly_sh_mark26_reload_fast_magout.ogg", t = 0.167},
			{s = path .. "wfoly_sh_mark26_reload_fast_maghit.ogg", t = 1.067},
			{s = path .. "wfoly_sh_mark26_reload_fast_magin.ogg", t = 1.333},
			{s = path .. "wfoly_sh_mark26_reload_fast_end.ogg", t = 1.667},
			{hide = 1, t = 0},
			{hide = 2, t = 0.55},
			{hide = 1, t = 0.7},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.95,
		RefillProgress = 0.825,
		PeekProgress = 0.925,
		FireASAP = true,
		EjectAt = 0.15,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_bolt_pull.ogg", t = 0},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_magout.ogg", t = 0.467},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_arm_up.ogg", t = 1.033},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_magin.ogg", t = 1.4},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_rotate.ogg", t = 1.7},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_bolt_forward.ogg", t = 2.067},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_end.ogg", t = 2.4},
			{hide = 1, t = 0},
			{hide = 2, t = 0.7},
			{hide = 1, t = 0.9},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.95,
		RefillProgress = 0.725,
		PeekProgress = 0.825,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_magout.ogg", t = 11/30},
			{s = path .. "wfoly_sh_mark26_reload_maghit.ogg", t = 35/30},
			{s = path .. "wfoly_sh_mark26_reload_magin.ogg", t = 51/30},
			{s = path .. "wfoly_sh_mark26_reload_end.ogg", t = 55/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.7},
			{hide = 1, t = 1},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload",
		MinProgress = 0.95,
		RefillProgress = 0.825,
		PeekProgress = 0.875,
		FireASAP = true,
		EjectAt = 0.15,
		DropMagAt = 0.95,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.05, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_bolt_pull.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_mag_release.ogg", t = 15/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_magout.ogg", t = 18/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_arm_up.ogg", t = 34/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_maghit.ogg", t = 49/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_magin.ogg", t = 60/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_rotate.ogg", t = 68/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_bolt_forward.ogg", t = 80/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_end.ogg", t = 95/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.95},
			{hide = 1, t = 1.25},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.95,
		RefillProgress = 0.725,
		PeekProgress = 0.875,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_reload_fast_rotate.ogg", t = 0},
			{s = path .. "wfoly_sh_mark26_reload_fast_magout.ogg", t = 0.167},
			{s = path .. "wfoly_sh_mark26_reload_fast_maghit.ogg", t = 1.067},
			{s = path .. "wfoly_sh_mark26_reload_fast_magin.ogg", t = 1.333},
			{s = path .. "wfoly_sh_mark26_reload_fast_end.ogg", t = 1.667},
			{hide = 1, t = 0},
			{hide = 2, t = 0.5},
			{hide = 1, t = 0.65},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.95,
		RefillProgress = 0.825,
		PeekProgress = 0.925,
		FireASAP = true,
		EjectAt = 0.15,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_bolt_pull.ogg", t = 0},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_magout.ogg", t = 0.467},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_arm_up.ogg", t = 1.033},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_magin.ogg", t = 1.4},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_rotate.ogg", t = 1.7},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_bolt_forward.ogg", t = 2.067},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_end.ogg", t = 2.4},
			{hide = 1, t = 0},
			{hide = 2, t = 0.7},
			{hide = 1, t = 0.9},
        },
    },
    ["reload_smag"] = {
        Source = "reload_smag",
		MinProgress = 0.95,
		RefillProgress = 0.725,
		PeekProgress = 0.825,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.675, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_magout.ogg", t = 11/30},
			{s = path .. "wfoly_sh_mark26_reload_maghit.ogg", t = 35/30},
			{s = path .. "wfoly_sh_mark26_reload_magin.ogg", t = 51/30},
			{s = path .. "wfoly_sh_mark26_reload_end.ogg", t = 55/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.7},
			{hide = 1, t = 0.9},
        },
    },
    ["reload_smag_empty"] = {
        Source = "reload_smag_empty",
		MinProgress = 0.95,
		RefillProgress = 0.825,
		PeekProgress = 0.875,
		FireASAP = true,
		EjectAt = 0.15,
		DropMagAt = 0.95,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.05, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_bolt_pull.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_mag_release.ogg", t = 15/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_magout.ogg", t = 18/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_arm_up.ogg", t = 34/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_maghit.ogg", t = 49/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_magin.ogg", t = 60/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_rotate.ogg", t = 68/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_bolt_forward.ogg", t = 80/30},
			{s = path .. "wfoly_sh_mark26_reload_empty_end.ogg", t = 95/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.95},
			{hide = 1, t = 1.25},
        },
    },
    ["reload_smag_fast"] = {
        Source = "reload_smag_fast",
		MinProgress = 0.95,
		RefillProgress = 0.725,
		PeekProgress = 0.875,
		FireASAP = true,
		DropMagAt = 0.55,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_reload_fast_rotate.ogg", t = 0},
			{s = path .. "wfoly_sh_mark26_reload_fast_magout.ogg", t = 0.2},
			{s = path .. "wfoly_sh_mark26_reload_fast_maghit.ogg", t = 1.067},
			{s = path .. "wfoly_sh_mark26_reload_fast_magin.ogg", t = 1.333},
			{s = path .. "wfoly_sh_mark26_reload_fast_end.ogg", t = 1.667},
			{hide = 1, t = 0},
			{hide = 2, t = 0.55},
			{hide = 1, t = 0.7},
        },
    },
    ["reload_smag_fast_empty"] = {
        Source = "reload_smag_fast_empty",
		MinProgress = 0.95,
		RefillProgress = 0.825,
		PeekProgress = 0.925,
		FireASAP = true,
		EjectAt = 0.15,
		DropMagAt = 0.75,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_bolt_pull.ogg", t = 0},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_magout.ogg", t = 0.467},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_arm_up.ogg", t = 1.033},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_magin.ogg", t = 1.4},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_rotate.ogg", t = 1.7},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_bolt_forward.ogg", t = 2.067},
			{s = path .. "wfoly_sh_mark26_reload_empty_fast_end.ogg", t = 2.4},
			{hide = 1, t = 0},
			{hide = 2, t = 0.7},
			{hide = 1, t = 0.9},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.7,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_mark26_raise_first_up.ogg", t = 0.0},
			{s = path .. "wfoly_sh_mark26_raise_first_bolt_forward.ogg", t = 0.55},
			{s = path .. "wfoly_sh_mark26_raise_first_end.ogg", t = 0.733},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
		FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_sh_mark26_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_sh_mark26_drop.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Time = 1.25,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Time = 1.25,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 1,
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 1,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.45, lhik = 0, rhik = 0 },
            { t = 0.55, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_mike26_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sh_mike26_inspect_02.ogg", t = 41/30},
			{s = path .. "wfoly_sh_mike26_inspect_03.ogg", t = 67/30},
			{s = path .. "wfoly_sh_mike26_inspect_04.ogg", t = 98/30},
			{s = path .. "wfoly_sh_mike26_inspect_05.ogg", t = 128/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
	    IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_in",
    },
    ["exit_bipod"] = {
        Source = "bipod_out",
    },
    ["hybrid_on"] = {
        Source = "hybrid_on",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_on.ogg", t = 5/30},
        },
    },
    ["hybrid_off"] = {
        Source = "hybrid_off",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_off.ogg", t = 5/30},
        },
    },
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

--- 12 Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
}

--- 4 Round Mags ---
local Translate_SMag = {
    ["reload"] = "reload_smag",
    ["reload_empty"] = "reload_smag_empty",
}
local Translate_SMag_Fast = {
    ["reload"] = "reload_smag_fast",
    ["reload_empty"] = "reload_smag_fast_empty",
}

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
}
local Translate_TacSprint = {
    ["idle_sprint"] = "super_sprint_idle",
    ["enter_sprint"] = "super_sprint_in",
    ["exit_sprint"] = "super_sprint_out",
}
local Translate_Semi = {
    ["fire"] = "fire_alt",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")
    local xmag = wep:HasElement("mag_xmag")
    local smag = wep:HasElement("mag_smag")
    local semi = wep:HasElement("bolt_spring")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end
	
    if semi and Translate_Semi[anim] then
        return Translate_Semi[anim]
    end

    if speedload then
        if xmag then
            if Translate_XMag_Fast[anim] then
                return Translate_XMag_Fast[anim]
            end
		elseif smag then
            if Translate_SMag_Fast[anim] then
                return Translate_SMag_Fast[anim]
            end
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else 
        if xmag then
            if Translate_XMag[anim] then
                return Translate_XMag[anim]
            end
		elseif smag then
            if Translate_SMag[anim] then
                return Translate_SMag[anim]
            end
        end
    end
	
    --wep.MWHybridSwitching = nil
    if anim == "switchsights" then
        if wep:HasElement("hybrid_scope") then
            wep.MWHybridSwitching = true
            return wep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off"
        else
            return false
        end
    end
end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(0, 0, 0.6),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/vlk/attachment_vm_sh_mike26_griptape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/vlk/attachment_vm_sh_mike26_griptape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/vlk/attachment_vm_sh_mike26_griptape.mdl",
    },
    ["cod2019_vlk_semiauto"] = {
    ModelOffset = Vector(3.5, 0, 1.7),
	ModelAngleOffset = Angle(0, 0, 0),
    },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["pistol_grip"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["pump_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["sights_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {7,1},
            {8,1},
        },
    },
    ["stock_tube_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
    ["bolt_spring"] = {
        Bodygroups = {
            {9,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
-- end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle_shot",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(-0.23, 0, 0),
		InstalledElements = {"muzzle_none"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_vlk_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.7, -1.5, 0.5),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic"},
		InstalledElements = {"sights_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_tube", "cod2019_vlk_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(-0.01, 0, -0.03),
		InstalledElements = {"stock_none"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_pumpgrip"),
		-- DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_vlk_pump",
        Bone = "tag_guard_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_vlk_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo_sg"},
		Pos = Vector(-1.5, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger",
        Pos = Vector(0, 0, 0),
		Hidden = true,
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss","cod2019_vlk_perks"},
        Bone = "tag_attachments",
        Pos = Vector(3.5, 0, -3.5),
    },
	
	-- Unofficial
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_vlk_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(3.5, 0, -1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_vlk",
		CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 3),
        CosmeticOnly = true,
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_vlk_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_vlk_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_vlk_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_vlk_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-5, 0, 3),
		Scale = 1.5,
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(1.5, 0.1, -1),
		Icon_Offset = Vector(-8.5, 0, 4),
		CosmeticOnly = true,
		RejectAttachments = { ["arc9_stat_proscreen_main"] = true },
    },
}

SWEP.GripPoseParam = 0.3
SWEP.GripPoseParam2 = 0

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then
-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 39
SWEP.DamageMin = 15

SWEP.DistributeDamage = false

SWEP.Num = 8

SWEP.RangeMin = 2.5 / ARC9.HUToM
SWEP.RangeMax = 12.7 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.975,
    [HITGROUP_RIGHTLEG] = 0.975,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 300 / ARC9.HUToM

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.27 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
