AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sm_aug", "vgui/killicons/cod2019_sm_aug.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sm_aug.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_smg") or "Submachine Guns"
SWEP.ARC9WeaponCategory = 3

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_aug") or "AUG"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_smg") or "Submachine Gun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_austria"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_919"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 3.2, 3.2 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 124),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_aug_desc") or [[A modular fully automatic weapon configured for mobility and close range combat.]]

SWEP.ViewModel = "models/weapons/cod2019/c_smg_aug.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_smg_aug.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_smg_aug.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 4, -6),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-11, 5.5, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(1, 1, -1.75),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 25 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 13 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 30 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1312 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 25 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 769

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 0,
    },
    {
        Mode = 1,
		PoseParam = 1,
    },
    -- {
        -- Mode = 3,
		-- RunawayBurst = true,
		-- PostBurstDelay = 0.25
    -- },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.3

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil
SWEP.RecoilSideSights = 1.4

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1
SWEP.RecoilRandomSideSights = 0.5

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.75

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 2.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 2
SWEP.VisualRecoilRollSights = 15
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

SWEP.Spread = 0.03

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = SWEP.Spread * 0
SWEP.SpreadAddMove = SWEP.Spread * 1
SWEP.SpreadAddMidAir = SWEP.Spread * 0.5
SWEP.SpreadAddCrouch = -SWEP.Spread * 0.1
SWEP.SpreadAddSights = -SWEP.Spread * 1.5

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
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.66, -6, 0.475),
    Ang = Angle(0, 0, -3),
    Magnification = 1.17,
    ViewModelFOV = 54,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 64

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(13, 37.5, 4.25)
SWEP.CustomizeRotateAnchor = Vector(13, -3.5, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(-1, 35, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 0, -4)
SWEP.PeekAng = Angle(-0.3, 0, -45)

SWEP.PeekMaxFOV = 64

SWEP.PeekPosReloading = Vector(0, 2, -1)
SWEP.PeekAngReloading = Angle(-0.3, 0, -5)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeNPC = "smg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_smg"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.07
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_9mm_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_smg_aug_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

-------------------------- SOUNDS

local path = "weapons/cod2019/aug/"

SWEP.ShootSound = "COD2019.AUG.Fire"
SWEP.ShootSoundIndoor = "COD2019.AUG.Fire"

SWEP.ShootSoundSilenced = "COD2019.AUG.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.AUG.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_SMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_SMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_SMG_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sm_augolf_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sm_augolf_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones = {
    [1] = "j_mag2",
}

SWEP.ReloadHideBoneTables  = {
    [1] = {
	"j_mag2"
	},
	[2] = {
	"j_mag2",
	"j_mag1",
	"j_follower",
	"j_ammo_01",
	"j_ammo_02",
	"j_ammo_03"
	}
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "weap_augolf_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = path .. "weap_augolf_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.925,
		PeekProgress = 0.825,
		RefillProgress = 0.65,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_raise.ogg", t = 0.067},
            {s = path .. "wfoly_sm_augolf_reload_magout_cloth.ogg", t = 0.533},
			{s = path .. "wfoly_sm_augolf_reload_magout_01.ogg", t = 0.533},
			{s = path .. "wfoly_sm_augolf_reload_magin_cloth.ogg", t = 1.033},
			{s = path .. "wfoly_sm_augolf_reload_magin_v2_01.ogg", t = 1.25},
			{s = path .. "wfoly_sm_augolf_reload_magin_v2_02.ogg", t = 1.55},
            {s = path .. "wfoly_sm_augolf_reload_lower.ogg", t = 1.533},
			{s = path .. "wfoly_sm_augolf_reload_end.ogg", t = 1.933},
			{hide = 1, t = 0},
			{hide = 2, t = 0.65},
			{hide = 1, t = 1},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.925,
		PeekProgress = 0.825,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 1.25,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.75, lhik = 0, rhik = 1 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_empty_mvmnt.ogg", t = 0.067},
			{s = path .. "wfoly_sm_augolf_reload_empty_boltopen.ogg", t = 0.3},
			{s = path .. "wfoly_sm_augolf_reload_empty_magout_01.ogg", t = 0.92},
			{s = path .. "wfoly_sm_augolf_reload_empty_magoutcloth.ogg", t = 1.22},
			{s = path .. "wfoly_sm_augolf_reload_empty_magincloth.ogg", t = 1.8},
			{s = path .. "wfoly_sm_augolf_reload_empty_magin_v2_01.ogg", t = 2.0},
			{s = path .. "wfoly_sm_augolf_reload_empty_magin_v2_02.ogg", t = 2.1},
			{s = path .. "wfoly_sm_augolf_reload_empty_chamber_01.ogg", t = 2.55},
            {s = path .. "wfoly_sm_augolf_reload_empty_end.ogg", t = 2.633},
			{hide = 1, t = 0},
			{hide = 2, t = 1.25},
			{hide = 1, t = 1.6},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.925,
		PeekProgress = 0.875,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.5,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_fast_raise.ogg", t = 0.1},
			{s = path .. "wfoly_sm_augolf_reload_fast_magout_01.ogg", t = 0.167},
			{s = path .. "wfoly_sm_augolf_reload_fast_cloth.ogg", t = 0.633},
            {s = path .. "wfoly_sm_augolf_reload_fast_magin_01.ogg", t = 0.84},
			{s = path .. "wfoly_sm_augolf_reload_fast_end.ogg", t = 1.2},
			{hide = 1, t = 0},
			{hide = 2, t = 0.5},
			{hide = 1, t = 0.6},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.925,
		PeekProgress = 0.875,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_empty_fast_waffle_raise.ogg", t = 0.033},
			{s = path .. "wfoly_sm_augolf_reload_empty_fast_waffle_magout_01.ogg", t = 0.2},
			{s = path .. "wfoly_sm_augolf_reload_empty_fast_waffle_cloth02.ogg", t = 0.433},
			{s = path .. "wfoly_sm_augolf_reload_empty_fast_waffle_cloth01.ogg", t = 0.7},
			{s = path .. "wfoly_sm_augolf_reload_empty_fast_waffle_magin_01.ogg", t = 0.86},
			{s = path .. "wfoly_sm_augolf_reload_empty_fast_waffle_chamber_01.ogg", t = 1.36},
			{s = path .. "wfoly_sm_augolf_reload_empty_fast_waffle_end.ogg", t = 1.633},
			{hide = 1, t = 0},
			{hide = 2, t = 0.5},
			{hide = 1, t = 0.6},
        },
    },
    ["reload_armag"] = {
	    Source = "reload_ar",
		MinProgress = 0.925,
		PeekProgress = 0.825,
		RefillProgress = 0.65,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_waffle_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_magout_01.ogg", t = 13/30},
			{s = path .. "wfoly_sm_augolf_reload_magout_cloth.ogg", t = 13/30},
			{s = path .. "wfoly_sm_augolf_reload_lower.ogg", t = 27/30},
			{s = path .. "wfoly_sm_augolf_reload_magin_cloth.ogg", t = 27/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_magin_v2_01.ogg", t = 37/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_magin.ogg", t = 45/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_end.ogg", t = 50/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.65},
			{hide = 1, t = 1},
        },
    },
    ["reload_armag_empty"] = {
        Source = "reload_ar_empty",
		MinProgress = 0.925,
		PeekProgress = 0.825,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 1.25,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.75, lhik = 0, rhik = 1 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_boltopen.ogg", t = 8/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_rotate.ogg", t = 9/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_magout_01.ogg", t = 29/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_magoutcloth.ogg", t = 36/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_magincloth.ogg", t = 40/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_magin_v2_01.ogg", t = 55/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_magin_v2_02.ogg", t = 63/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_chamber_01.ogg", t = 78/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_end.ogg", t = 82/30},
			{hide = 1, t = 0},
			{hide = 2, t = 1.25},
			{hide = 1, t = 1.6},
        },
    },
    ["reload_armag_fast"] = {
        Source = "reload_armag_fast",
		MinProgress = 0.925,
		PeekProgress = 0.875,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.5,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_magout_01.ogg", t = 9/30},
            {s = path .. "wfoly_sm_augolf_reload_fast_waffle_mvmnt.ogg", t = 13/30},
			{s = path .. "wfoly_sm_augolf_reload_lower.ogg", t = 24/30},
			{s = path .. "wfoly_sm_augolf_reload_magin_cloth.ogg", t = 25/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_magin.ogg", t = 27/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_end.ogg", t = 35/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.5},
			{hide = 1, t = 0.65},
        },
    },
    ["reload_armag_fast_empty"] = {
        Source = "reload_armag_fast_empty",
		MinProgress = 0.925,
		PeekProgress = 0.875,
		RefillProgress = 0.7,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_magoutcloth.ogg", t = 14/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_magincloth.ogg", t = 18/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_magin.ogg", t = 28/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_chamber_01.ogg", t = 40/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_end.ogg", t = 47/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.5},
			{hide = 1, t = 0.65},
        },
    },
    ["reload_drummag"] = {
        Source = "reload_drummag",
		MinProgress = 0.925,
		PeekProgress = 0.8,
		RefillProgress = 0.65,
		FireASAP = true,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
            { t = 0.825, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_waffle_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sm_augolf_reload_drum_magout_01.ogg", t = 14/30},
			{s = path .. "wfoly_sm_augolf_reload_magout_cloth.ogg", t = 14/30},
			{s = path .. "wfoly_sm_augolf_reload_lower.ogg", t = 28/30},
			{s = path .. "wfoly_sm_augolf_reload_magin_cloth.ogg", t = 28/30},
			{s = path .. "wfoly_sm_augolf_reload_drum_magin_v2_01.ogg", t = 38/30},
			{s = path .. "wfoly_sm_augolf_reload_drum_magin_v2_02.ogg", t = 44/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_end.ogg", t = 51/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.65},
			{hide = 1, t = 1},
        },
    },
    ["reload_drummag_empty"] = {
        Source = "reload_drummag_empty",
		MinProgress = 0.925,
		PeekProgress = 0.8,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 1.25,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.75, lhik = 0, rhik = 1 },
            { t = 0.875, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_empty_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_boltopen.ogg", t = 8/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_rotate.ogg", t = 9/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_drum_magout_01.ogg", t = 29/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_magoutcloth.ogg", t = 36/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_magincloth.ogg", t = 41/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_drum_magin_v2_01.ogg", t = 55/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_magin.ogg", t = 60/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_chamber_01.ogg", t = 77/30},
			{s = path .. "wfoly_sm_augolf_reload_waffle_end.ogg", t = 82/30},
			{hide = 1, t = 0},
			{hide = 2, t = 1.25},
			{hide = 1, t = 1.6},
        },
    },
    ["reload_drummag_fast"] = {
        Source = "reload_drummag_fast",
		MinProgress = 0.925,
		PeekProgress = 0.85,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.5,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_raise.ogg", t = 0/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_drum_magout_01.ogg", t = 9/30},
            {s = path .. "wfoly_sm_augolf_reload_fast_waffle_mvmnt.ogg", t = 14/30},
			{s = path .. "wfoly_sm_augolf_reload_lower.ogg", t = 24/30},
			{s = path .. "wfoly_sm_augolf_reload_magin_cloth.ogg", t = 25/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_drum_magin_01.ogg", t = 27/30},
			{s = path .. "wfoly_sm_augolf_reload_drum_magin_v2_02.ogg", t = 29/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_end.ogg", t = 37/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.5},
			{hide = 1, t = 0.65},
        },
    },
    ["reload_drummag_fast_empty"] = {
        Source = "reload_drummag_fast_empty",
		MinProgress = 0.925,
		PeekProgress = 0.85,
		RefillProgress = 0.675,
		FireASAP = true,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_mvmnt.ogg", t = 0/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_fast_drum_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_magoutcloth.ogg", t = 14/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_magincloth.ogg", t = 18/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_fast_drum_magin_01.ogg", t = 28/30},
			{s = path .. "wfoly_sm_augolf_reload_empty_chamber_01.ogg", t = 40/30},
			{s = path .. "wfoly_sm_augolf_reload_fast_waffle_end.ogg", t = 47/30},
			{hide = 1, t = 0},
			{hide = 2, t = 0.5},
			{hide = 1, t = 0.65},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.75,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sm_augolf_raise_first_raise.ogg", t = 0.033},
            {s = path .. "wfoly_sm_augolf_raise_first_chamber_01.ogg", t = 0.35},
			{s = path .. "wfoly_sm_augolf_raise_first_end_01.ogg", t = 0.8},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.5,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sm_augolf_raise_01.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sm_augolf_drop.ogg", t = 0/30},
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
            { t = 0.1, lhik = 1, rhik = 1 },
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
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.4, lhik = 0, rhik = 1 },
            { t = 0.62, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sm_augolf_inspect_01.ogg", t = 0.0},
			{s = path .. "wfoly_sm_augolf_inspect_02.ogg", t = 1.4},
			{s = path .. "wfoly_sm_augolf_inspect_03.ogg", t = 2.467},
			{s = path .. "wfoly_sm_augolf_inspect_04.ogg", t = 3.3},
			{s = path .. "wfoly_sm_augolf_inspect_05.ogg", t = 4.133},
        },
    },
    ["1_inspect"] = {
        Source = "lookat02",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.4, lhik = 0, rhik = 1 },
            { t = 0.62, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_sm_augolf_reload_empty_mvmnt.ogg", t = 0.067},
			{s = path .. "wfoly_sm_augolf_reload_empty_boltopen.ogg", t = 0.3},
            {s = path .. "wfoly_sm_augolf_raise_first_chamber_01.ogg", t = 22/30},
			{s = path .. "wfoly_sm_augolf_raise_first_end_01.ogg", t = 36/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.05, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_sm_augolf_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_sm_augolf_selector_off.ogg", t = 0/30},
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

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(0, 0, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.15),
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/aug/attachment_vm_sm_augolf_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/aug/attachment_vm_sm_augolf_pistolgrip_tape.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/aug/attachment_vm_sm_augolf_pistolgrip_tape.mdl",
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
    ["barrel_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["grip"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sights_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["upper_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
	["upper_rail_none"] = {
        Bodygroups = {
            {9,1},
        },
    },
}

--- 30-Round (AR) & 60-Round (Drum) Mags ---
local Translate_AR = {
    ["reload"] = "reload_armag",
    ["reload_empty"] = "reload_armag_empty",
}
local Translate_AR_Fast = {
    ["reload"] = "reload_armag_fast",
    ["reload_empty"] = "reload_armag_fast_empty",
}
local Translate_Drum = {
    ["reload"] = "reload_drummag",
    ["reload_empty"] = "reload_drummag_empty",
}
local Translate_Drum_Fast = {
    ["reload"] = "reload_drummag_fast",
    ["reload_empty"] = "reload_drummag_fast_empty",
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
	local ar = wep:HasElement("mag_armag")
    local drum = wep:HasElement("mag_drum")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if ar then
            if Translate_AR_Fast[anim] then
                return Translate_AR_Fast[anim]
            end
        elseif drum then
            if Translate_Drum_Fast[anim] then
                return Translate_Drum_Fast[anim]
            end
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else 
        if ar then
            if Translate_AR[anim] then
                return Translate_AR[anim]
            end
        end
        if drum then
            if Translate_Drum[anim] then
                return Translate_Drum[anim]
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
		Icon_Offset = Vector(1.5, 0, 0),
		InstalledElements = {"muzzle_none"},
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_aug_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_cylinder",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.34, -1.34, 0),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic","cod2019_aug_optic"},
		InstalledElements = {"sights_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = "cod2019_aug_stock",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.5, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"grip"},
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_aug_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
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
        Pos = Vector(17, 0, -1.5),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_aug_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(15, 0, 1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_aug",
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
        StickerModel = "models/weapons/cod2019/stickers/smg_aug_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_aug_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_aug_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_aug_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-3, 0, 3),
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(-2.5, 0, 0),
		Icon_Offset = Vector(-2.5, 0, 3),
		Scale = 1.5,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(-7, 0.4, 0.75),
		Ang = Angle(0, 0, 35),
		Icon_Offset = Vector(0, -1.25, 2),
		CosmeticOnly = true,
    },
    { -- 20 UBGL
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = {"cod2019_m203"},
        Bone = "tag_sling",
        Pos = Vector(23, 1.2, -1.4),
        Ang = Angle(0, 180, 0),
		InstalledElements = {"ubgl_small","grip"},
		Hidden = true,
    },
}

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 19
SWEP.CodStubbyGripPoseParam = 26
SWEP.CodStubbyTallGripPoseParam = 26

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 34
SWEP.DamageMin = 26

SWEP.RangeMin = 13 / ARC9.HUToM
SWEP.RangeMax = 14 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.45,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.875,
    [HITGROUP_RIGHTARM] = 0.875,
    [HITGROUP_LEFTLEG] = 0.875,
    [HITGROUP_RIGHTLEG] = 0.875,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 700 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 741

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.24 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
