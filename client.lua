-- helper: isVectorEmpty(vector)
function isVectorEmpty(vector)
    if type(vector) == 'vector3' then
        if vector.x == 0.0 and vector.y == 0.0 and vector.z == 0.0 then
            return true
        else
            return false
        end
    else
        return true
    end
end

function ScreenFadeOut()

    DoScreenFadeOut(1000)

    Citizen.CreateThread(function ()
        while not IsScreenFadedOut() do
            Wait(100)
        end
    end)
    Wait(Config.fadeTime)
    return
end

function ScreenFadeIn()

    DoScreenFadeIn(1000)
    Citizen.CreateThread(function ()
        while not IsScreenFadedIn() do
            Wait(100)
        end
    end)
    Wait(Config.fadeTime)
    return
end

RegisterNetEvent('k:alert')
AddEventHandler('k:alert', function(msg)
    print(msg)
end)

RegisterNetEvent('k:teleport')
AddEventHandler('k:teleport', function(source,target)
    local ped = PlayerPedId()
    -- ScreenFadeOut :
    if Config.enable_fadeOut then ScreenFadeOut() end

    -- If no Z :
    if target.z == 0.0 then
        for height = 0, 1000 do
            SetEntityCoords(ped, target.x, target.y, target.z)
            local foundground, groundZ, normal = GetGroundZAndNormalFor_3dCoord(target.x, target.y, height + 0.0)
            if foundground then

                SetEntityCoords(ped, target.x, target.y, groundZ)
                if Config.enable_fadeOut then ScreenFadeIn() end
                break
            end

            Wait(25)
        end

    else
        -- Z = user input
        print(target.x, target.y, target.z)
        SetEntityCoords(ped, target.x, target.y, target.z)
    end

    -- ScreenFadeIn :
    if Config.enable_fadeOut then ScreenFadeIn() end

    -- update back :
    local from_position = GetEntityCoords(ped)
    Config.waypoints["back"].x = from_position.x
    Config.waypoints["back"].y = from_position.y
    Config.waypoints["back"].z = from_position.z

end)

RegisterCommand("tp", function(source, args, rawCommand)
    print(Locale.title)
    local _source = source
    local _player = PlayerPedId()
    local _waypoint = GetWaypointCoords()

    -- Are we alive
    if DoesEntityExist(_player) and not IsEntityDead(_player) then
        -- no arguments (or if you fuck up with a space)
        if not args[1] or args[1] == ' ' then
            print(Locale.arg_not_found)

            -- GetWaypointCoords() always returns Vector3
            if isVectorEmpty(_waypoint) then
                print(Locale.wp_not_found)
            else
                print(Locale.wp_found)
                local target = _waypoint

                if Config.enable_adminOnly == true then
                    TriggerServerEvent('k:tp',target)
                else
                    TriggerEvent('k:teleport',_player,target)

                end

            end

        else
            -- arguments
            if tonumber(args[1]) == nil then
                if Config.waypoints[args[1]] ~= nil then
                    local target = Config.waypoints[args[1]]
                    if Config.enable_adminOnly == true then
                        TriggerServerEvent('k:tp',target)
                    else
                        TriggerEvent('k:teleport',_player,target)
                    end
                else
                    print(Locale.preset_not_found)
                end
            else
                local target = {}
                if args[2] ~= nil then

                    target.x = tonumber(args[1])
                    target.y = tonumber(args[2])
                    if args[3] ~= nil and args[3] ~= 0.0 then
                        target.z = tonumber(args[3])
                    else
                        target.z = tonumber(0.0)
                    end
                    local vector = vector3(target.x,target.y,target.z)
                    if Config.enable_adminOnly == true then
                        TriggerServerEvent('k:tp',target)
                    else
                        TriggerEvent('k:teleport',_player,target)
                    end
                else
                    print(Locale.wp_invalid)
                end

            end
        end
    else
        print(Locale.not_alive)
    end
end, false)

--RegisterCommand("sfi", function(source, args, rawCommand)
--    ScreenFadeIn()
--end,false)
--
--RegisterCommand("sfo", function(source, args, rawCommand)
--    ScreenFadeOut()
--end,false)