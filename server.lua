local QBCore = exports[Config.Core]:GetCoreObject()

local Locations = Config.Locations

QBCore.Functions.CreateCallback('radi-ganggarage:server:syncLocations', function(source, cb) cb(Locations) end)

RegisterNetEvent('radi-ganggarage:server:syncAddLocations', function(data)
	local dupe = false
	for _, v in pairs(Locations) do	for k in pairs(v) do if k == "garage" then if v.garage.out == data.garage.out then dupe = true end end end end
	if dupe == true then return
	else
		if type(data.garage.list[1]) == "string" then local list = {} for k, v in pairs(data.garage.list) do list[v] = {} end data.garage.list = list end
		Locations[#Locations+1] = { zoneEnable = true, gang = data.gang, garage = data.garage, }
		if Config.Debug then
			local coords = { string.format("%.2f", data.garage.out.x), string.format("%.2f", data.garage.out.y), string.format("%.2f", data.garage.out.z), (string.format("%.2f", data.garage.out.w or 0.0)) }
		end
		TriggerClientEvent("radi-ganggarage:client:syncLocations", -1, Locations)
	end
end)

RegisterNetEvent("radi-ganggarage:server:syncLocations", function() TriggerClientEvent('radi-ganggarage:client:syncLocations', -1, Locations) end)

RegisterNetEvent("radi-ganggarage:server:addTrunkItems", function(plate, items) exports["qb-inventory"]:addTrunkItems(plate, items) end)