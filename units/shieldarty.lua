return { 
	shieldarty = {
		unitname               = [[shieldarty]],
		name                   = [[Racketeer]],
		description            = [[Disarming Artillery]],
		acceleration           = 0.75,
		brakeRate              = 4.5,
		buildCostMetal         = 550,
		buildPic               = [[SHIELDARTY.png]],
		canGuard               = true,
		canMove                = true,
		canPatrol              = true,
		category               = [[LAND]],
		corpse                 = [[DEAD]],
		activateWhenBuilt	   = true,
		customParams           = {},
		explodeAs              = [[BIG_UNITEX]],
		footprintX             = 2,
		footprintZ             = 2,
		iconType               = [[walkerlrarty]],
		idleAutoHeal           = 5,
		idleTime               = 1800,
		leaveTracks            = true,
		maxDamage              = 780,
		maxSlope               = 36,
		maxVelocity            = 1.7,
		maxWaterDepth          = 22,
		minCloakDistance       = 75,
		movementClass          = [[KBOT2]],
		noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP UNARMED]],
		objectName             = [[dominator.s3o]],
		script                 = [[shieldarty.lua]],
		selfDestructAs         = [[BIG_UNITEX]],
		sfxtypes               = {
			explosiongenerators = {
				[[custom:STORMMUZZLE]],
				[[custom:STORMBACK]],
			},
		},
		sightDistance          = 325,
		trackOffset            = 0,
		trackStrength          = 8,
		trackStretch           = 1,
		trackType              = [[ComTrack]],
		trackWidth             = 22,
		turnRate               = 2160,
		upright                = true,
		weapons                = {
			{
				def                = [[EMP_ROCKET]],
				onlyTargetCategory = [[FIXEDWING GUNSHIP SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
			},
			{
				def                = [[SHIELD]],
			},
		},

		weaponDefs             = {
			EMP_ROCKET = {
				name                    = [[Disarm Cruise Missile]],
				areaOfEffect            = 24,
				cegTag                  = [[disarmtrail]],
				collideFriendly         = false,
				craterBoost             = 0,
				craterMult              = 0,
				avoidground				= false,
				customParams        = {
					burst = Shared.BURST_RELIABLE,
					disarmDamageMult = 1,
					disarmDamageOnly = 1,
					disarmTimer      = 6, -- seconds

					light_camera_height = 1500,
					light_color = [[1 1 1]],
					cruisealt = 400,
					cruisedist = 200,
					cruisetracking = true,
					reveal_unit = 10,
				},
				damage                  = {
					default        = 2500,
				},
				edgeEffectiveness       = 0.4,
				explosionGenerator      = [[custom:WHITE_LIGHTNING_BOMB]],
				fireStarter             = 0,
				flightTime              = 6,
				impactOnly              = true,
				impulseBoost            = 0,
				impulseFactor           = 0,
				interceptedByShieldType = 2,
				model                   = [[wep_merl.s3o]],
				noSelfDamage            = true,
				range                   = 940,
				reloadtime              = 10,
				smokeTrail              = false,
				soundHit                = [[weapon/missile/vlaunch_emp_hit]],
				soundHitVolume          = 9.0,
				soundStart              = [[weapon/missile/missile_launch_high]],
				soundStartVolume        = 11.0,
				startvelocity           = 250,
				--texture1                = [[spark]], --flare
				texture3                = [[spark]], --flame
				tolerance               = 4000,
				tracks                  = true,
				turnRate                = 38000,
				weaponAcceleration      = 275,
				weaponType              = [[StarburstLauncher]],
				weaponVelocity          = 800,
			},
			SHIELD = {
				name                    = [[Energy Shield]],	
				damage                  = {	
					default = 10,	
				},	
				exteriorShield          = true,	
				shieldAlpha             = 0.2,	
				shieldBadColor          = [[1 0.1 0.1 1]],	
				shieldGoodColor         = [[0.1 0.1 1 1]],	
				shieldInterceptType     = 3,	
				shieldPower             = 600,	
				shieldPowerRegen        = 30,	
				shieldPowerRegenEnergy  = 3,	
				shieldRadius            = 120,	
				shieldRepulser          = false,	
				shieldStartingPower     = 600,	
				smartShield             = true,	
				visibleShield           = false,	
				visibleShieldRepulse    = false,	
				weaponType              = [[Shield]],	
			},
		},

		featureDefs            = {

			DEAD  = {
				blocking         = true,
				featureDead      = [[HEAP]],
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[dominator_dead.s3o]],
			},

			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[debris2x2c.s3o]],
			},

		},

	}
}
