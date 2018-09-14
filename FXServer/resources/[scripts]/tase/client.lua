local Control = 39 --Default key "E"
--Please reference https://docs.fivem.net/game-references/controls/ to change the keybind

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
			local uped = GetPlayerPed(-1)
			if IsControlPressed(0, Control) then
				weapon = GetSelectedPedWeapon(uped)
				if weapon == 911657153 then
	local t, distance = GetClosestPlayer()
	if(distance ~= -1 and distance < 2) then
		TriggerServerEvent("tapetaze_s", GetPlayerServerId(t))
	else
		drawNotification("No ped close to you.")
	end
				end
			end
	end
end)

RegisterNetEvent('taptaze_c')
AddEventHandler('taptaze_c', function()
	SetPedToRagdollWithFall(PlayerPedId(), 1500, 1500, 0, 1.0, 0.0, 0.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
		drawNotification("You have been tased")
end)

function GetPlayers()
    local players = {}

    for i = 0, 31 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

function GetClosestPlayer()
	local players = GetPlayers()
	local closestDistance = -1
	local closestPlayer = -1
	local ply = GetPlayerPed(-1)
	local plyCoords = GetEntityCoords(ply, 0)
	
	for index,value in ipairs(players) do
		local target = GetPlayerPed(value)
		if(target ~= ply) then
			local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
			local distance = Vdist(targetCoords["x"], targetCoords["y"], targetCoords["z"], plyCoords["x"], plyCoords["y"], plyCoords["z"])
			if(closestDistance == -1 or closestDistance > distance) then
				closestPlayer = value
				closestDistance = distance
			end
		end
	end
	
	return closestPlayer, closestDistance
end

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end
