AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_proj_rpg_default", "vgui/killicons/cod2019_la_rpg.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_la_rpg.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_launcher") or "Launchers"
SWEP.ARC9WeaponCategory = 6

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_rpg") or "RPG-7"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_launcher") or "Rocket Launcher"

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Palindrone/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_rpg_desc") or [[Unguided, self-propelled rocket launcher fires a slower projectile with a high-explosive yield.]]

SWEP.ViewModel = "models/weapons/cod2019/c_eq_rpg.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_eq_rpg.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_rpg.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 4.5, -4),
    Ang = Angle(-18, 0, 180),
    TPIKPos = Vector(-5, 5, -1),
    TPIKAng = Angle(-9, 0, 165),
    Scale = 1
}

SWEP.CantPeek = false
SWEP.NoAimAssist = true

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 100 -- Damage done at point blank range
SWEP.DamageMin = 100 -- Damage done at maximum range
SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 10000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 0 -- Units of wood that can be penetrated by this gun.
SWEP.ImpactForce = 15

SWEP.ShootEnt = "arc9_cod2019_proj_rpg_default" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 3000
SWEP.ShootEntityData = {} -- Extra data that can be given to a projectile. Sets SENT.WeaponDataLink with this table.

SWEP.ShootPosOffset = Vector(0, 0, -5)
SWEP.ShootPosOffsetSights = Vector(0, 0, -5)
SWEP.PushBackForce = 5

-------------------------- MAGAZINE

SWEP.Ammo = "RPG_Round" -- what ammo type the gun uses

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 12 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 12 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.MissileCrosshair = false

SWEP.CustomCrosshair = true
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair")
SWEP.CustomCrosshairSize = 22

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("mw19_firemode_unguided"),
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 3

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 10 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.9

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 10
SWEP.VisualRecoilUp = 15

SWEP.VisualRecoilMultSights = 0.8
SWEP.VisualRecoilPunchSights = 13
SWEP.VisualRecoilRollSights = 10
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0.1

-------------------------- SPREAD

SWEP.Spread = 0.02

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.005
SWEP.SpreadAddMidAir = 0.01
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread)
-- SWEP.SpreadAddSights = -(SWEP.Spread + (SWEP.SpreadAddMove / 2))

SWEP.SpreadMultRecoil = 1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

SWEP.RecoilPatternDrift = 20

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.SpeedMult = 0.9 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.75 -- When aiming
SWEP.SpeedMultShooting = 0.5

SWEP.AimDownSightsTime = 0.8 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.7

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.94, -3, -3.25),
    Ang = Angle(-0.5, 16, -5),
    Magnification = 1.25,
    ViewModelFOV = 54,
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

SWEP.ActivePosShooting = Vector(0, 0, 0)
SWEP.ActiveAngShooting = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -0.8, -1.5)
SWEP.MovingAng = Angle(8, 0, -8)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, 0, -2)
SWEP.SprintAng = Angle(5, 2, 5)

SWEP.CustomizeAng = Angle(90, 0, 16)
SWEP.CustomizePos = Vector(9.5, 55, 2)
SWEP.CustomizeRotateAnchor = Vector(13, -3, -4)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(1, 35, 3)

SWEP.PeekPos = Vector(1.8, 1.5, -1.3)
SWEP.PeekAng = Angle(0, 1, -25)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_m79"
SWEP.AfterShotParticle = "barrel_smoke_plume"
SWEP.AfterShotParticleDelay = -1
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.NoShellEject = true

SWEP.HookP_BlockFire = function(self)
    return self:GetSightAmount() < 1
end

function SWEP:PrimaryAttack()
    local clip = self:Clip1()
    weapons.Get(self.Base).PrimaryAttack(self)
    if (clip != self:Clip1()) then
        self:MakeEnvironmentDust(200)
    end
end

-------------------------- SOUNDS

local path = "weapons/cod2019/rpg/"

SWEP.ShootSound = "COD2019.RPG.Fire"
SWEP.ShootSoundIndoor = "COD2019.RPG.Fire"

-- Outside
SWEP.LayerSound = ""
SWEP.DistantShootSound = "Distant_RPG.Outside"
-- Inside
SWEP.LayerSoundIndoor = ""
SWEP.DistantShootSoundIndoor = "Distant_JOKR.Inside"
---------------------------------------------------

SWEP.DryFireSound = "weapons/cod2019/svd/weap_delta_empty.ogg"
SWEP.EnterSightsSound = path .. "wfoly_la_rpapa7_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_la_rpapa7_ads_down.ogg"

SWEP.TriggerDelay = 0.02 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.02 -- Time until weapon fires.

SWEP.TriggerDownSound = ""
SWEP.TriggerUpSound = ""

SWEP.BulletBones = {
    [1] = "j_mag1",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "j_mag1"
    }
}

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["dryfire"] = {
        Source = "firemode",
        MinProgress = 0.01,
        FireASAP = true,
    },
    ["reload"] = {
        Source = "reload",
        MinProgress = 0.95,
        FireASAP = true,
        RefillProgress = 0.75,
        FireASAP = true,
        MagSwapTime = 0.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_la_rpapa7_reload_raise.ogg", t = 0.1},
            {s = path .. "wfoly_la_rpapa7_reload_load.ogg", t = 0.55},
            {s = path .. "wfoly_la_rpapa7_reload_lower.ogg", t = 1},
            {s = path .. "wfoly_la_rpapa7_reload_fast_hip_safetyclick.ogg", t = 1.95},
            {s = path .. "wfoly_la_rpapa7_reload_end.ogg", t = 1.85},
            {hide = 1, t = 0},
            {hide = 0, t = 0.3},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
        MinProgress = 0.95,
        FireASAP = true,
        RefillProgress = 0.75,
        MagSwapTime = 0.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_la_rpapa7_reload_fast_hip_start.ogg", t = 0.033},
            {s = path .. "wfoly_la_rpapa7_reload_fast_hip_magin.ogg", t = 0.44},
            {s = path .. "wfoly_la_rpapa7_reload_fast_hip_safetyclick.ogg", t = 1.3},
            {s = path .. "wfoly_la_rpapa7_reload_fast_hip_end.ogg", t = 1},
            {hide = 1, t = 0},
            {hide = 0, t = 0.2},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_la_rpapa7_raise_first.ogg", t = 9/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        MinProgress = 0.5,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_la_rpapa7_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_la_rpapa7_drop_hip_rattle.ogg", t = 0/30},
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
        Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
        Mult = 2,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
        Mult = 2,
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
        Mult = 2,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_la_rpapa7_inspect_01.ogg", t = 5/30},
            {s = path .. "wfoly_la_rpapa7_inspect_02.ogg", t = 88/30},
            {s = path .. "wfoly_la_rpapa7_inspect_03.ogg", t = 165/30},
        },
    },
    ["bash"] = {
        Source = "melee_01",
    },
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty

-------------------------- ATTACHMENTS

local Translate_Fast = {
    ["reload"] = "reload_fast",
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

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if Translate_Fast[anim] then
            return Translate_Fast[anim]
            end
        end
end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(0, 0, 0),
    ModelAngleOffset = Angle(0, 0, 0),
    Scale = 0.8,
    },
    ["cod2019_perks_super_sprint"] = {
    SprintPos = Vector(0, 0, -2),
    SprintAng = Angle(0, 0, 1)
    },
}

SWEP.AttachmentElements = {
    ["rocket_shovel"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["rocket_harpoon"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["rocket_none"] = {
        Bodygroups = {
            {1,3},
        },
    },
}

SWEP.Attachments = {
    -- {
        -- PrintName = "Top",
        -- Bone = "tag_launcher_offset",
        -- Pos = Vector(7.1, -0.85, 1.2),
        -- Ang = Angle(0, 0, 0),
        -- Category = {"csgo_rail_optic_ak",},
        -- InstalledElements = {"sights"},
        -- CorrectiveAng = Angle(-0.4, 0.4, 0),
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_category_laser"),
        -- DefaultAttName = "Default",
        -- Category = "cod2019_tac",
        -- Bone = "tag_launcher_offset",
        -- Pos = Vector(15, 0.7, 0.3),
        -- Ang = Angle(0, 0, -90),
    -- },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
        DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "j_mag1",
        Category = {"cod2019_rpg_ammo"},
        Pos = Vector(5, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_launcher_offset",
        Pos = Vector(13, 0, -3),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_rpg_skins",
        Bone = "tag_launcher_offset",
        Pos = Vector(15, 0, 5),
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_launcher_offset",
        Pos = Vector(13, 0, 5),
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_rpg_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_launcher_offset",
        Pos = Vector(11, 0, 5),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_rpg_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_launcher_offset",
        Pos = Vector(9, 0, 5),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_rpg_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_launcher_offset",
        Pos = Vector(7, 0, 5),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_rpg_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_launcher_offset",
        Pos = Vector(5, 0, 5),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_rpg_decal_e.mdl",
        Category = "stickers",
        Bone = "tag_launcher_offset",
        Pos = Vector(3, 0, 5),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_rpg_decal_f.mdl",
        Category = "stickers",
        Bone = "tag_launcher_offset",
        Pos = Vector(1, 0, 5),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = {"charm", "killcounter"},
        RejectAttachments = { ["arc9_stat_proscreen"] = true },
        CosmeticOnly = true,
        Bone = "tag_launcher_offset",
        Pos = Vector(11, -0.9, 0.3),
        Ang = Angle(0, 0, 0),
        Scale = 1.5,
        Icon_Offset = Vector(-12.25, 0, 4.5),
    },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.5