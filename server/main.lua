ESX             = nil
local Craft_Items = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('master_craft:OpenUI')
AddEventHandler('master_craft:OpenUI', function()
	ESX.RunCustomFunction("anti_ddos", source, 'master_craft:OpenUI', {})
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer then
		ESX.TriggerServerCallback('master_gang:GetTopGang', _source, function(topGang)
			if topGang ~= nil then
				ESX.TriggerServerCallback("master_gang:GetGang", _source, function(data)
					if data == false then
						TriggerClientEvent("pNotify:SendNotification", _source, { text = "شما گنگ ندارید!", type = "error", timeout = 10000, layout = "bottomCenter"})
					elseif data.gang == topGang then
						TriggerClientEvent("master_craft:OpenUI", _source)
					else
						TriggerClientEvent("pNotify:SendNotification", _source, { text = "این بخش فقط در دسترس گنگی می باشد که بیشترین مناطق تحت پوشش را دارد!", type = "error", timeout = 10000, layout = "bottomCenter"})
					end
				end, _source)
			else
				TriggerClientEvent("pNotify:SendNotification", _source, { text = "این بخش فقط در دسترس گنگی می باشد که بیشترین مناطق تحت پوشش را دارد!", type = "error", timeout = 10000, layout = "bottomCenter"})
			end
		end)
	end
end)

RegisterNetEvent('master_craft:createItem')
AddEventHandler('master_craft:createItem', function(Item, Zone)
	ESX.RunCustomFunction("anti_ddos", source, 'master_craft:createItem', {Item = Item, Zone = Zone})
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	--DDOS!!!
	
	if Zone == nil or Zone == nil then
		return
	end
	
	if _source == nil then
		return
	end
	
	local xPlayer = ESX.GetPlayerFromId(_source)
	if not xPlayer then
		return
	end
	
	--CHECK GANG is TOP
	
	if Config.Zones[Zone] == nil or Config.Zones[Zone].Items[Item] == nil then
		return
	end
	
	local ItemData = Config.Zones[Zone].Items[Item]
	
	local reciveData = false
	local allowtoGO = false
	if Config.Zones[Zone].IsForTopGang then
		ESX.TriggerServerCallback('master_gang:GetTopGang', _source, function(topGang)
			if topGang ~= nil then
				ESX.TriggerServerCallback("master_gang:GetGang", _source, function(data)
					if data ~= false and data.gang ~= nil and data.gang == topGang then
						allowtoGO = true
					end
					reciveData = true
				end, _source)
			else
				reciveData = true
			end
		end)
	else
		reciveData = true
		allowtoGO = true
	end
	
	while not reciveData do
		Citizen.Wait(1)
	end
	
	if not allowtoGO then
		return
	end
	
	if ItemData.price > 0 and ItemData.price > xPlayer.getMoney() then
		TriggerClientEvent("pNotify:SendNotification", _source, { text = "شما پول کافی ندارید.", type = "error", timeout = 5000, layout = "bottomCenter"})
		return
	end
	
	for k,v in ipairs(ItemData.requirements) do
		local items = xPlayer.getInventoryItem(v.item)

		if items == nil then
			TriggerClientEvent("pNotify:SendNotification", _source, { text = "شما (" .. v.label .. ") به تعداد کافی ندارید.", type = "error", timeout = 5000, layout = "bottomCenter"})
			return
		end
		
		if items.count < v.count then
			TriggerClientEvent("pNotify:SendNotification", _source, { text = "شما (" .. v.label .. ") به تعداد کافی ندارید.", type = "error", timeout = 5000, layout = "bottomCenter"})
			return
		end
	end
	
	if ItemData.isWeapon and xPlayer.hasWeapon(Item) then
		TriggerClientEvent("pNotify:SendNotification", _source, { text = "شما این اسلحه را دارید!", type = "error", timeout = 5000, layout = "bottomCenter"})
		return
	end
	
	if not ItemData.isWeapon then
		local items = xPlayer.getInventoryItem(Item)

		if items ~= nil and items.limit ~= -1 and (items.count + ItemData.count) > items.limit then
			TriggerClientEvent("pNotify:SendNotification", _source, { text = "شما امکان حمل این آیتم را ندارید.", type = "error", timeout = 5000, layout = "bottomCenter"})
			return
		end
	end
	
	TriggerClientEvent('masterking32:closeAllUI', _source)
	
	if not ItemData.isBuy then
		TriggerClientEvent('master_craft:start_craft', _source)
	end
	
	if ItemData.price > 0 then
		xPlayer.removeMoney(ItemData.price)
	end
	
	for k,v in ipairs(ItemData.requirements) do
		xPlayer.removeInventoryItem(v.item, v.count)
	end
	
	Citizen.CreateThread(function()
		Citizen.Wait(ItemData.craftime)
		
		if not ItemData.isWeapon then
			xPlayer.addInventoryItem(Item, ItemData.count)
		else
			xPlayer.addWeapon(Item, ItemData.count)
		end
		
		if ItemData.isBuy then
			TriggerClientEvent("pNotify:SendNotification", _source, { text = "شما  یک عدد (" .. ItemData.label .. ") خریدید.", type = "success", timeout = 5000, layout = "bottomCenter"})
		else
			TriggerClientEvent("pNotify:SendNotification", _source, { text = "شما  یک عدد (" .. ItemData.label .. ") ساختید.", type = "success", timeout = 5000, layout = "bottomCenter"})
			TriggerClientEvent('master_craft:stop_craft', _source)
		end
	end)
	
end)