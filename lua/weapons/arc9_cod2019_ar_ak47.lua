AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_ar_ak47", "vgui/killicons/cod2019_ar_ak47.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_ar_ak47.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_ar") or "Assault Rifles"
SWEP.ARC9WeaponCategory = 4

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_ak47") or "AK-47"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_ar") or "Assault Rifle"

SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_sovietunion"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_762soviet"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 4.79, 4.79 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 121.9),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_ak47_desc") or [[Very reliable automatic assault rifle chambered in 7.62mm Soviet. Large caliber ammunition requires skill to control recoil.]]

SWEP.ViewModel = "models/weapons/cod2019/c_rif_ak47.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_rif_ak47.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_rif_ak47.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 3, -6),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8.5, 4.5, -4.25),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1,

    TPIKPosSightOffset = Vector(2.5, 1, -2.5),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 35 -- Damage done at point blank range
SWEP.DamageMin = 30 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 22 / ARC9.HUToM
SWEP.RangeMax = 28 / ARC9.HUToM

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.25

SWEP.ImpactForce = 11

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.6,
    [HITGROUP_CHEST] = 1.025,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 850 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

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

SWEP.RPM = 545

SWEP.Firemodes = {
    {
        Mode = -1,
        PoseParam = 0,
        -- add other attachment modifiers
    },
    {
        Mode = 1,
        PoseParam = 1,
        -- add other attachment modifiers
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.5

SWEP.RecoilSeed = 6589132

SWEP.RecoilPatternDrift = 0

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 2.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.4
SWEP.VisualRecoilPunchSights = 10
SWEP.VisualRecoilRollSights = 10
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0
SWEP.VisualRecoilRoll = 35
SWEP.VisualRecoilSide = 0.2

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

SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

-------------------------- HANDLING

SWEP.SpeedMult = 1 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.9 -- When aiming
SWEP.SpeedMultShooting = 0.9

SWEP.AimDownSightsTime = 0.27 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.375 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-2.73, -4, 0.6),
    Ang = Angle(0.05, 0.15, -2.5),
    Magnification = 1.15,
    ViewModelFOV = 56,
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
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(14, 40, 3)
SWEP.CustomizeRotateAnchor = Vector(14, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(-1, 42.5, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekMaxFOV = 54

SWEP.PeekPos = Vector(-1, 4, -4)
SWEP.PeekAng = Angle(-0.3, 0, -50)

SWEP.PeekPosReloading = Vector(0, 4, -2)
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

SWEP.MuzzleParticle = "muzzleflash_ar"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.08
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_556_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_ak47_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, -90)

SWEP.DropMagazineQCAHook = function(swep, old)
  local curanim = swep:GetIKAnimation() or ""
  if curanim == "reload_smg_empty" then return 5 end
  if curanim == "reload_smg_fast" then return 3 end
  if curanim == "reload_smg_fast_empty" then return 3 end
  if curanim == "reload_drum_empty" then return 5 end
  if curanim == "reload_drum_fast" then return 5 end
  if curanim == "reload_drum_fast_empty" then return 5 end
  if curanim == "reload_drum2" then return 5 end
  if curanim == "reload_drum2_empty" then return 5 end
  if curanim == "reload_drum2_fast" then return 5 end
  if curanim == "reload_drum2_fast_empty" then return 5 end
  if curanim == "reload_xmag_empty" then return 5 end
  if curanim == "reload_xmag_fast" then return 5 end
  if curanim == "reload_xmag_fast_empty" then return 5 end
end

-------------------------- SOUNDS

local path = "weapons/cod2019/ak47/"
local pathub = "weapons/cod2019/shared/ubgl/"
local pathubs = "weapons/cod2019/model680/"

SWEP.ShootSound = "COD2019.AK47.Fire"
SWEP.ShootSoundIndoor = "COD2019.AK47.Fire"

SWEP.ShootSoundSilenced = "COD2019.AK47.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.AK47.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_AR.Inside"
SWEP.DistantShootSoundIndoor = "Distant_AR.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_ar_akilo47_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_ar_akilo47_ads_down.ogg"

SWEP.BulletBones = {
    [1] = {"j_bullet1","j_ammo1"},
    [2] = {"j_bullet2","j_ammo2"},
    [3] = {"j_bullet3","j_ammo3"},
    [4] = {"j_bullet4","j_ammo4"}
}

SWEP.ReloadHideBonesFirstPerson = false

SWEP.HideBones = {
    [1] = "j_mag2",
    [2] = "j_bullet_secondary",
    [3] = "j_bullet2_secondary",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "j_mag2",
        "j_bullet_secondary",
        "j_bullet2_secondary",
    },
    [2] = {
        "j_mag1",
        "j_bullet",
        "j_bullet2",
    },
    [3] = {
        "j_mag2",
        "j_mag1",
        "j_bullet",
        "j_bullet2",
        "j_bullet_secondary",
        "j_bullet2_secondary",
    },
    [4] = {
        "j_mag2",
        "j_bullet_secondary",
        "j_bullet2_secondary",
        "j_gpapa25_grenade"
    },
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "weap_akilo47_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = path .. "weap_akilo47_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
        IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
        MinProgress = 0.825,
        PeekProgress = 0.865,
        RefillProgress = 0.55,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.1, lhik = 0, rhik = 0},
            { t = 0.75, lhik = 0, rhik = 0},
            { t = 0.825, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_grab.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_magout_01.ogg", t = 0.43},
            {s = path .. "wfoly_ar_akilo47_reload_magin_v2_01.ogg", t = 1.13},
            {s = path .. "wfoly_ar_akilo47_reload_magin_v2_02.ogg", t = 1.53},
            {s = path .. "wfoly_ar_akilo47_reload_maghit.ogg", t = 1.66},
            {s = path .. "wfoly_ar_akilo47_reload_click.ogg", t = 1.83},
            {s = path .. "wfoly_ar_akilo47_reload_end.ogg", t = 2.13},
            {hide = 2, t = 0},
            {hide = 0, t = 0.4},
            {hide = 1, t = 2},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
        MinProgress = 0.85,
        RefillProgress = 0.725,
        FireASAP = true,
        DropMagAt = 1.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.75, lhik = 0, rhik = 0},
            { t = 0.8, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_empty_twist.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_empty_maghit_01.ogg", t = 0.4},
            {s = path .. "wfoly_ar_akilo47_reload_empty_magmvmnt_01.ogg", t = 0.96},
            {s = path .. "wfoly_ar_akilo47_reload_empty_magin_v2_01.ogg", t = 1.13},
            {s = path .. "wfoly_ar_akilo47_reload_empty_magin_v2_02.ogg", t = 1.53},
            {s = path .. "wfoly_ar_akilo47_reload_empty_chamber_01.ogg", t = 1.86},
            {s = path .. "wfoly_ar_akilo47_reload_empty_end.ogg", t = 2.26},
            {hide = 2, t = 0},
            {hide = 0, t = 0.4},
            {hide = 1, t = 1.1},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
        MinProgress = 0.85,
        PeekProgress = 0.865,
        RefillProgress = 0.625,
        FireASAP = true,
        DropMagAt = 0.825,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.7, lhik = 0, rhik = 0},
            { t = 0.85, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_fast_twist.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magout_01.ogg", t = 0.066},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magin_v2_01.ogg", t = 0.73},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magin_v2_02.ogg", t = 1.1},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magout_end.ogg", t = 1.06},
            {hide = 2, t = 0},
            {hide = 0, t = 0.2},
            {hide = 1, t = 0.825},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
        MinProgress = 0.85,
        PeekProgress = 0.865,
        RefillProgress = 0.725,
        FireASAP = true,
        DropMagAt = 0.825,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.7, lhik = 0, rhik = 0},
            { t = 0.95, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_twist.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_maghit_01.ogg", t = 0.13},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_01.ogg", t = 0.64},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_02.ogg", t = 1.01},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_chamber_01.ogg", t = 1.36},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_end.ogg", t = 1.6},
            {hide = 2, t = 0},
            {hide = 0, t = 0.2},
            {hide = 1, t = 0.825},
        },
    },
    ["reload_drum"] = {
        Source = "reload_drum",
        MinProgress = 0.9,
        PeekProgress = 0.875,
        RefillProgress = 0.625,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.1, lhik = 0, rhik = 0},
            { t = 0.7, lhik = 0, rhik = 0},
            { t = 0.85, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_drum_reload_grabmag.ogg", t = 0.066},
            {s = path .. "wfoly_ar_akilo47_drum_reload_magout_01.ogg", t = 0.47},
            {s = path .. "wfoly_ar_akilo47_drum_reload_twist.ogg", t = 0.96},
            {s = path .. "wfoly_ar_akilo47_drum_reload_magin_v2_01.ogg", t = 1.42},
            {s = path .. "wfoly_ar_akilo47_drum_reload_magin_v2_02.ogg", t = 1.67},
            {s = path .. "wfoly_ar_akilo47_drum_reload_end.ogg", t = 1.96},
            {hide = 1, t = 0},
        },
    },
    ["reload_drum_empty"] = {
        Source = "reload_drum_empty",
        MinProgress = 0.9,
        PeekProgress = 0.875,
        RefillProgress = 0.75,
        FireASAP = true,
        DropMagAt = 1.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.5, lhik = 0, rhik = 0},
            { t = 0.575, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_mvmnt.ogg", t = 0.066},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magout_01.ogg", t = 0.73},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_01.ogg", t = 1.4},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_02.ogg", t = 1.6},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_rise.ogg", t = 2.06},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_chamber_01.ogg", t = 2.86},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_end.ogg", t = 3.16},
            {hide = 1, t = 0},
            {hide = 0, t = 0.266},
            {hide = 2, t = 1.1},
            {hide = 1, t = 3.566},
        },
    },
    ["reload_drum_fast"] = {
        Source = "reload_drum_fast",
        MinProgress = 0.95,
        PeekProgress = 0.9,
        RefillProgress = 0.625,
        FireASAP = true,
        DropMagAt = 0.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.1, lhik = 0, rhik = 0},
            { t = 0.65, lhik = 0, rhik = 0},
            { t = 0.87, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_drum_reload_fast_raise.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_drum_reload_fast_magout_01.ogg", t = 0.4},
            {s = path .. "wfoly_ar_akilo47_drum_reload_fast_magin_v2_01.ogg", t = 0.82},
            {s = path .. "wfoly_ar_akilo47_drum_reload_fast_magin_v2_02.ogg", t = 1.05},
            {s = path .. "wfoly_ar_akilo47_drum_reload_fast_end.ogg", t = 1.25},
            {hide = 1, t = 0},
            {hide = 0, t = 0.3},
            {hide = 2, t = 0.9},
            {hide = 1, t = 1.73},
        },
    },
    ["reload_drum_fast_empty"] = {
        Source = "reload_drum_fast_empty",
        MinProgress = 0.975,
        PeekProgress = 0.925,
        RefillProgress = 0.75,
        FireASAP = true,
        DropMagAt = 0.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.5, lhik = 0, rhik = 0},
            { t = 0.65, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_raise.ogg", t = 0},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_mvmnt.ogg", t = 0.5},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_magout_01.ogg", t = 0.63},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_01.ogg", t = 1.18},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_02.ogg", t = 1.22},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_chamber_01.ogg", t = 1.93},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_end.ogg", t = 2.04},
            {hide = 1, t = 0},
            {hide = 0, t = 0.3},
            {hide = 2, t = 0.9},
            {hide = 1, t = 2.46},
        },
    },
    ["reload_smg"] = {
        Source = "reload_mw22",
        MinProgress = 0.95,
        PeekProgress = 0.925,
        RefillProgress = 0.75,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.75, lhik = 0, rhik = 0},
            { t = 0.95, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_grab.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_magout_01.ogg", t = 0.25},
            {s = path .. "wfoly_ar_akilo47_reload_magin_v2_01.ogg", t = 1.35},
            {s = path .. "wfoly_ar_akilo47_reload_magin_v2_02.ogg", t = 1.75},
            {s = path .. "wfoly_ar_akilo47_reload_maghit.ogg", t = 1.85},
            {s = path .. "wfoly_ar_akilo47_reload_click.ogg", t = 1.83},
            {s = path .. "wfoly_ar_akilo47_reload_end.ogg", t = 1.85},
            {hide = 1, t = 0},
            {hide = 3, t = 0.9},
            {hide = 1, t = 1.2},
        },
    },
    ["reload_smg_empty"] = {
        Source = "reload_mw22_empty",
        MinProgress = 0.975,
        RefillProgress = 0.85,
        PeekProgress = 0.97,
        FireASAP = true,
        DropMagAt = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 1, rhik = 0},
            { t = 0.3, lhik = 0, rhik = 0},
            { t = 0.75, lhik = 0, rhik = 0},
            { t = 0.8, lhik = 0, rhik = 0},
            { t = 1.1, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_twist.ogg", t = 0/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_boltback_01.ogg", t = 7/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_maghit_01.ogg", t = 26/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_01.ogg", t = 44/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_02.ogg", t = 53/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_boltforward_01.ogg", t = 60/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_end.ogg", t = 64/30},
            {hide = 1, t = 0},
            {hide = 0, t = 0.733},
            {hide = 2, t = 1.5},
            {hide = 1, t = 2.366},
        },
    },
    ["reload_smg_fast"] = {
        Source = "reload_smgcal_fast",
        MinProgress = 0.85,
        PeekProgress = 0.865,
        RefillProgress = 0.625,
        FireASAP = true,
        DropMagAt = 0.85,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.7, lhik = 0, rhik = 0},
            { t = 0.85, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_fast_twist.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_maghit_01.ogg", t = 0.2},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magin_v2_01.ogg", t = 0.7},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magin_v2_02.ogg", t = 1.1},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magout_end.ogg", t = 1},
            {hide = 2, t = 0},
            {hide = 0, t = 0.2},
            {hide = 1, t = 0.85},
        },
    },
    ["reload_smg_fast_empty"] = {
        Source = "reload_smgcal_fast_empty",
        MinProgress = 0.85,
        PeekProgress = 0.865,
        RefillProgress = 0.725,
        FireASAP = true,
        DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.7, lhik = 0, rhik = 0},
            { t = 0.95, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_twist.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_maghit_01.ogg", t = 0.15},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_01.ogg", t = 0.57},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_02.ogg", t = 0.97},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_chamber_01.ogg", t = 1.3},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_end.ogg", t = 1.5},
            {hide = 2, t = 0},
            {hide = 0, t = 0.2},
            {hide = 1, t = 0.8},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_mw22",
        MinProgress = 0.95,
        PeekProgress = 0.925,
        RefillProgress = 0.75,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.75, lhik = 0, rhik = 0},
            { t = 0.95, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_grab.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_magout_01.ogg", t = 0.25},
            {s = path .. "wfoly_ar_akilo47_reload_magin_v2_01.ogg", t = 1.35},
            {s = path .. "wfoly_ar_akilo47_reload_magin_v2_02.ogg", t = 1.75},
            {s = path .. "wfoly_ar_akilo47_reload_maghit.ogg", t = 1.85},
            {s = path .. "wfoly_ar_akilo47_reload_click.ogg", t = 1.83},
            {s = path .. "wfoly_ar_akilo47_reload_end.ogg", t = 1.85},
            {hide = 1, t = 0},
            {hide = 3, t = 0.9},
            {hide = 1, t = 1.2},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_mw22_empty",
        MinProgress = 0.975,
        RefillProgress = 0.85,
        PeekProgress = 0.97,
        FireASAP = true,
        DropMagAt = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 1, rhik = 0},
            { t = 0.3, lhik = 0, rhik = 0},
            { t = 0.75, lhik = 0, rhik = 0},
            { t = 0.8, lhik = 0, rhik = 0},
            { t = 1.1, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_twist.ogg", t = 0/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_boltback_01.ogg", t = 7/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_maghit_01.ogg", t = 26/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_01.ogg", t = 44/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_02.ogg", t = 53/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_boltforward_01.ogg", t = 60/30},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_end.ogg", t = 64/30},
            {hide = 1, t = 0},
            {hide = 0, t = 0.733},
            {hide = 2, t = 1.5},
            {hide = 1, t = 2.366},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_mw22_fast",
        MinProgress = 0.85,
        PeekProgress = 0.865,
        RefillProgress = 0.625,
        FireASAP = true,
        DropMagAt = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.7, lhik = 0, rhik = 0},
            { t = 0.85, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_fast_twist.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_maghit_01.ogg", t = 0.35},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magin_v2_01.ogg", t = 0.92},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magin_v2_02.ogg", t = 1.32},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magout_end.ogg", t = 1.1},
            {hide = 1, t = 0},
            {hide = 0, t = 0.333},
            {hide = 2, t = 1},
            {hide = 1, t = 1.7},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_mw22_fast_empty",
        MinProgress = 0.85,
        PeekProgress = 0.865,
        RefillProgress = 0.725,
        FireASAP = true,
        DropMagAt = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.7, lhik = 0, rhik = 0},
            { t = 0.95, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_twist.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_maghit_01.ogg", t = 0.35},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_01.ogg", t = 0.865},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_02.ogg", t = 1.265},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_chamber_01.ogg", t = 1.6},
            {s = path .. "wfoly_ar_akilo47_reload_empty_fast_end.ogg", t = 1.8},
            {hide = 1, t = 0},
            {hide = 0, t = 0.333},
            {hide = 2, t = 1},
            {hide = 1, t = 2.066},
        },
    },
    ["reload_drum2"] = {
        Source = "reload_mw22_drum",
        MinProgress = 0.9,
        PeekProgress = 0.875,
        RefillProgress = 0.775,
        FireASAP = true,
        MagSwapTime = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.025, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.7, lhik = 0, rhik = 0},
            { t = 0.8, lhik = 0, rhik = 0},
            { t = 0.9, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_drum_reload_grabmag.ogg", t = 14/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_magout_01.ogg", t = 26/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_twist.ogg", t = 54/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_magin_v2_01.ogg", t = 82/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_magin_v2_02.ogg", t = 97/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_02.ogg", t = 108/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_end.ogg", t = 114/30},
            {hide = 1, t = 0},
        },
    },
    ["reload_drum2_empty"] = {
        Source = "reload_mw22_drum_empty",
        MinProgress = 0.95,
        PeekProgress = 0.9,
        RefillProgress = 0.825,
        FireASAP = true,
        DropMagAt = 1.25,
        MagSwapTime = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.025, lhik = 1, rhik = 0},
            { t = 0.15, lhik = 0, rhik = 0},
            { t = 0.6, lhik = 0, rhik = 0},
            { t = 0.7, lhik = 1, rhik = 0},
            { t = 0.95, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_mvmnt.ogg", t = 14/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magout_01.ogg", t = 26/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_twist.ogg", t = 54/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_01.ogg", t = 87/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_02.ogg", t = 95/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_magout_01.ogg", t = 107/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_rise.ogg", t = 120/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_chamber_01.ogg", t = 139/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_end.ogg", t = 152/30},
            {hide = 1, t = 0},
            {hide = 3, t = 1.25},
            {hide = 1, t = 1.8},
        },
    },
    ["reload_drum2_fast"] = {
        Source = "reload_mw22_drum_fast",
        MinProgress = 0.925,
        PeekProgress = 0.875,
        RefillProgress = 0.725,
        FireASAP = true,
        DropMagAt = 1.25,
        MagSwapTime = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 0, rhik = 0},
            { t = 0.725, lhik = 0, rhik = 0},
            { t = 0.87, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_drum_reload_fast_raise.ogg", t = 8/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_magout_01.ogg", t = 25/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_mvmnt.ogg", t = 65/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_fast_magin_v2_01.ogg", t = 71/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_02.ogg", t = 80/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_fast_end.ogg", t = 99/30},
            {hide = 1, t = 0},
            {hide = 3, t = 1.25},
            {hide = 1, t = 1.8},
        },
    },
    ["reload_drum2_fast_empty"] = {
        Source = "reload_mw22_drum_fast_empty",
        MinProgress = 0.95,
        PeekProgress = 0.9,
        RefillProgress = 0.875,
        FireASAP = true,
        DropMagAt = 1.25,
        MagSwapTime = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.025, lhik = 1, rhik = 0},
            { t = 0.15, lhik = 0, rhik = 0},
            { t = 0.675, lhik = 0, rhik = 0},
            { t = 0.775, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_raise.ogg", t = 5/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_mvmnt.ogg", t = 15/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_magout_01.ogg", t = 27/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_01.ogg", t = 72/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_02.ogg", t = 83/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_chamber_01.ogg", t = 107/30},
            {s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_end.ogg", t = 113/30},
            {hide = 1, t = 0},
            {hide = 3, t = 1.25},
            {hide = 1, t = 1.8},
        },
    },
    ["ready"] = {
        Source = "draw",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 1, rhik = 0},
            { t = 0.5, lhik = 1, rhik = 0},
            { t = 0.7, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_ak47_inspect_03.ogg", t = 0/30},
            {s = path .. "wfoly_ar_akilo47_raise_first_chamber_01.ogg", t = 0/30},
            {s = path .. "wfoly_ar_akilo47_raise_first_end.ogg", t = 17/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        MinProgress = 0.3,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0},
            { t = 0.6, lhik = 1, rhik = 1},
            { t = 1, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1},
            { t = 0.2, lhik = 0, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_drop.ogg", t = 0/30},
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
            { t = 0, lhik = 0, rhik = 1},
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
        Time = 1.25,
        IKTimeLine = {
            {t = 0, lhik = 1, rhik = 1},
            {t = 0.35, lhik = 1,rhik = 1},
            {t = 0.85, lhik = 0,rhik = 1},
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
        Time = 1.25,
        IKTimeLine = {
            {t = 0, lhik = 0, rhik = 1},
            {t = 0.35, lhik = 0,rhik = 1},
            {t = 0.85, lhik = 1,rhik = 1},
        },
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.1, lhik = 0, rhik = 0},
            { t = 0.8, lhik = 0, rhik = 0},
            { t = 0.95, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = path .. "wfoly_ar_ak47_inspect_01.ogg", t = 0},
            {s = path .. "wfoly_ar_ak47_inspect_02.ogg", t = 1.3},
            {s = path .. "wfoly_ar_ak47_inspect_03.ogg", t = 2.36},
            {s = path .. "wfoly_ar_ak47_inspect_04.ogg", t = 3.6},
            {s = path .. "wfoly_ar_ak47_inspect_05.ogg", t = 4.1},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.1, lhik = 0, rhik = 0},
            { t = 0.6, lhik = 0, rhik = 0},
            { t = 0.85, lhik = 1, rhik = 1},
        },
    },
    ["bash_bayonet"] = {
        Source = {"melee_bayonet","melee2_bayonet","melee3_bayonet"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.1, lhik = 0, rhik = 0},
            { t = 0.6, lhik = 0, rhik = 0},
            { t = 0.85, lhik = 1, rhik = 1},
        },
    },
    ["firemode_1"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_akilo47_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_akilo47_selector_off.ogg", t = 0/30},
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
            { t = 0, lhik = 1, rhik = 0},
            { t = 0.2, lhik = 1, rhik = 0},
            { t = 0.5, lhik = 1, rhik = 0},
            { t = 0.85, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
            {s = "switchsights/wpfoly_hybrid_toggle_on.ogg", t = 5/30},
        },
    },
    ["hybrid_off"] = {
        Source = "hybrid_off",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1},
            { t = 0.2, lhik = 0, rhik = 1},
            { t = 0.5, lhik = 0, rhik = 1},
            { t = 0.85, lhik = 1, rhik = 1},
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
            {s = "switchsights/wpfoly_hybrid_toggle_off.ogg", t = 5/30},
        },
    },
-- UBGL Animations
    ["enter_sights_ubgl"] = {
        Source = "ubgl_idle",
        IKTimeLine = { { t = 0,  lhik = 0, rhik = 0} },
    },
    ["fire_ubgl"] = {
        Source = "ubgl_fire",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["reload_ubgl"] = {
        Source = "ubgl_reload",
        MinProgress = 0.95,
        FireASAP = true,
        RefillProgress = 0.75,
        EventTable = {
            {s = path .. "wpn_iw8_ak47_gl_start.ogg", t = 0/30},
            {s = path .. "wpn_iw8_ak47_gl_mvmnt.ogg", t = 2/30},
            {s = path .. "wpn_iw8_ak47_gl_shell_in.ogg", t = 26.5/30},
            {s = path .. "wpn_iw8_ak47_gl_end.ogg", t = 56.5/30},
            {hide = 4, t = 0},
            {hide = 1, t = 0.6},
        }
    },
    ["reload_fast_ubgl"] = {
        Source = "ubgl_reload_fast",
        MinProgress = 0.95,
        FireASAP = true,
        RefillProgress = 0.75,
        EventTable = {
            {s = path .. "wpn_iw8_ak47_gl_start.ogg", t = 0/30},
            {s = path .. "wpn_iw8_ak47_gl_mvmnt.ogg", t = 2/30},
            {s = path .. "wpn_iw8_ak47_gl_shell_in.ogg", t = 17.5/30},
            {s = path .. "wpn_iw8_ak47_gl_end.ogg", t = 40/30},
            {hide = 4, t = 0},
            {hide = 1, t = 0.45},
        }
    },
    ["enter_ubgl"] = {
        Source = "ubgl_up",
        Mult = 1.3,
        MinProgress = 0.3,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
        },
        EventTable = {
            {s = pathub .. "ubgl_to_grenade.ogg", t = 0/30},
        }
    },
    ["exit_ubgl"] = {
        Source = "ubgl_down",
        Mult = 1.3,
        MinProgress = 0.3,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 0 },
        },
        EventTable = {
            {s = pathub .. "ubgl_from_grenade.ogg", t = 0/30},
        },
    },
    ["draw_ubgl"] = {
        Source = "ubgl_raise",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["holster_ubgl"] = {
        Source = "ubgl_drop",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathub .. "ubgl_drop.ogg", t = 0/30},
        },
    },
    ["idle_ubgl"] = {
        Source = "ubgl_idle",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["idle_ubgl_sprint"] = {
        Source = "ubgl_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["exit_sprint_ubgl"] = {
        Source = "ubgl_sprint_out",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        Time = 1,
    },
    ["enter_sprint_ubgl"] = {
        Source = "ubgl_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        Time = 1,
    },
    ["super_sprint_idle_ubgl"] = {
        Source = "ubgl_super_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["super_sprint_in_ubgl"] = {
        Source = "ubgl_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        Time = 1,
    },
    ["super_sprint_out_ubgl"] = {
        Source = "ubgl_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        Reverse = true,
        Time = 1,
    },
    ["bash_ubgl"] = {
        Source = {"ubgl_melee", "ubgl_melee2", "ubgl_melee3"},
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["inspect_ubgl"] = {
        Source = "ubgl_lookat01",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = path .. "wfoly_ar_ak47_inspect_01.ogg", t = 0},
            {s = path .. "wfoly_ar_ak47_inspect_02.ogg", t = 1.3},
            {s = path .. "wfoly_ar_ak47_inspect_03.ogg", t = 2.36},
            {s = path .. "wfoly_ar_ak47_inspect_04.ogg", t = 3.6},
            {s = path .. "wfoly_ar_ak47_inspect_05.ogg", t = 4.1},
        },
    },
-- UBGL Shotgun Animations
    ["enter_sights_ubgl_shotgun"] = {
        Source = "ubgl_sh_idle",
        IKTimeLine = { { t = 0,  lhik = 0, rhik = 0} },
    },
    ["fire_ubgl_shotgun"] = {
        Source = "ubgl_sh_fire",
        Mult = 0.66,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["reload_ubgl_start"] = {
        Source = "ubgl_sh_reload_start",
        RestoreAmmo = 1,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.54},
            {hide = 1, t = 0},
        }
    },
    ["reload_ubgl_insert"] = {
        Source = "ubgl_sh_reload_loop",
        MinProgress = 0.875,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.46},
            {hide = 1, t = 0},
        }
    },
    ["reload_ubgl_finish"] = {
        Source = "ubgl_sh_reload_end",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_end_turnover.ogg", t = 0.1},
        }
    },
    ["reload_ubgl_fast_start"] = {
        Source = "ubgl_sh_reload_start",
        Mult = 0.8,
        RestoreAmmo = 1,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.533},
            {hide = 1, t = 0},
        }
    },
    ["reload_ubgl_fast_insert"] = {
        Source = "ubgl_sh_reload_loop",
        Mult = 0.66,
        MinProgress = 0.875,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_twist.ogg", t = 0.0},
            {s = pathubs .. "wfoly_sh_romeo870_reload_start_shellin_01.ogg", t = 0.33},
            {hide = 1, t = 0},
        }
    },
    ["reload_ubgl_fast_finish"] = {
        Source = "ubgl_sh_reload_end",
        Mult = 0.8,
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathubs .. "wfoly_sh_romeo870_reload_end_turnover.ogg", t = 0.0},
        }
    },
    ["enter_ubgl_shotgun"] = {
        Source = "ubgl_sh_up",
        Mult = 1.3,
        MinProgress = 0.3,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
        },
        EventTable = {
            {s = pathub .. "ubgl_to_grenade.ogg", t = 0/30},
        }
    },
    ["exit_ubgl_shotgun"] = {
        Source = "ubgl_sh_down",
        Mult = 1.3,
        MinProgress = 0.3,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 0 },
        },
        EventTable = {
            {s = pathub .. "ubgl_from_grenade.ogg", t = 0/30},
        },
    },
    ["draw_ubgl_shotgun"] = {
        Source = "ubgl_sh_raise",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["holster_ubgl_shotgun"] = {
        Source = "ubgl_sh_drop",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = pathub .. "ubgl_drop.ogg", t = 0/30},
        },
    },
    ["idle_ubgl_shotgun"] = {
        Source = "ubgl_sh_idle",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["idle_ubgl_shotgun_sprint"] = {
        Source = "ubgl_sh_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["exit_sprint_ubgl_shotgun"] = {
        Source = "ubgl_sh_sprint_out",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        Time = 1,
    },
    ["enter_sprint_ubgl_shotgun"] = {
        Source = "ubgl_sh_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        Time = 1,
    },
    ["super_sprint_idle_ubgl_shotgun"] = {
        Source = "ubgl_sh_super_sprint",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["super_sprint_in_ubgl_shotgun"] = {
        Source = "ubgl_sh_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        Time = 1,
    },
    ["super_sprint_out_ubgl_shotgun"] = {
        Source = "ubgl_sh_super_sprint_in",
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        Reverse = true,
        Time = 1,
    },
    ["bash_ubgl_shotgun"] = {
        Source = {"ubgl_sh_melee", "ubgl_sh_melee2", "ubgl_sh_melee3"},
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
    },
    ["inspect_ubgl_shotgun"] = {
        Source = "ubgl_sh_lookat01",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = { { t = 0, lhik = 0, rhik = 0 } },
        EventTable = {
            {s = path .. "wfoly_ar_ak47_inspect_01.ogg", t = 0},
            {s = path .. "wfoly_ar_ak47_inspect_02.ogg", t = 1.3},
            {s = path .. "wfoly_ar_ak47_inspect_03.ogg", t = 2.36},
            {s = path .. "wfoly_ar_ak47_inspect_04.ogg", t = 3.6},
            {s = path .. "wfoly_ar_ak47_inspect_05.ogg", t = 4.1},
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

--- 30-Round (SMG) & Drum Mags ---
local Translate_Drum = {
    ["reload"] = "reload_drum",
    ["reload_empty"] = "reload_drum_empty",
}
local Translate_Drum_Fast = {
    ["reload"] = "reload_drum_fast",
    ["reload_empty"] = "reload_drum_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
local Translate_SMG = {
    ["reload"] = "reload_smg",
    ["reload_empty"] = "reload_smg_empty",
}
local Translate_SMG_Fast = {
    ["reload"] = "reload_smg_fast",
    ["reload_empty"] = "reload_smg_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
--- 50-Round (SMG) ---
local Translate_XMAG = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMAG_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
--- 80 Drum Mags ---
local Translate_Drum2 = {
    ["reload"] = "reload_drum2",
    ["reload_empty"] = "reload_drum2_empty",
}
local Translate_Drum2_Fast = {
    ["reload"] = "reload_drum2_fast",
    ["reload_empty"] = "reload_drum2_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
    ["reload_ubgl"] = "reload_fast_ubgl",
}
local Translate_TacSprint = {
    ["idle_sprint"] = "super_sprint_idle",
    ["enter_sprint"] = "super_sprint_in",
    ["exit_sprint"] = "super_sprint_out",
    ["idle_ubgl_sprint"] = "super_sprint_idle_ubgl",
    ["enter_sprint_ubgl"] = "super_sprint_in_ubgl",
    ["exit_sprint_ubgl"] = "super_sprint_out_ubgl",
}
local Translate_Bayonet = {
    ["bash"] = "bash_bayonet",
}

--- UB Shotgun ---
local Translate_UBGLS = {
    ["enter_sights_ubgl"] = "enter_sights_ubgl_shotgun",
    ["fire_ubgl"] = "fire_ubgl_shotgun",
    ["enter_ubgl"] = "enter_ubgl_shotgun",
    ["exit_ubgl"] = "exit_ubgl_shotgun",
    ["draw_ubgl"] = "draw_ubgl_shotgun",
    ["holster_ubgl"] = "holster_ubgl_shotgun",
    ["idle_ubgl"] = "idle_ubgl_shotgun",
    ["idle_ubgl_sprint"] = "idle_ubgl_shotgun_sprint",
    ["exit_sprint_ubgl"] = "exit_sprint_ubgl_shotgun",
    ["enter_sprint_ubgl"] = "enter_sprint_ubgl_shotgun",
    ["super_sprint_idle_ubgl"] = "super_sprint_idle_ubgl_shotgun",
    ["super_sprint_in_ubgl"] = "super_sprint_in_ubgl_shotgun",
    ["super_sprint_out_ubgl"] = "super_sprint_out_ubgl_shotgun",
    ["bash_ubgl"] = "bash_ubgl_shotgun",
    ["inspect_ubgl"] = "inspect_ubgl_shotgun",
}

local Translate_UBGLS_Fast = {
    ["enter_sights_ubgl"] = "enter_sights_ubgl_shotgun",
    ["fire_ubgl"] = "fire_ubgl_shotgun",
    ["enter_ubgl"] = "enter_ubgl_shotgun",
    ["exit_ubgl"] = "exit_ubgl_shotgun",
    ["draw_ubgl"] = "draw_ubgl_shotgun",
    ["holster_ubgl"] = "holster_ubgl_shotgun",
    ["idle_ubgl"] = "idle_ubgl_shotgun",
    ["idle_ubgl_sprint"] = "idle_ubgl_shotgun_sprint",
    ["exit_sprint_ubgl"] = "exit_sprint_ubgl_shotgun",
    ["enter_sprint_ubgl"] = "enter_sprint_ubgl_shotgun",
    ["super_sprint_idle_ubgl"] = "super_sprint_idle_ubgl_shotgun",
    ["super_sprint_in_ubgl"] = "super_sprint_in_ubgl_shotgun",
    ["super_sprint_out_ubgl"] = "super_sprint_out_ubgl_shotgun",
    ["bash_ubgl"] = "bash_ubgl_shotgun",
    ["inspect_ubgl"] = "inspect_ubgl_shotgun",
    ["reload_ubgl_start"] = "reload_ubgl_fast_start",
    ["reload_ubgl_insert"] = "reload_ubgl_fast_insert",
    ["reload_ubgl_finish"] = "reload_ubgl_fast_finish",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")
    local bayonet = wep:HasElement("bayonet")
    local drum = wep:HasElement("mag_drum")
    local drum2 = wep:HasElement("mag_drum_mw22")
    local smg = wep:HasElement("mag_545")
    local xmag = wep:HasElement("mag_xmag")
    local nostock = wep:HasElement("stock_none") or wep:HasElement("stock_none2")
    local masterkey = wep:HasElement("shotgun")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if bayonet and Translate_Bayonet[anim] then
        return Translate_Bayonet[anim]
    end

    if speedload then
        if masterkey then
            if Translate_UBGLS_Fast[anim] then
                return Translate_UBGLS_Fast[anim]
            end
        end
        if drum then
            if Translate_Drum_Fast[anim] then
                return Translate_Drum_Fast[anim]
            end
        elseif drum2 then
            if Translate_Drum2_Fast[anim] then
                return Translate_Drum2_Fast[anim]
            end
        elseif smg and !nostock then
            if Translate_SMG_Fast[anim] then
                return Translate_SMG_Fast[anim]
            end
        elseif xmag then
            if Translate_XMAG_Fast[anim] then
                return Translate_XMAG_Fast[anim]
            end
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else
        if masterkey then
            if Translate_UBGLS[anim] then
                return Translate_UBGLS[anim]
            end
        end
        if drum then
            if Translate_Drum[anim] then
                return Translate_Drum[anim]
            end
        end
        if drum2 then
            if Translate_Drum2[anim] then
                return Translate_Drum2[anim]
            end
        end
        if smg and !nostock then
            if Translate_SMG[anim] then
                return Translate_SMG[anim]
            end
        end
        if xmag then
            if Translate_XMAG[anim] then
                return Translate_XMAG[anim]
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
    ModelOffset = Vector(8, 0, 0.5),
    ModelAngleOffset = Angle(0, 0, 0),
    Scale = 0.9,
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_pistolgrip_tape_akilo47.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_pistolgrip_tape_akilo47.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/ak47/attachment_vm_pistolgrip_tape_akilo47.mdl",
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["sight_rail"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["pistol_grip"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["barrel"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["reciever_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["tag_laser"] = {
        Bodygroups = {
            {7,1},
        },
    },
    -- ["barrel_custom"] = {
        -- AttPosMods = {
            -- [6] = { Pos = Vector(-2, 0, -0.1), }, -- Underbarrel
        -- },
    -- },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("barrel_custom") then
    model:SetBodygroup(2,2)
    end

    if wep:HasElement("reciever_rail") then model:SetBodygroup(5,0) end
    if wep:HasElement("scope_svd") then model:SetBodygroup(5,0) end

    if wep:HasElement("reciever_custom") then
    model:SetBodygroup(5,0)
    end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = {"cod2019_muzzle","cod2019_ak47_muzzle"},
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
        DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_ak47_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_cylinder",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.34, -1.34, 0),
        ExcludeElements = {"barrel_smg"},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
        DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(1, 0, -0.1),
        Category = {"cod2019_optic","cod2019_ak47_optics","cod2019_optic_svd"},
        CorrectiveAng = Angle(0, 0, 0),
        InstalledElements = {"sight_rail"},
        ExcludeElements = {"forwardoptic"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
        DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_tube","cod2019_ak47_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        --InstalledElements = {"stock"},
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 180),
        Scale = 1,
        InstalledElements = {"barrel"},
        ExcludeElements = {"barrel_rpk_grip"},
        MergeSlots = {20}, -- Grenade Launcher(s)
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
        DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
        Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_ak47_mag"},
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
        Pos = Vector(12, 0, 1),
    },

    -- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_ak47_receiver",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(12, 0, 4),
        Hidden = false,
    },

    -- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
        Category = "cod2019_skins_ak47",
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
        StickerModel = "models/weapons/cod2019/stickers/rif_ak47_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_ak47_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(1, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_ak47_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(-1, 0, 3),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/rif_ak47_decal_d.mdl",
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
        Icon_Offset = Vector(-5.5, 0, 3),
        Scale = 1.2,
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -1),
        Icon_Offset = Vector(-7, 0, 4),
        CosmeticOnly = true,
    },
    { -- 20
        PrintName = "GL",
        Category = {"cod2019_m203"},
        Bone = "tag_attachments",
        Pos = Vector(21.75, 0, 2),
        Ang = Angle(0, 180, 0),
        InstalledElements = {"barrel", "cod2019_m203_alt"},
        ExcludeElements = {"barrel_rpk"},
        Hidden = true,
    },
    -- { -- 21
        -- PrintName = "Extras",
        -- Category = {"cod2019_ak47_extra"},
        -- Bone = "tag_attachments",
        -- Pos = Vector(0, 0, 0),
        -- Ang = Angle(0, 0, 0),
        -- ExcludeElements = {"barrel_rpk"},
    -- },
    { -- 21
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = {"cod2019_ak47_grip"},
        Bone = "tag_grenade_launcher",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        MergeSlots = {6}, -- Grips
        Hidden = true,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.5
--SWEP.CodStubbyGripPoseParam = 22
SWEP.CodStubbyGripPoseParam = 30
SWEP.CodStubbyTallGripPoseParam = 26
SWEP.CodAngledGripPoseParam = 32

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 35 -- Damage done at point blank range
SWEP.DamageMin = 32 -- Damage done at maximum range

SWEP.RangeMin = 27 / ARC9.HUToM
SWEP.RangeMax = 28 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.6,
    [HITGROUP_CHEST] = 1.025,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 850 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 545

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.27 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
