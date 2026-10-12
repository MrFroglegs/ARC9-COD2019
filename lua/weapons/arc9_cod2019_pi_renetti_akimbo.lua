AddCSLuaFile()
SWEP.Base = "arc9_cod2019_pi_renetti"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"

SWEP.PrintName = string.format( ARC9:GetPhrase("mw19_weapon_akimbo"), ARC9:GetPhrase("mw19_weapon_m9") )

SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_renetti_akimbo.png"

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_renetti.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.NotForNPCs = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_renetti.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-12.5, 9, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- MAGAZINE

SWEP.ChamberSize = 2
SWEP.ClipSize = 30

-------------------------- FIREMODES

SWEP.RPMMult = 1.75

-------------------------- MELEE

SWEP.SecondaryBash = true
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.3

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 60

SWEP.MovingPos = Vector(0, -1.5, -0.8)

SWEP.CrouchPos = Vector(0, -1.5, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(-1, 0, -1)
SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 35, 4.25)
SWEP.CustomizeRotateAnchor = Vector(19, 0, -4.25)
SWEP.CustomizeSnapshotPos = Vector(0, 10, 0)

-------------------------- HoldTypes

SWEP.HoldType = "duel"
SWEP.HoldTypeSprint = "duel"
SWEP.HoldTypeHolstered = "duel"
SWEP.HoldTypeSights = "duel"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_DUEL
SWEP.AnimDraw = false

SWEP.Akimbo = true

-------------------------- EFFECTS

SWEP.TracerEffect = "cod2019_tracer"
SWEP.MuzzleEffectQCA = 1
SWEP.MuzzleEffectQCAEvenShot = 2
SWEP.CaseEffectQCA = 4
SWEP.CaseEffectQCAEvenShot = 3
SWEP.AfterShotQCA = 1
SWEP.AfterShotQCAEvenShot = 2

SWEP.CamQCA = 7
SWEP.CamQCA_Mult = 1

SWEP.DropMagazineAmount = 2
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 6
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/renetti/"

SWEP.BulletBones = {
    [1] = "j_bullet1_l",
	[2] = "j_bullet1",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
	[2] = "j_mag2_l",
}

SWEP.Animations = {
    ["fire_left"] = {
        Source = "fire_left",
    },
    ["fire_right"] = {
        Source = "fire_right",
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.725,
		MagSwapTime = 3.5,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magout.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magin.ogg", t = 35/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_maghit.ogg", t = 38/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magin.ogg", t = 56/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_end.ogg", t = 67/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_end.ogg", t = 67/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.8,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magout.ogg", t = 11/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magin.ogg", t = 55/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magin.ogg", t = 56/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_charge.ogg", t = 73/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_charge.ogg", t = 76/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_end.ogg", t = 78/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 78/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.7,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magout.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magin.ogg", t = 19/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_maghit.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_magin.ogg", t = 34/30},
			{s = path .. "wfoly_pi_mike9_reload_fast_end.ogg", t = 46/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_end.ogg", t = 47/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.775,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_raise.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magout.ogg", t = 11/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_magin.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_magin.ogg", t = 36/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_charge.ogg", t = 56/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_charge.ogg", t = 58/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_fast_end.ogg", t = 60/30},
			{s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 60/30},
        },
    },
    ["ready"] = {
        Source = "draw_first",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike9_raise_first_up.ogg", t = 0/30},
            {s = path .. "wfoly_pi_mike9_raise_first_hammer.ogg", t = 12/30},
            {s = path .. "wfoly_pi_mike9_raise_first_hammer.ogg", t = 15/30},
			{s = path .. "wfoly_pi_mike9_raise_first_end.ogg", t = 25/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.3,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_mike9_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_mike9_reload_empty_end.ogg", t = 0/30},
            {s = path .. "wfoly_pi_mike9_inspect_05.ogg", t = 5/30},
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
		Time = 0.25,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Time = 0.25,
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
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike9_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike9_inspect_02.ogg", t = 37/30},
			{s = path .. "wfoly_pi_mike9_inspect_03.ogg", t = 60/30},
			{s = path .. "wfoly_pi_mike9_inspect_04.ogg", t = 97/30},
			{s = path .. "wfoly_pi_mike9_inspect_05.ogg", t = 113/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmptyElite

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

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if Translate_Fast[anim] then
            return Translate_Fast[anim]
            end
        end
    end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_renetti_slide_auto"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_barauto_akimbo.mdl",
	FiremodesOverride = {
			{
				Mode = 6,
				RPMMult = 1.25,
				RunawayBurst = true,
				--TracerEffect = "ARC9_tracer",
			},
		},
	},
    ["cod2019_renetti_stock"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_stock_akimbo.mdl",
    -- SprintPos = Vector(-1, 0, -1),
    -- SprintAng = Angle(0, 0, -30)
    },
    ["cod2019_renetti_mag_xmag"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_xmags_akimbo.mdl",
	ClipSizeOverride = 36
	},
    ["cod2019_renetti_mag_xmaglrg"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_xmagslrg_akimbo.mdl",
	ClipSizeOverride = 42
	},
    ["cod2019_renetti_grip_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_pstlgrplght_akimbo.mdl",
	},
    ["cod2019_renetti_grip_custom"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_pstlgrpcust_akimbo.mdl",
	},
    ["cod2019_renetti_slide_long"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_barlong_akimbo.mdl",
	},
    ["cod2019_renetti_slide_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_barlight_akimbo.mdl",
	},
    ["cod2019_renetti_muzzle"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_compensator.mdl",
	},
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_trigcust01_akimbo.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_trigcust02_akimbo.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/renetti/attachment_vm_pi_mike9_trigcust03_akimbo.mdl",
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
            {4,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {1,1},
            {5,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
            {6,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {3,1},
            {7,1},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {8,1},
            {9,1},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {10,1},
            {11,1},
        },
    },
    ["sight_mount"] = {
        Bodygroups = {
            {12,1},
            {13,1},
        },
    },
}

SWEP.Attachments = {
    { -- 1
		Bone = "tag_silencer_l",
		DuplicateModels = { { Bone = "tag_silencer" } },
    },
    { -- 2
        Bone = "tag_barrel_attach_l",
		DuplicateModels = { { Bone = "tag_barrel_attach" } },
    },
    { -- 3
        Category = {"cod2019_tac_pistols"},
        Bone = "tag_laser_attach_l",
		DuplicateModels = { { Bone = "tag_laser_attach" } },
    },
    { -- 4
        Bone = "j_slide_l",
		DuplicateModels = { { Bone = "j_slide" } },
    },
    { -- 5
        Bone = "tag_stock_attach_l",
    },
    { -- 6
        Bone = "j_trigger_l",
		DuplicateModels = { { Bone = "j_trigger" } },
    },
    { -- 7
		Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
    },
    { -- 8
        Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
    },
    { -- 9
        Bone = "tag_pistolgrip_attach_l",
		DuplicateModels = { { Bone = "tag_pistolgrip_attach" } },
    },
    { -- 10
        Bone = "tag_cosmetic_l",
        Pos = Vector(-2.5, 0, -2.25),
    },
	
	-- Unofficial
    { -- 11
        Category = "cod2019_renetti_akimbo_receiver",
        Bone = "tag_pistol_offset",
    },
	
	-- Cosmetics
    { -- 12
        Bone = "tag_cosmetic_l",
        Category = "cod2019_skins_renetti",
    },
    { -- 13
        Bone = "tag_cosmetic_l",
    },
    { -- 14
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_a.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 15
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_b.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 16
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_c.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 17
        StickerModel = "models/weapons/cod2019/stickers/akimbo_renetti_decal_d.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 18
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
    },
    { -- 19
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
		Icon_Offset = Vector(-2.5, 0.05, 1.5),
    },
    { -- 20
        Bone = "tag_cosmetic_l",
        Pos = Vector(-9, 0, 3),
    },
    { -- 21
        Bone = "tag_reflex_l",
		DuplicateModels = { { Bone = "tag_reflex" } },
    },
}
