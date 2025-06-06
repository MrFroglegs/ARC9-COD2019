AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_lm_sa86", "vgui/killicons/cod2019_lm_sa86.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_lm_sa86.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_lmg") or "Light Machine Guns"
SWEP.ARC9WeaponCategory = 4

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_sa87") or "SA87"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_lmg") or "Light Machine Gun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_uk"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_556"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 6.6, 6.6 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 62),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_sa87_desc") or [[Fully automatic bullpup light machine gun. Lower rate of fire and 5.56mm ammunition keeps this rifle stable and effective at long ranges.]]

SWEP.ViewModel = "models/weapons/cod2019/c_lmg_sa86.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_lmg_sa86.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_lmg_sa86.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-4, 4.25, -8.75),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-9, 5.5, -5),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(1.5, 0.75, -1),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 29 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 20 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 45 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 13 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.375,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.925,
    [HITGROUP_RIGHTARM] = 0.925,
    [HITGROUP_LEFTLEG] = 0.925,
    [HITGROUP_RIGHTLEG] = 0.925,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 970 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 1,
    },
    {
        Mode = 1,
		PoseParam = 0,
		RPM = 500,
		TriggerDelay = 0.02,
		TriggerDelayTime = 0.02
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.5

SWEP.RecoilSeed = nil

SWEP.RecoilPatternDrift = 10

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.9

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 2.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.4
SWEP.VisualRecoilPunchSights = 10
SWEP.VisualRecoilRollSights = 10
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.4
SWEP.VisualRecoilRoll = 35
SWEP.VisualRecoilSide = 0.3

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end


-------------------------- SPREAD

SWEP.Spread = 0.0325

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.02
SWEP.SpreadAddMidAir = 0.045
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread * 2.75)

SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

-------------------------- HANDLING

SWEP.SpeedMult = 0.95 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.8 -- When aiming
SWEP.SpeedMultShooting = 0.8

SWEP.AimDownSightsTime = 0.42 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.3, -2, -0.15),
    Ang = Angle(0, -0.25, -1.5),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
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
SWEP.CustomizePos = Vector(17.5, 40, 4.5)
SWEP.CustomizeRotateAnchor = Vector(17.5, -3.5, -5)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(-1, 40, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1.5, 0, -3.5)
SWEP.PeekAng = Angle(-0.3, 0, -45)

SWEP.PeekMaxFOV = 54

SWEP.PeekPosReloading = Vector(0, 0, -2)
SWEP.PeekAngReloading = Angle(-0.3, 0, -10)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_lmg"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.085
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_lmg_sa86_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

-------------------------- SOUNDS

local path = "weapons/cod2019/sa87/"

SWEP.ShootSound = "COD2019.SA87.Fire"
SWEP.ShootSoundIndoor = "COD2019.SA87.Fire"

SWEP.ShootSoundSilenced = "COD2019.SA87.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.SA87.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_LMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_LMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_ar_lima86_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_ar_lima86_ads_down.ogg"

SWEP.BulletBones = {
    [1] = {"j_bullet01","j_magextbullet01"},
    [2] = {"j_bullet02","j_magextbullet02"},
	[3] = {"j_bullet03","j_magextbullet03"},
	[4] = {"j_bullet04","j_magextbullet04"}
}

SWEP.HideBones = {
    [1] = "j_mag2",
}

SWEP.ReloadHideBoneTables = {
	[1] = {
		"j_mag2"
	},
	[2] = {
		"j_mag1",
		"j_bullet1",
		"j_bullet2"
	},
	[3] = {
		"j_mag2",
		"j_mag1",
		"j_bullet1",
		"j_bullet2"
	}
}

SWEP.TriggerDelay = 0.15 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.05 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "weap_lima86_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = path .. "weap_lima86_disconnector_plr_01.ogg"

-- Jammed

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 300*2
SWEP.MalfunctionMeanShotsToFailMultHot = -0.1*2

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.9,
		PeekProgress = 0.875,
		FireASAP = true,
		RefillProgress = 0.675,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_lima86_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_lm_lima86_reload_magout_01.ogg", t = 25/30},
			{s = path .. "wfoly_lm_lima86_reload_rotate.ogg", t = 36/30},
			{s = path .. "wfoly_lm_lima86_reload_magin_v2_01.ogg", t = 56/30},
			{s = path .. "wfoly_lm_lima86_reload_magin_v2_02.ogg", t = 70/30},
			{s = path .. "wfoly_lm_lima86_reload_end_01.ogg", t = 87/30},
			{hide = 1, t = 0},
			{hide = 3, t = 1.1},
			{hide = 1, t = 1.5},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		PeekProgress = 0.8,
		FireASAP = true,
		RefillProgress = 0.725,
		DropMagAt = 1.2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_lima86_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_magout_01.ogg", t = 25/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_magin_v2_01.ogg", t = 55/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_magin_v2_02.ogg", t = 72/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_rotate.ogg", t = 75/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_charge_01.ogg", t = 93/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_end.ogg", t = 75/30},
			{hide = 1, t = 0},
			{hide = 3, t = 1.2},
			{hide = 1, t = 1.5},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.9,
		PeekProgress = 0.875,
		FireASAP = true,
		RefillProgress = 0.675,
		MagSwapTime = 3.5,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.675, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_lima86_reload_fast_start.ogg", t = 4/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_magout_01.ogg", t = 14/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_magin_v2_01.ogg", t = 38/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_end.ogg", t = 54/30},
			{hide = 1, t = 0},
			{hide = 3, t = 0.8},
			{hide = 1, t = 1.1},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		PeekProgress = 0.875,
		FireASAP = true,
		RefillProgress = 0.775,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_start.ogg", t = 4/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_magout_01.ogg", t = 17/30},
            {s = path .. "wfoly_lm_lima86_reload_empty_fast_magin_v2_01.ogg", t = 38/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_charge_01.ogg", t = 59/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_end.ogg", t = 71/30},
			{hide = 1, t = 0},
			{hide = 3, t = 0.8},
			{hide = 1, t = 1.1},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.85,
		FireASAP = true,
		RefillProgress = 0.675,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_lima86_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_lm_lima86_reload_magout_01.ogg", t = 25/30},
			{s = path .. "wfoly_lm_lima86_reload_rotate.ogg", t = 36/30},
			{s = path .. "wfoly_lm_lima86_reload_magin_v2_01.ogg", t = 56/30},
			{s = path .. "wfoly_lm_lima86_reload_magin_v2_02.ogg", t = 70/30},
			{s = path .. "wfoly_lm_lima86_reload_end_01.ogg", t = 87/30},
			{hide = 1, t = 0},
			{hide = 3, t = 1.1},
			{hide = 1, t = 1.5},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		FireASAP = true,
		RefillProgress = 0.75,
		DropMagAt = 1.2,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_lima86_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_magout_01.ogg", t = 25/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_magin_v2_01.ogg", t = 55/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_magin_v2_02.ogg", t = 72/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_rotate.ogg", t = 75/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_charge_01.ogg", t = 93/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_end.ogg", t = 75/30},
			{hide = 1, t = 0},
			{hide = 3, t = 1.2},
			{hide = 1, t = 1.5},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.85,
		FireASAP = true,
		RefillProgress = 0.65,
		MagSwapTime = 3.5,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.675, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_lima86_reload_fast_start.ogg", t = 4/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_magout_01.ogg", t = 14/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_magin_v2_01.ogg", t = 38/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_lm_lima86_reload_fast_end.ogg", t = 54/30},
			{hide = 1, t = 0},
			{hide = 3, t = 0.8},
			{hide = 1, t = 1.1},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		RefillProgress = 0.7,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.725, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_start.ogg", t = 4/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_magout_01.ogg", t = 17/30},
            {s = path .. "wfoly_lm_lima86_reload_empty_fast_magin_v2_01.ogg", t = 38/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_magin_v2_02.ogg", t = 47/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_charge_01.ogg", t = 59/30},
			{s = path .. "wfoly_lm_lima86_reload_empty_fast_end.ogg", t = 71/30},
			{hide = 1, t = 0},
			{hide = 3, t = 0.8},
			{hide = 1, t = 1.1},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.7,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_lima86_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_lm_lima86_raise_first_charge_01.ogg", t = 18/30},
			{s = path .. "wfoly_lm_lima86_raise_first_end.ogg", t = 28/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_lima86_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_lima86_drop.ogg", t = 0/30},
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
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 1,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.15, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_lima86_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_lm_lima86_inspect_02.ogg", t = 40/30},
			{s = path .. "wfoly_lm_lima86_inspect_03.ogg", t = 78/30},
			{s = path .. "wfoly_lm_lima86_inspect_04.ogg", t = 138/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "semi_off",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "weap_lm_lima86_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "weap_lm_lima86_selector_off.ogg", t = 0/30},
        },
    },
    ["jam"] = {
        Source = "jammed",
        MinProgress = 0.5,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
    ["fix"] = {
        Source = "unjam",
		EjectAt = 0.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_lm_lima86_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_lm_lima86_raise_first_charge_01.ogg", t = 16/30},
			{s = path .. "wfoly_lm_lima86_raise_first_end.ogg", t = 26/30},
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

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

--- 50 & 60 Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
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

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")
    local xmag = wep:HasElement("mag_xmag")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if xmag then
            if Translate_XMag_Fast[anim] then
                return Translate_XMag_Fast[anim]
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

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(13, -0.5, -0.7),
	ModelAngleOffset = Angle(0, 0, 15),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(1, 0, 0.1),
    },
    ["cod2019_attach_xmag_50"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sa86/attachment_vm_lm_lima86_xmags.mdl",
    },
    ["cod2019_attach_xmag_60"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sa86/attachment_vm_lm_lima86_xmags2.mdl",
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sa86/attachment_vm_lm_lima86_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sa86/attachment_vm_lm_lima86_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/sa86/attachment_vm_lm_lima86_pistolgrip_tape.mdl",
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust.mdl",
	BoneMerge = false
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust02.mdl",
	BoneMerge = false
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust03.mdl",
	BoneMerge = false
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["barrel_short"] = {
        Bodygroups = {
            {2,1},
			{3,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {2,2},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["foregrip_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
	["grip_angled"] = {
    AttPosMods = { [6] = { Pos = Vector(-2.5, 0, 0), } }	
	}
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
-- end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
		InstalledElements = {"muzzle_none"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_sa86_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-2, -0.5, 0),
		Ang = Angle(0, 0, -90),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Category = {"cod2019_optic", "cod2019_optic_big"},
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
		InstalledElements = {"sight_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = "cod2019_sa86_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-4, 0, -0.75),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 180),
		MergeSlots = {21}, -- Bipod
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_sa87_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger_nomrkt",
        Pos = Vector(0.1, 0, 0.3),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_attachments",
        Pos = Vector(0, 0, -2),
    },

	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_sa86_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(3, 0, -0.5),
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_sa86",
		CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(5, 0, 3),
        CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_sa86_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_sa86_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_sa86_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/lmg_sa86_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
		Icon_Offset = Vector(-7.5, 0, 3),
		Scale = 1.5,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(3.7, -0.75, -0.7),
		Icon_Offset = Vector(-3.25, 0, 1.9),
		CosmeticOnly = true,
    },
    { -- 20
        PrintName = "Bipod",
        Category = {"cod2019_sa86_bipod"},
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
		Hidden = true,
    },
}

SWEP.GripPoseParam = 0.2
SWEP.GripPoseParam2 = 0.1
SWEP.CodAngledGripPoseParam = 31
SWEP.CodStubbyGripPoseParam = 17
SWEP.CodStubbyTallGripPoseParam = 22

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 37 -- Damage done at point blank range
SWEP.DamageMin = 31 -- Damage done at maximum range

SWEP.RangeMin = 46 / ARC9.HUToM
SWEP.RangeMax = 47 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.375,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.925,
    [HITGROUP_RIGHTARM] = 0.925,
    [HITGROUP_LEFTLEG] = 0.925,
    [HITGROUP_RIGHTLEG] = 0.925,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 970 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 600

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.42 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
