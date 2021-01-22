return { 
	staticenergyrtg = {
		unitname                      = [[staticenergyrtg]],
		name                          = [[Radioisotope Thermoelectric Generator]],
		description                   = [[Small Powerplant (+10e, decays over time) - HAZARDOUS]],
		activateWhenBuilt             = true,
		buildCostMetal                = 100,
		builder                       = false,
		buildingGroundDecalDecaySpeed = 30,
		buildingGroundDecalSizeX      = 9,
		buildingGroundDecalSizeY      = 9,
		buildingGroundDecalType       = [[staticenergyrtg_aoplane.dds]],
		buildPic                      = [[staticenergyrtg.png]],
		category                      = [[UNARMED FLOAT]],
		collisionVolumeOffsets        = [[0 -8 0]],
		collisionVolumeScales         = [[32 83 32]],
		collisionVolumeType           = [[CylY]],
		corpse                        = [[DEAD]],

		customParams                  = {
			removewait     = 1,
			removestop     = 1,
			priority_misc  = 2, -- High
			decay_time     = 2,
			decay_minoutput= 1.2,
			decay_rate     = 0.025,
			modelradius    = [[60]],
			pylonrange = 200,
		},
		energyMake                    = 10,
  		energyUse                     = 0,
		explodeAs                     = [[SMALL_BUILDINGEX]],
		floater                       = true,
		footprintX                    = 6,
		footprintZ                    = 6,
		iconType                      = [[energysingu]],
		idleAutoHeal                  = 5,
		idleTime                      = 1800,
		levelGround                   = false,
		maxDamage                     = 330,
		maxSlope                      = 36,
		minCloakDistance              = 150,
		objectName                    = [[staticenergyrtg.dae]],
		script                        = [[staticenergyrtg.lua]],
		onoffable                     = true,
		selfDestructAs                = [[ATOMIC_BLAST]],
		useBuildingGroundDecal        = true,
		yardMap                       = [[oooo]],
		
		featureDefs                   = {
			
			DEAD  = {
				blocking         = true,
				featureDead      = [[HEAP]],
				footprintX       = 6,
				footprintZ       = 6,
				object           = [[staticenergyrtg_wreck.dae]],
			},

			HEAP  = {
				blocking         = false,
				footprintX       = 2,
				footprintZ       = 2,
				object           = [[debris2x2b.s3o]],
			},

		},
	}
}
