AddCSLuaFile()
include( "arc9_cod2019_pi_m19.lua" )

SWEP.PrintName = string.format( ARC9:GetPhrase("mw19_weapon_akimbo"), SWEP.PrintName )

SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_m19_akimbo.png"

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_m19.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_pist_50gs.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.NotForNPCs = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_m19.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-12.5, 9, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- MAGAZINE

SWEP.ChamberSize = 2
SWEP.ClipSizeOverride = SWEP.ClipSize * 2

-------------------------- FIREMODES

SWEP.RPM = SWEP.RPM * 1.75

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 2

SWEP.RecoilSeed = nil
SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.1 -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilSide = 0.05
SWEP.VisualRecoilRoll = 55
SWEP.VisualRecoilUp = 0.1

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- MELEE

SWEP.SecondaryBash = true
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 60

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -1.5, -0.8)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, -1.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, 0, 1.5)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 42.5, 4.25)
SWEP.CustomizeRotateAnchor = Vector(19, 0, -4.25)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeSnapshotPos = Vector(1.5, -2.5, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

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
-- SWEP.TracerSize = 7
-- SWEP.TracerNum = 1
-- SWEP.TracerColor = Color(255, 200, 55)

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

-------------------------- SOUNDS

local path = "weapons/cod2019/m19/"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
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
        Source = "reload_short",
		MinProgress = 0.725,
		MagSwapTime = 3.5,
		DropMagAt = 0.35,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 2/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 20/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_01.ogg", t = 48/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 51/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 54/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 62/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 62/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.825,
		DropMagAt = 0.45,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 6/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 11/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_wiggle.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 50/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 56/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 55/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 72/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 75/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 77/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 77/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.725,
		MagSwapTime = 3.5,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 2/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 3/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 7/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 20/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_01.ogg", t = 35/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 39/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 37/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 44/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 45/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.825,
		DropMagAt = 0.4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_plr_pi_papa320_reload_start.ogg", t = 0/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_start.ogg", t = 2/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magout_01.ogg", t = 9/30},
            {s = path .. "wfoly_plr_pi_papa320_reload_empty_magout_01.ogg", t = 11/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_arm.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_wiggle.ogg", t = 19/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_01.ogg", t = 42/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_magin_v2_02.ogg", t = 45/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_magin_v2_02.ogg", t = 46/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 57/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_charge_01.ogg", t = 59/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_end.ogg", t = 59/30},
			{s = path .. "wfoly_plr_pi_papa320_reload_empty_end.ogg", t = 61/30},
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
            {s = path .. "wfoly_plr_pi_papa320_raise_first_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_pi_papa320_raise_first_open_01.ogg", t = 6/30},
			{s = path .. "wfoly_plr_pi_papa320_raise_first_close_01.ogg", t = 12/30},
			{s = path .. "wfoly_plr_pi_papa320_raise_first_end.ogg", t = 16/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_plr_pi_papa320_raise_up.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_papa320_inspect_04.ogg", t = 0/30},
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
            {s = path .. "wfoly_pi_papa320_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_papa320_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_papa320_inspect_03.ogg", t = 61/30},
			{s = path .. "wfoly_pi_papa320_inspect_04.ogg", t = 112/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty

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
    ["cod2019_m19_slide_ext"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_barrel_ext_akimbo.mdl"
    },
    ["cod2019_m19_slide_vented"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_slide_black_akimbo.mdl"
    },
    ["cod2019_m19_slide_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_slide_vented_akimbo.mdl"
    },
    ["cod2019_m19_mag_ext2"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_mag_ext2_akimbo.mdl",
	ClipSizeOverride = 49
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust_akimbo.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust02_akimbo.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/m19/attachment_vm_pi_papa320_trigcust03_akimbo.mdl",
    },
    ["cod2019_perks_super_sprint"] = {
    SprintPos = Vector(0, 0, 0),
    SprintAng = Angle(0, 0, 0)
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
            {3,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {1,1},
            {4,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {2,1},
            {5,1},
        },
    },
    ["mag"] = {
        Bodygroups = {
            {2,2},
            {5,2},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {6,1},
            {7,1},
        },
    },
}

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle_pistols",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer_l",
        DuplicateModels = { { Bone = "tag_silencer" } },
        Pos = Vector(0, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_m19_slide",
        Bone = "tag_barrel_attach_l",
		DuplicateModels = { { Bone = "tag_barrel_attach" } },
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-3, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach_l",
		DuplicateModels = { { Bone = "tag_laser_attach" } },
        Pos = Vector(0, 0, 0),
		InstalledElements = {"rail_laser"},
		RejectAttachments = { 
			["csgo_cod2019_angled"] = true,
			["csgo_cod2019_angled_tactical"] = true ,
		},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Bone = "tag_reflex_l",
		DuplicateModels = { { Bone = "tag_reflex" } },
        Pos = Vector(1, 0, 0),
        Category = {"cod2019_optics_pistols_alt"},
		InstalledElements = {"sight_none"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_triggeraction"),
		-- DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_trigger"},
        Bone = "j_trigger_l",
		DuplicateModels = { { Bone = "j_trigger" } },
        Pos = Vector(0, 0, 0),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
        Category = {"cod2019_mag","cod2019_m19_mag"},
        Pos = Vector(0, 0, 0),
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
		Category = {"cod2019_ammo"},
		Pos = Vector(-1, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "cod2019_pistolgrip",
        Bone = "tag_pistolgrip_attach_l",
		DuplicateModels = { { Bone = "tag_pistolgrip_attach" } },
        Pos = Vector(0, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_cosmetic_l",
        Pos = Vector(-0.5, 0, -2.5),
    },
	-- Unofficial
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_m19_receiver",
        Bone = "tag_pistol_offset",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(0, 0, 1),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic_l",
        Pos = Vector(3, 0, 1.5),
        Category = "cod2019_skins_m19",
		CosmeticOnly = true,
    },
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic_l",
        Pos = Vector(2, 0, 1.5),
        CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m19_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(1, 0, 1.5),
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m19_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(0, 0, 1.5),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m19_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(-1, 0, 1.5),
		ExcludeElements = {"cod2019_m19_slide_ext", "cod2019_m19_slide_light"}
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/akimbo_m19_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic_l",
        Pos = Vector(-2, 0, 1.5),
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
        Pos = Vector(-0.5, 0, 0),
		Icon_Offset = Vector(-2.5, 0, 1.5),
		Scale = 1,
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = "killcounter",
        Bone = "tag_weapon_l",
		DuplicateModels = { { Bone = "tag_weapon" } },
        Pos = Vector(-5, -0.6, 1.85),
		Icon_Offset = Vector(-4.85, 0.05, 2.3),
		CosmeticOnly = true,
    },
}
