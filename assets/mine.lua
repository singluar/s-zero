_assets_selection("Common")
_assets_font("字魂59号-创粗黑")

_assets_sound("metal_bash_heavy", nil, "vwp")
_assets_sound("voice/clickhero/level_up", "lv", "v3d")
_assets_sound("voice/action/打鼓", "drum", "v3d")
_assets_sound("bgm/dnf/Dungeon and Fighter - GBL女神殿 - goddess temple", "gbl", "bgm")

_assets_model("buff_ApaceGrowth")
_assets_model("slash_Red_swing")
_assets_model("buff_Echo")

_assets_ui("singluar_echo")
_assets_ui("singluar_chat")
_assets_ui("singluar_menu")
_assets_ui("singluar_minimap")
_assets_ui("singluar_controller")
_assets_ui("singluar_buff")
--_assets_ui("singluar_item")

_assets_icon("ability\\red\\DeathKnightSpellDeflection", "AB1")

-- 绵羊
_assets_model(":units\\critters\\Sheep\\Sheep", "Sheep", {
    Art = ":ReplaceableTextures\\CommandButtons\\BTNSheep.blp",
    unitSound = "Sheep", scale = 1.20,
})

-- 步兵
_assets_model(":units\\human\\Footman\\Footman", "Footman", {
    Art = ":ReplaceableTextures\\CommandButtons\\BTNFootman.blp",
    unitSound = "Footman", scale = 1.10, backSw1 = 0.5, dmgpt1 = 0.5,
})

-- 骑士
_assets_model(":units\\human\\Knight\\Knight", "Knight", {
    Art = ":ReplaceableTextures\\CommandButtons\\BTNKnight.blp",
    unitSound = "Knight", scale = 1.10, backSw1 = 0.44, dmgpt1 = 0.66,
})
