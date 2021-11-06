TPL_ABILITY = {

    AB1 = AbilityTpl()
        .name("技能1")
        .targetType(ABILITY_TARGET_TYPE.TAG_R)
        .icon("AB1")
        .coolDownAdv(2.5, -0.05)
        .hpCostAdv(10, 5)
        .mpCostAdv(1, 7)
        .castChantAdv(2, -0.1)
        .castKeepAdv(10, 0.5)
        .castRadiusAdv(500, 50)
        .levelMax(9)
        .description({
        "基础消耗：" .. colour.purple("{this.mpCost()}"),
        "对目标造成伤害：" .. colour.gold("{math.floor(this.bindUnit().attack()*100)}") .. "(攻击x100)"
    })
        .castTargetAllow(function(this, targetUnit)
        return targetUnit ~= nil and targetUnit.isEnemy(this.bindUnit().owner())
    end)
        .onEffect(
        function(evtData)
            --print_r(evtData)
            --print_r(evtData.triggerUnit)
            --print_r(evtData.triggerAbility)
            --evtData.triggerUnit.effect("slash/Red_swing", 0)
            local ftp = 1
            time.setInterval(ftp, function(curTimer)
                if (not evtData.triggerUnit.isAbilityKeepCasting()) then
                    curTimer.destroy()
                    return
                end
                evtData.triggerAbility.exp("+=10")
                evtData.triggerUnit.abilityPoint("+=1")
                effect.xy("slash/Red_swing", evtData.targetX, evtData.targetY, evtData.targetZ, 0)
            end)
        end),

    AB2 = AbilityTpl()
        .name("主动技能测试")
        .targetType(ABILITY_TARGET_TYPE.TAG_U)
        .icon("AB1")
        .coolDownAdv(2.5, -0.05)
        .hpCostAdv(10, 5)
        .mpCostAdv(1, 7)
        .levelMax(9)
        .castTargetAllow(function(this, targetUnit)
        return targetUnit ~= nil and targetUnit.isAlive() and targetUnit.isEnemy(this.bindUnit().owner())
    end)
        .onEffect(
        function(evtData)
            --ability.unArm(evtData.targetUnit, 3, "SilenceTarget", "weapon")
            ability.silent(evtData.targetUnit, 3, "SilenceTarget", "overhead")
        end),

    AB3 = AbilityTpl()
        .name("唯我独尊")
        .targetType(ABILITY_TARGET_TYPE.PAS)
        .icon("AB2")
        .description({ "强击单人特效: +{50+this.level()*100}攻击" })
        .levelMax(5)
        .levelUpNeedPoint(101)
        .onGet(function(evtData)
        evtData.triggerUnit.attack("+=" .. 100 * evtData.triggerAbility.level())
    end)
        .onLose(function(evtData) evtData.triggerUnit.attack("-=" .. 100 * evtData.triggerAbility.level()) end)
        .onLevelChange(
        function(evtData)
            if (evtData.value > 0) then
                evtData.triggerUnitt.attack("+=" .. 100 * evtData.value)
            elseif (evtData.value < 0) then
                evtData.triggerUnitt.attack("-=" .. 100 * math.abs(evtData.value))
            end
        end),
}