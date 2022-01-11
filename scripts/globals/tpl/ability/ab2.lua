TPL_ABILITY. AB2 = AbilityTpl()
    .name("沉默一波")
    .targetType(ABILITY_TARGET_TYPE.TAG_U)
    .icon("AB2")
    .coolDownAdv(1, 0)
    .hpCostAdv(10, 5)
    .mpCostAdv(1, 7)
    .levelMax(9)
    .castTargetFilter(function(this, targetUnit)
    return targetUnit ~= nil and targetUnit.isAlive() and targetUnit.isEnemy(this.bindUnit().owner())
end)
    .onEffective(
    function(evtData)
        ability.silent(evtData.targetUnit, 3, "SilenceTarget", "overhead")
        ability.unArm(evtData.targetUnit, 3, "SilenceTarget", "weapon")
        ability.crackFly({
            sourceUnit = evtData.triggerUnit,
            targetUnit = evtData.targetUnit,
            duration = 1,
            speed = 500,
            distance = 200,
            height = 1000,
            flyModel = "WarStompCaster",
            onMove = function()
                print("move")
            end,
            onEnd = function()
                print("end")
            end,
        })
    end)
