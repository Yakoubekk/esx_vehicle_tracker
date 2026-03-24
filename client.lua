local ESX = exports['es_extended']:getSharedObject()
local activeVehBlips = {}
local blipStates = {} 

function UpdateVehicleBlip(veh, data, shouldFlash)
    if not DoesEntityExist(veh) then return end

    if not activeVehBlips[veh] then
        local blip = AddBlipForEntity(veh)
        SetBlipSprite(blip, 56)
        SetBlipScale(blip, 0.8)
        SetBlipAsShortRange(blip, true)
        
        if data.isPD then SetBlipColour(blip, 3) 
        elseif data.isEMS or data.isLSFD then SetBlipColour(blip, 1) 
        else SetBlipColour(blip, 0) end

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(data.label)
        EndTextCommandSetBlipName(blip)
        
        activeVehBlips[veh] = blip
        blipStates[veh] = false 
    end
    
    local blip = activeVehBlips[veh]

    if blipStates[veh] ~= shouldFlash then
        SetBlipFlashes(blip, shouldFlash)
        blipStates[veh] = shouldFlash
        if shouldFlash then SetBlipScale(blip, 1.0) else SetBlipScale(blip, 0.8) end
    end
end

Citizen.CreateThread(function()
    while true do
        local sleep = Config.RefreshTime
        local PlayerData = ESX.GetPlayerData()
        
        if PlayerData.job and Config.AllowedJobs[PlayerData.job.name] then
            local vehicles = GetGamePool('CVehicle')
            local myPed = PlayerPedId()
            local myVeh = GetVehiclePedIsIn(myPed, false)
            
            for _, veh in ipairs(vehicles) do
                if veh ~= myVeh then
                    local model = GetEntityModel(veh)
                    local modelName = string.lower(GetDisplayNameFromVehicleModel(model))
                    
                    if Config.TrackedVehicles[modelName] then
                        local vehicleData = Config.TrackedVehicles[modelName]
                        
                        local isVehicleEmpty = true
                        local seats = GetVehicleMaxNumberOfPassengers(veh)
                        local thiefInside = false

                        for i = -1, seats do
                            local pedInSeat = GetPedInVehicleSeat(veh, i)
                            if pedInSeat ~= 0 then
                                isVehicleEmpty = false
                                local occupantServerId = GetPlayerServerId(NetworkGetPlayerIndexFromPed(pedInSeat))
                                
                                ESX.TriggerServerCallback('police_tracker:checkDriverJob', function(isCriminal)
                                    if isCriminal then thiefInside = true end
                                end, occupantServerId)
                            end
                        end

                        Citizen.Wait(100)

                        if not isVehicleEmpty then
                            UpdateVehicleBlip(veh, vehicleData, thiefInside)
                        else
                            UpdateVehicleBlip(veh, vehicleData, false)
                        end
                    end
                else
                    if activeVehBlips[veh] then
                        RemoveBlip(activeVehBlips[veh])
                        activeVehBlips[veh] = nil
                        blipStates[veh] = nil
                    end
                end
            end

            for veh, blip in pairs(activeVehBlips) do
                if not DoesEntityExist(veh) then
                    RemoveBlip(blip)
                    activeVehBlips[veh] = nil
                    blipStates[veh] = nil
                end
            end
        else
            for veh, blip in pairs(activeVehBlips) do
                RemoveBlip(blip)
                activeVehBlips[veh] = nil
                blipStates[veh] = nil
            end
            sleep = 5000
        end
        Citizen.Wait(sleep)
    end
end)