ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local function getMoneyFromUser(id_user)
	local xPlayer = ESX.GetPlayerFromId(id_user)
	return xPlayer.getMoney()
end

local function getBlackMoneyFromUser(id_user)
		local xPlayer = ESX.GetPlayerFromId(id_user)
		local account = xPlayer.getAccount('black_money')
	return account.money
end

local function getBankFromUser(id_user)
		local xPlayer = ESX.GetPlayerFromId(id_user)
		local account = xPlayer.getAccount('bank')
	return account.money
end

RegisterServerEvent('esx_customui:getMoneys')
AddEventHandler('esx_customui:getMoneys', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer ~= nil then
		local wallet 		= getMoneyFromUser(_source)
		local bank 			= getBankFromUser(_source)
		local black_money 	= getBlackMoneyFromUser(_source)

		local society 		= nil
		local user_identifier = nil
		user_identifier = xPlayer.getIdentifier()

		local grade_name 	= xPlayer.job.grade_name
		local grade_label 	= xPlayer.job.grade_label
		local job_name 		= xPlayer.job.name
		local job_label 	= xPlayer.job.label

		if grade_name == 'boss' then
	 		local mySociety = nil
			TriggerEvent('esx_society:getSociety', job_name, function(_society)
				mySociety = _society
			end)

	  		if mySociety ~= nil then

		    	TriggerEvent('esx_addonaccount:getSharedAccount', mySociety.account, function(account)
		      		society = account.money
		    	end)
		  	end
		end

	    TriggerClientEvent("esx_customui:setValues", _source, wallet, bank, black_money, society)
	end
end)

-- Commands
TriggerEvent('es:addCommand', 'togglehud', function(source, args)
	if not args then 
		TriggerClientEvent('chatMessage', source, "[SYNTAX]", {255, 0, 0}, "/togglehud [On/Off]") 
	else
	local a = tostring(args[1])
		if a == "off" then
			TriggerClientEvent('ui:toggle', source,false)
		elseif a == "on" then
			TriggerClientEvent('ui:toggle', source,true)
		else
			TriggerClientEvent('chatMessage', source, "[SYNTAX]", {255, 0, 0}, "/togglehud [On/Off]") 
		end
	end
end, {help = "Toggles the HUD On & Off"})
