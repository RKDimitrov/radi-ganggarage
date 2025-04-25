Loc = {}

--[[	LIST OF POSSIBLE VEHICLE MODIFIERS   ]]--
-- Using these will change how each vehicle spawns
-- This can be used for making sure the vehicles comes out exactly how you want it to

-- CustomName = "Police Car", this will show a custom override name for your vehicles so you don't need to add them to your vehicles.lua
-- rank = { 2, 4 }, -- This specifes which grades can see it, and only these grades
-- grade = 4, -- This specifies the lowest grade and above that can see the vehicle
-- colors = { 136, 137 }, -- This is the colour index id of the vehicle, Primary and Secondary in that order
-- bulletproof = true, -- This determines if the tyres are bullet proof (don't ask me why, I was asked to add this)
-- livery = 1, -- This sets the livery id of the vehicle, (most mod menus would number them or have them in number order) 0 = stock
-- extras = { 1, 5 }, -- This enables the selected extras on the vehicle
-- performance = "max", this sets the stats to max if available
-- performance = { 2, 3, 3, 2, 4, true }, -- This allows more specific settings for each upgrade level, in order: engine, brakes, suspension, transmission, armour, turbo
-- trunkItems = { }, -- Use this to add items to the trunk of the vehicle when it is spawned

-- ANY VEHICLE, BOATS, POLICE CARS, EMS VEHICLES OR EVEN PLANES CAN BE ADDED.

Config = {
	Debug = false,  -- Enable to use debug features
	Lan = "en",

	Core = "qb-core",
	Menu = "qb",
	Notify = "qb",

	Fuel = "LegacyFuel", -- Set this to your fuel script folder

	CarDespawn = true, -- Sends the vehicle to hell (removal animation)

	DistCheck = false, -- Require the vehicle to be near by to remove it

	Locations = {
		{ 	zoneEnable = true,
			gang = "ceco",
			garage = {
				spawn = vector4(-7.8, -1110.99, 28.63, 162.53), --kolata 
				out = vector4(-3.56, -1109.48, 28.87, 155.73), --mashinkata
				list = { 
					["baller6"] = {
						CustomName = "Джипа",
						performance = { 4, 4, 4, 4, 4, true },
						colors = { 	2, 3 }
					},
					["insurgent2"] = {
						CustomName = "Бусче",
						performance = { 4, 4, 4, 4, 4, true },
						colors = { 	2, 3 }
					},
				},
			},
		},
		{ 	zoneEnable = true,
			gang = "ceco",
			garage = {
				spawn = vector4(4.68, -1098.19, 38.15, 227.75), --kolata 
				out = vector4(9.45, -1111.95, 38.15, 344.1), --mashinkata
				list = { 
					["volatus"] = {
						CustomName = "Хеликоптер",
					},
				},
			},
		},
		-- { 	zoneEnable = true,
		-- 	gang = "mechanic",
		-- 	garage = {
		-- 		spawn = vec4(-179.34, -1285.27, 30.83, 89.24),  -- Where the car will spawn
		-- 		out = vec4(-177.1, -1282.25, 31.3, 179.01),	-- Where the parking stand is
		-- 		list = {
		-- 			["cheburek"] = {
		-- 				colors = { 136, 137 },
		-- 				grade = 4,
		-- 				livery = 5,
		-- 				bulletproof = true,
		-- 				extras = { 1, 4 },
		-- 			},
		-- 			["burrito3"] = { },
		-- 		},
		-- 	},
		-- },
		-- { 	zoneEnable = true,
		-- 	gang = "police",
		-- 	garage = {
		-- 		spawn = vec4(435.41, -975.93, 25.31, 90.86),
		-- 		out = vec4(441.39, -974.78, 25.7, 178.49),
		-- 		list = {
		-- 			["police"] = {
		-- 				CustomName = "Police Car",
		-- 				livery = 5,
		-- 				extras = { 1, 2 },
		-- 				performance = "max",
		-- 				trunkItems = {
		-- 					{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
		-- 					{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
		-- 					{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
		-- 				},
		-- 			},
		-- 			["fbi"] = {
		-- 				rank = { 4 },
		-- 				performance = { 2, 3, 3, 2, 4, true },
		-- 			},
		-- 		},
		-- 	},
		-- },
		{ 	zoneEnable = true,
			gang = "dulano",
			garage = {
				spawn = vector4(-96.75, 825.2, 235.73, 101.69),
				out = vector4(-97.66, 830.07, 235.73, 189.37),
				list = {
					["m3g80"] = {
						CustomName = "G80"
					},
				},
			},
		},
		-- { 	zoneEnable = true,
		-- 	gang = "westside",
		-- 	garage = {
		-- 		spawn = vector4(-811.24, 187.11, 72.48, 109.84),
		-- 		out = vector4(-812.55, 190.25, 72.48, 204.33) ,
		-- 		list = {
		-- 			["m5e60"] = {
		-- 				CustomName = "E60"
		-- 			},
		-- 		},
		-- 	},
		-- },
	},
}
