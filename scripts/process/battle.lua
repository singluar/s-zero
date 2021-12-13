local process = Process("battle")

process.onSetup(function(this)
    local u1 = TPL_UNIT.HeroFlameLord.create(Player(1), 500, -500, 66.6)
                       .level(1)
                       .reborn(0.5)
                       .hp(1000).hpRegen(25)
                       .mp(100)--.mpRegen(-1)
                       .move(522)
                       .attackSpaceBase(1).attack(91).attackRange(1000).attackSpeed(100)
                       .missilePush(Missile("PriestMissile").homing(true).height(300).speed(500))
                       .crit(10).odds("crit", 10)
                       .hpSuck("+=10")
                       .mpSuck("+=10")
                       .enchantWeapon("grass", "+=1")
                       .enchantWeapon("fire", "+=1")
                       .punish(2000)
                       .weight("+=10")

    u1.onDamage(function(evtData)
        u1.exp("+=10")
    end)
    this.stage("u1", u1)

    local u2 = TPL_UNIT.BloodBeetle.create(Player(2), -500, 500, 0)
                       .reborn(0.5)
                       .hp(10000).hpRegen(100)
                       .mp(1000).mpRegen(10)
                       .move(150)
                       .attackSpaceBase(1).attack(91).attackRange(1000).attackSpeed(100)
                       .lightningPush(Lightning(LIGHTING_TYPE.thunderRed).focus(3))
                       .enchantWeapon("lightning", "+=1")
                       .punish(1000)
    this.stage("u2", u2)

end)

process.onDestroy(function(this)
    this.stage("u1").destroy()
    this.stage("u2").destroy()
end)