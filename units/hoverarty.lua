unitDef = {
	unitname            = [[hoverarty]],
	name                = [[Lance]],
	description         = [[Anti-Heavy Artillery Hovercraft]],
	acceleration        = 0.016,
	activateWhenBuilt   = true,
	brakeRate           = 0.148,
	buildCostMetal      = 1000,
	builder             = false,
	buildPic            = [[hoverarty.png]],
	canGuard            = true,
	canMove             = true,
	canPatrol           = true,
	category            = [[HOVER]],
	collisionVolumeOffsets = [[0 -2 0]],
	collisionVolumeScales  = [[48 58 48]],
	collisionVolumeType    = [[cylY]], 
	corpse              = [[DEAD]],

	customParams        = {
		dontfireatradarcommand = '0',
		aimposoffset   = [[0 15 0]],
	},

	explodeAs           = [[MEDIUM_BUILDINGEX]],
	footprintX          = 4,
	footprintZ          = 4,
	iconType            = [[mobiletachyon]],
	idleAutoHeal        = 5,
	idleTime            = 1800,
	leaveTracks         = true,
	losEmitHeight       = 40,
	maxDamage           = 1000,
	maxSlope            = 18,
	maxVelocity         = 2.2,
	maxWaterDepth       = 22,
	movementClass       = [[HOVER4]],
	moveState           = 0,
	noAutoFire          = false,
	noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP]],
	objectName          = [[penetrator_lordmuffe.s3o]],
	script	          = [[hoverarty.lua]],
	selfDestructAs      = [[MEDIUM_BUILDINGEX]],
  
	sfxtypes            = {

		explosiongenerators = {
			[[custom:HEAVYHOVERS_ON_GROUND]],
		},

	},
  
	sightDistance       = 660,
	sonarDistance       = 660,
	turninplace         = 0,
	turnRate            = 320,
	workerTime          = 0,

	weapons             = {
		{
			def                = [[ATA]],
			badTargetCategory  = [[FIXEDWING GUNSHIP]],
			onlyTargetCategory = [[SWIM LAND SHIP SINK TURRET FLOAT GUNSHIP FIXEDWING HOVER]],
		},
		{
			def                = [[TRACKER]],
			badTargetCategory  = [[FIXEDWING GUNSHIP]],
			onlyTargetCategory = [[SWIM LAND SHIP SINK TURRET FLOAT GUNSHIP FIXEDWING HOVER]],
		},
	},
	weaponDefs          = {

		TRACKER = {
			name                    = [[Tracking Beam]],
			areaOfEffect            = 20,
			collideEnemy = false,
			avoidFeature = false,
			collideFeature = false,
			beamTime                = 3/30,
			coreThickness           = 0.5,
			craterBoost             = 0,
			craterMult              = 0,

			customParams            = {
				--burst = Shared.BURST_RELIABLE,
				stats_hide_damage = 1, -- continuous laser
				stats_hide_reload = 1,
				light_color = [[1.25 0 0]],
				light_radius = 120,
				norealdamage = 1,
			},
			damage                  = {
				default = 0,
			},

			--explosionGenerator      = [[custom:flash1red]],
			fireTolerance           = 8192, -- 45 degrees
			impactOnly              = true,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			interceptedByShieldType = 1,
			largeBeamLaser          = true,
			laserFlareSize          = 2,
			leadLimit               = 18,
			minIntensity            = 0.01,
			noSelfDamage            = true,
			range                   = 1020,
			reloadtime              = 2/30,
			sweapfire = false,
			rgbColor                = [[0.7 0 0]],
			soundStart              = [[weapon/laser/tracker]],
			soundStartVolume        = 15,
			texture1                = [[largelaser]],
			texture2                = [[flare]],
			texture3                = [[flare]],
			texture4                = [[smallflare]],
			thickness               = 2,
			tolerance               = 10000,
			turret                  = true,
			weaponType              = [[BeamLaser]],
			weaponVelocity          = 1500,
		},

		ATA = {
			name                    = [[Tachyon Accelerator]],
			areaOfEffect            = 20,
			avoidFeature = false,
			avoidGround  = false,
			beamTime                = 1,
			coreThickness           = 0.5,
			craterBoost             = 0,
			craterMult              = 0,
			customParams            = {
				burst = Shared.BURST_RELIABLE,

				light_color = [[1.25 0.8 1.75]],
				light_radius = 320,
				reveal_unit = 10,
			},
			damage                  = {
				default = 3000.1,
			},
			explosionGenerator      = [[custom:ataalaser]],
			fireTolerance           = 8192, -- 45 degrees
			impactOnly              = true,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			interceptedByShieldType = 1,
			largeBeamLaser          = true,
			laserFlareSize          = 10,
			leadLimit               = 18,
			minIntensity            = 1,
			noSelfDamage            = true,
			range                   = 1020,
			reloadtime              = 20,
			rgbColor                = [[0.25 0 1]],
			soundStart              = [[weapon/laser/heavy_laser6]],
			soundStartVolume        = 15,
			texture1                = [[largelaser]],
			texture2                = [[flare]],
			texture3                = [[flare]],
			texture4                = [[smallflare]],
			thickness               = 16.9373846859543,
			tolerance               = 10000,
			turret                  = true,
			weaponType              = [[BeamLaser]],
			weaponVelocity          = 1500,
		},
	},
	featureDefs         = {
		DEAD  = {
			blocking         = true,
			collisionVolumeScales  = [[40 40 60]],
			collisionVolumeType    = [[CylZ]],
			featureDead      = [[HEAP]],
			footprintX       = 3,
			footprintZ       = 3,
			object           = [[Lordmuffe_Pene_dead.dae]],
		},
		HEAP  = {
			blocking         = false,
			footprintX       = 3,
			footprintZ       = 3,
			object           = [[debris3x3b.s3o]],
		},
	},
}

return { hoverarty = unitDef }
