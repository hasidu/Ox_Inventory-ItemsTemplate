--[[ --------------------------------------------------------------------------------
                                        <! USABLE ITEMS !>
					Add to ox_inventory/modules/items/client.lua
					Add these near the bottom of the list, but above the 
					exports for items & itemlist
-------------------------------------------------------------------------------- ]]--

Item('cigarette', function(data, slot) -- Will lightly damage heath on use
	local maxHealth = GetEntityMaxHealth(cache.ped)
	local health = GetEntityHealth(cache.ped)
	ox_inventory:useItem(data, function(data)
		if data then
			SetEntityHealth(cache.ped, math.min(maxHealth, math.floor(health - maxHealth / 128)))
			lib.notify({ description = 'You feel better already' })
		end
	end)
end)

Item('vape', function(data, slot) -- Will lightly damage heath on use
	local maxHealth = GetEntityMaxHealth(cache.ped)
	local health = GetEntityHealth(cache.ped)
	ox_inventory:useItem(data, function(data)
		if data then
			SetEntityHealth(cache.ped, math.min(maxHealth, math.floor(health - maxHealth / 128)))
			lib.notify({ description = 'You feel better already' })
		end
	end)
end)

Item('bodyarmor_1', function(data, slot) -- Adds 30% of body armor
	if GetPedArmour(cache.ped) < 100 then
		ox_inventory:useItem(data, function(data)
			if data then
				SetPlayerMaxArmour(PlayerData.id, 100)
				SetPedArmour(cache.ped, 30)
			end
		end)
	end
end)

Item('bodyarmor_2', function(data, slot) -- Adds 60% of body armor
	if GetPedArmour(cache.ped) < 100 then
		ox_inventory:useItem(data, function(data)
			if data then
				SetPlayerMaxArmour(PlayerData.id, 100)
				SetPedArmour(cache.ped, 60)
			end
		end)
	end
end)

Item('bodyarmor_3', function(data, slot) -- Adds 100% of body armor
	if GetPedArmour(cache.ped) < 100 then
		ox_inventory:useItem(data, function(data)
			if data then
				SetPlayerMaxArmour(PlayerData.id, 100)
				SetPedArmour(cache.ped, 100)
			end
		end)
	end
end)

Item('weed_sativa', function(data, slot) -- causes drug effect
	ox_inventory:useItem(data, function(data)
		if data then
			SetTimecycleModifier("spectator6")
			AnimpostfxPlay("DrugsMichaelAliensFight", 10000001, true)
    		ShakeGameplayCam("DRUNK_SHAKE", 0.6)

			Citizen.Wait(90000) -- 60 seconds

			AnimpostfxStopAll()
    		ShakeGameplayCam("DRUNK_SHAKE", 0.0)
			SetTimecycleModifierStrength(0.0)
		end
	end)
end)

Item('weed_indica', function(data, slot) -- causes drug effect
	ox_inventory:useItem(data, function(data)
		if data then
			SetTimecycleModifier("spectator2")
			AnimpostfxPlay("HeistCelebPass", 10000001, true)
    		ShakeGameplayCam("DRUNK_SHAKE", 0.6)

			Citizen.Wait(90000) -- 60 seconds

			AnimpostfxStopAll()
    		ShakeGameplayCam("DRUNK_SHAKE", 0.0)
			SetTimecycleModifierStrength(0.0)
		end
	end)
end)

Item('weed_hybrid', function(data, slot) -- causes drug effect 
	ox_inventory:useItem(data, function(data)
		if data then
			SetTimecycleModifier("spectator2")
			AnimpostfxPlay("DrugsTrevorClownsFight", 10000001, true)
    		ShakeGameplayCam("DRUNK_SHAKE", 0.6)

			Citizen.Wait(90000) -- 60 seconds

			AnimpostfxStopAll()
    		ShakeGameplayCam("DRUNK_SHAKE", 0.0)
			SetTimecycleModifierStrength(0.0)
		end
	end)
end)