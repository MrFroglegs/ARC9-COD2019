AddCSLuaFile()
SWEP.Base = "arc9_cod2019_pi_357"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"

SWEP.PrintName = string.format( ARC9:GetPhrase("mw19_weapon_akimbo"), ARC9:GetPhrase("mw19_weapon_357") )

SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun_akimbo") or "Akimbos"

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_357_akimbo.png"

SWEP.ViewModel = "models/weapons/cod2019/c_akimbo_357.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKforcelefthand = true
SWEP.TPIKNoSprintAnim = true 
SWEP.NotForNPCs = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_akimbo_357.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-12.5, 9, -15),
    TPIKAng = Angle(-3, 0, 180),
    Scale = 1
}

-------------------------- MAGAZINE

SWEP.ClipSize = 12

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

SWEP.CustomizePos = Vector(16.5, 35, 4.25)
SWEP.CustomizeRotateAnchor = Vector(16.5, 0, -4.25)
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

SWEP.NoShellEject = true
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false

-------------------------- SOUNDS

local path = "weapons/cod2019/357/"

SWEP.TriggerDelay = 0.3 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.1 -- Time until weapon fires.

SWEP.HideBones  = {
    [1] = "j_mag1",
    [2] = "j_mag1_l",
    [3] = "j_b_loader",
    [4] = "j_b_loader_l",
    [5] = "j_b_loader_top",
    [6] = "j_b_loader_top_l",
    [7] = "j_b_loader_01",
    [8] = "j_b_loader_02",
    [9] = "j_b_loader_03",
    [10] = "j_b_loader_04",
    [11] = "j_b_loader_05",
    [12] = "j_b_loader_06",
    [13] = "j_b_loader_01_l",
    [14] = "j_b_loader_02_l",
    [15] = "j_b_loader_03_l",
    [16] = "j_b_loader_04_l",
    [17] = "j_b_loader_05_l",
    [18] = "j_b_loader_06_l",
}

SWEP.Animations = {
    ["fire_left"] = {
        Source = "fire_left",
    },
    ["fire_right"] = {
        Source = "fire_right",
    },
    ["dryfire_left"] = {
        Source = "fire_left_charged",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", v = 0.5,  t = 0/30},
        },
    },
    ["dryfire_right"] = {
        Source = "fire_right_charge",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", v = 0.5,  t = 0/30},
        },
    },
    ["trigger_left"] = {
        Source = "fire_left_charged",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", t = 0/30},
        },
    },
    ["trigger_right"] = {
        Source = "fire_right_charge",
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", t = 0/30},
        },
    },
    ["untrigger_left"] = {
        Source = "fire_left_charged",
		Reverse = true,
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", t = 0/30},
        },
    },
    ["untrigger_right"] = {
        Source = "fire_right_charge",
		Reverse = true,
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_in_trigger_pull.ogg", t = 0/30},
        },
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.9,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_start.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_cylinderopen_01.ogg", t = 2/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderopen_01.ogg", t = 16/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_shake.ogg", t = 21/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_ejectorrod_01.ogg", t = 24/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_ejectorrod_01.ogg", t = 32/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_01.ogg", t = 33/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_02.ogg", t = 33/30},
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_03.ogg", t = 33/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_arm.ogg", t = 45/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_grip.ogg", t = 46/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_speedloader_01.ogg", t = 57/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_end.ogg", t = 78/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg", t = 86/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_arm.ogg", t = 82/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg", t = 90/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_end.ogg", t = 94/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_start.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_cylinderopen_01.ogg", t = 2/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderopen_01.ogg", t = 16/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_shake.ogg", t = 21/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_ejectorrod_01.ogg", t = 24/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_ejectorrod_01.ogg", t = 32/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_01.ogg", t = 33/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_02.ogg", t = 33/30},
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_shelleject_03.ogg", t = 33/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_arm.ogg", t = 45/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_grip.ogg", t = 46/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_speedloader_01.ogg", t = 57/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_end.ogg", t = 78/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg", t = 60/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_arm.ogg", t = 82/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_cylinderclose_01.ogg", t = 65/30},
			{s = path .. "wfoly_pi_cpapa_charge_reload_fast_end.ogg", t = 78/30},
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
            {s = path .. "wfoly_pi_cpapa_first_raise_start.ogg", t = 2/30},
            {s = path .. "wfoly_pi_cpapa_first_raise_cylinderopen_01.ogg", t = 3/30},
			{s = path .. "wfoly_pi_cpapa_first_raise_cylinderclose_01.ogg", t = 13/30},
			{s = path .. "wfoly_pi_cpapa_first_raise_end.ogg", t = 15/30},
        },
    },
    ["draw"] = {
        Source = "draw",
		MinProgress = 0.55,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_charge_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_cpapa_charge_reload_fast_grip.ogg", t = 0/30},
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
            {s = path .. "wfoly_pi_cpapa_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_pi_cpapa_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_cpapa_inspect_03.ogg", t = 62/30},
			{s = path .. "wfoly_pi_cpapa_inspect_04.ogg", t = 114/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2"},
    },
}

-------------------------- ATTACHMENTS

--SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty2

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


SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_trigger_light"] = {
		RPMAdd = 20,
    },
    ["cod2019_trigger_heavy"] = {
		RPMAdd = 20,
    },
	["cod2019_357_barrel_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_shortbarrel_akimbo.mdl",
    },
	["cod2019_357_barrel_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_barrel_v2_akimbo.mdl",
    },
    ["cod2019_357_barrel_long"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_barrel_long_akimbo.mdl",
    },
	["cod2019_357_grip_stock_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_grip_stockl_akimbo.mdl",
    },
    ["cod2019_357_grip_stock"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_grip_stock_akimbo.mdl",
    },
    ["cod2019_griptape_01"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_griptape_02"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_griptape_03"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_pistolgrip_tape_akimbo.mdl",
    },
    ["cod2019_trigger_light"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_trigcust_akimbo.mdl",
    },
    ["cod2019_trigger_heavy"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_trigcust02_akimbo.mdl",
    },
    ["cod2019_trigger_match"] = {
    Model = "models/weapons/cod2019/attachs/weapons/357/attachment_vm_pi_cpapa_trigcust03_akimbo.mdl",
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
            {3,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {1,1},
            {4,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {2,1},
            {5,1},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {6,1},
            {7,1},
        },
    },
	["rail_laser_none"] = {
        Bodygroups = {
            {8,0},
            {9,0},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {8,1},
            {9,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {0,0},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {10,1},
            {11,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	local attached = data.elements
    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end
    model:SetSkin(camo)
end

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
        Bone = "tag_reflex_l",
		DuplicateModels = { { Bone = "tag_reflex" } },
    },
    { -- 5
        Bone = "j_trigger_l",
		DuplicateModels = { { Bone = "j_trigger" } },
    },
    { -- 6
		Bone = "tag_mag_attach_l",
        Category = "cod2019_357_akimbo_mag",
    },
    { -- 7
        Bone = "tag_mag_attach_l",
		DuplicateModels = { { Bone = "tag_mag_attach" } },
    },
    { -- 8
        Bone = "tag_pistolgrip_attach_l",
		DuplicateModels = { { Bone = "tag_pistolgrip_attach" } },
    },
    { -- 9
        Bone = "tag_pistolgrip_attach_l",
		DuplicateModels = { { Bone = "tag_pistolgrip_attach" } },
    },
	
	-- Unofficial
    { -- 10
        Category = "cod2019_357_akimbo_receiver",
        Bone = "tag_pistolgrip_attach_l",
    },
	
	-- Cosmetics
    { -- 11
        Bone = "tag_cosmetic_l",
    },
    { -- 12
        Bone = "tag_cosmetic_l",
    },
    { -- 13
        StickerModel = "models/weapons/cod2019/stickers/akimbo_pist_357_decal_a.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 14
        StickerModel = "models/weapons/cod2019/stickers/akimbo_pist_357_decal_b.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 15
        StickerModel = "models/weapons/cod2019/stickers/akimbo_pist_357_decal_c.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 16
        StickerModel = "models/weapons/cod2019/stickers/akimbo_pist_357_decal_d.mdl",
        Bone = "tag_cosmetic_l",
    },
    { -- 17
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
    },
    { -- 18
        Bone = "tag_cosmetic_l",
		DuplicateModels = { { Bone = "tag_cosmetic" } },
    },
}
