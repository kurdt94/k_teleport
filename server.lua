RegisterServerEvent("k:tp")
AddEventHandler('k:tp', function (target)

    local _source = tonumber(source)
    local _target = target

    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        if user == nil then return end

        if Config.enable_adminGroups[user.getGroup()] == true then
            if user == nil then
            else
                if target.x ~= 0.0 and target.y ~= 0.0 then
                    TriggerClientEvent('k:teleport',_source,_source,_target)
                else
                    TriggerClientEvent('k:alert',_source,Locale.preset_not_found)
                    return
                end
            end
        else
              print("user : " .. _source .. " " .. Locale.auth_fail)
              TriggerClientEvent('k:alert',_source,Locale.auth_fail)
              return
        end
    end)
end)