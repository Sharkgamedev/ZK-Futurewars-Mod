local name = "commweapon_minefield"
weaponDef = {
	name                    = [[mine fragment]],
	accuracy                = 400,
	areaOfEffect            = 30,
	avoidFeature            = false,
	craterBoost             = 0,
	craterMult              = 0,
	--cegTag                  = [[flamer]],
	customParams              = {
		--lups_heat_fx = [[firewalker]],
		damage_vs_shield = [[220]],
		damage_vs_feature = [[220]],
		spawns_name = "wolverine_mine",
		spawns_expire = 120,
		spawn_blocked_by_shield = 1,
		commsubmunition = 1,
		--lups_heat_fx = [[firewalker]],
		light_color = [[0.25 0.13 0.05]],
		light_radius = 500,
		shield_damage = 220,
		nofriendlyfire = "needs hax",
	},
	damage                  = {
		default = 0,
	},
	explosionGenerator      = [[custom:dirt]],
	impulseBoost            = 0,
	impulseFactor           = 0.4,
	interceptedByShieldType = 1,
	model                   = [[clawshell.s3o]],
	myGravity               = 0.8,
	noSelfDamage            = true,
	range                   = 750,
	reloadtime              = 5.5,
	soundHit                = [[weapon/cannon/badger_hit]],
	soundStart              = [[weapon/cannon/badger_fire]],
	soundHitVolume          = 8,
	soundStartVolume        = 12,
	turret                  = true,
	weaponType              = [[Cannon]],
	weaponVelocity          = 500,
}

return name, weaponDef
-- NOTE: This weapon is a SECONDARY STAGE PROJECTILE. It is not intended for use as an actual weapon!