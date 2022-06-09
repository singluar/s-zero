--- 蝎子
TPL_UNIT.HeroPitLord = UnitTpl("HeroPitLord")
    .superposition("attack", 0)
    .itemSlot({ TPL_ITEM.IT1, TPL_ITEM.IT2 })
    .hp(10000)
    .hpRegen(100)
    .mp(80)
    .mpRegen(10)
    .abilitySlot({ TPL_ABILITY.AB4, TPL_ABILITY.King })
    .primary(UNIT_PRIMARY.int)
    .reborn(0.5)
    .move(0)
    .attackSpaceBase(1).attack(30).attackRange(1000)
    .lightningPush(Lightning(LIGHTNING_TYPE.suckBlue))
    .enchantWeapon("lightning", "+=1")
    .punish(1000)