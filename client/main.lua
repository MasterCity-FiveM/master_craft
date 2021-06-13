ESX                           = nil
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local UnderCraft = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

-- Create Blips
Citizen.CreateThread(function()
	for i=1, #Config.Zones, 1 do
		if Config.Zones[i].name ~= nil then
			local blip = AddBlipForCoord(Config.Zones[i].x, Config.Zones[i].y, Config.Zones[i].z)
			SetBlipSprite (blip, Config.Zones[i].Icon)
			SetBlipScale  (blip, Config.Zones[i].Scale)
			SetBlipDisplay(blip, Config.Zones[i].Display)
			SetBlipColour (blip, Config.Zones[i].color)
			SetBlipAsShortRange(blip, true)

			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(Config.Zones[i].name)
			EndTextCommandSetBlipName(blip)
		end
	end
end)

local currentZone = nil
-- Enter / Exit marker events
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local coords      = GetEntityCoords(GetPlayerPed(-1))
		local isInMarker  = false
		local letSleep = true
		currentZone = nil
		
		for k,v in pairs(Config.Zones) do
			local distance = GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true)
			if distance < Config.DrawDistance then	
				DrawMarker(Config.Type, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Size.x, Config.Size.y, Config.Size.z, Config.Color.r, Config.Color.g, Config.Color.b, 100, false, true, 2, false, false, false, false)
				letSleep = false
			end
			
			if(distance < Config.Size.x) then
				isInMarker  = true
				ShopItems   = v.Items
				currentZone = k
				LastZone    = k
			end
		end
		
		if isInMarker and not HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = true
			TriggerEvent('master_craft:hasEnteredMarker', currentZone)
		end
		
		if not isInMarker and HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = false
			TriggerEvent('master_craft:hasExitedMarker', LastZone)
		end
		
		if letSleep then
			Citizen.Wait(2000)
		end
	end
end)

AddEventHandler('master_craft:hasEnteredMarker', function(zone)
	CurrentAction     = 'craft_menu'
	CurrentActionMsg  = 'جهت دسترسی به منو E بزنید.'
	CurrentActionData = {zone = zone}
	
	exports.pNotify:SendNotification({text = CurrentActionMsg, type = "info", timeout = 3000})
end)

AddEventHandler('master_craft:hasExitedMarker', function(zone)
	CurrentAction = nil
	ESX.UI.Menu.CloseAll()
end)

RegisterNetEvent('master_keymap:e')
AddEventHandler('master_keymap:e', function() 
	if CurrentAction ~= nil then
		TriggerEvent("masterking32:closeAllUI")
		Citizen.Wait(100)
		OpenCraftMenu(CurrentActionData.zone)
	end
end)

function OpenCraftMenu(zone)
	SendNUIMessage({
		action		= "show",
		items = Config.Zones[zone].Items
	})
	
	ESX.SetTimeout(200, function()
		SetNuiFocus(true, true)
	end)
end

RegisterNetEvent('masterking32:closeAllUI')
AddEventHandler('masterking32:closeAllUI', function() 
	closeGui()
end)

RegisterNetEvent('master_craft:stop_craft')
AddEventHandler('master_craft:stop_craft', function() 
	UnderCraft = false
end)

RegisterNetEvent('master_craft:start_craft')
AddEventHandler('master_craft:start_craft', function() 
	UnderCraft = true
	TriggerEvent('dpemotes:StartEmote', 'parkingmeter')
	Citizen.CreateThread(function()
		while UnderCraft do
			Citizen.Wait(0)
			DisableAllControlActions(0)
		end
		TriggerEvent('dpemotes:cancelEmote')
	end)
	
end)

function closeGui()
  SetNuiFocus(false, false)
  SendNUIMessage({action = "hide"})
end

RegisterNUICallback("closeUI", function()
	SendNUIMessage({
		action = "hide"
	})
	SetNuiFocus(false, false)
end)

RegisterNUICallback("createItem", function(data)
	TriggerServerEvent("master_craft:createItem", data.item, currentZone)
end)