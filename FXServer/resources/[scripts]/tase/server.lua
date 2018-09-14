RegisterServerEvent('tapetaze_s')
AddEventHandler('tapetaze_s', function(t)
    TriggerClientEvent('taptaze_c', t)
end)