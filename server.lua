local ESX = exports['es_extended']:getSharedObject()

ESX.RegisterServerCallback('police_tracker:checkDriverJob', function(source, cb, targetServerId)
    local xPlayer = ESX.GetPlayerFromId(targetServerId)
    
    if xPlayer then
        local job = xPlayer.getJob().name
        if job ~= 'PCR' and job ~= 'gibs' and job ~= 'ems' and job ~= 'zzs' and job ~= 'hzs' then
            cb(true)
        else
            cb(false)
        end
    else
        cb(true) 
    end
end)