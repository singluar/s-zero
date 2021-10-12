-- 配置游戏 - 物品栏热键
-- 这里使用魔兽的 78 45 12
Game().itemHotkey({ "Numpad7", "Numpad8", "Numpad4", "Numpad5", "Numpad1", "Numpad2" })

Game().itemExp(99, 100, 1.00, 10000)

-- 配置游戏 - 玩家仓库
Game().warehouseSlot(18)

-- 定义物品描述体
-- [基础信息]
---@param this Item
Game().defineDescription("itemBase", function(this, _)
    local desc = {}
    if (this.level() > 0) then
        table.insert(desc, this.name() .. ' - 等级 ' .. colour.gold(whichLevel) .. '/' .. colour.gold(this.levelMax()))
    else
        table.insert(desc, this.name())
    end
    return desc
end)