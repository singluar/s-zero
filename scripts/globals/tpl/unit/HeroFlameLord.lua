--- 火焰巨魔
TPL_UNIT.HeroFlameLord = UnitTpl("HeroFlameLord")
    .primary(UNIT_PRIMARY.int)
    .superposition("attack", 1)
    .missilePush(Missile("PriestMissile").homing(true).height(300).speed(600))
    .itemSlot({ TPL_ITEM.IT1 })
    .abilitySlot({ TPL_ABILITY.AB1, TPL_ABILITY.AB2, TPL_ABILITY.AB3, TPL_ABILITY.AB4, TPL_ABILITY.King })