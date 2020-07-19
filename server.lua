RegisterServerEvent("k:tp")
AddEventHandler('k:tp', function (target)

    local _source = tonumber(source)
    local _target = target

    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        if user == nil then return end

        if Config.enable_adminGroups[user.getGroup()] == true then
            if user == nil then
            else
                TriggerClientEvent('k:teleport',_source,_source,_target)
            end
        else
              print("user : " .. _source .. " " .. Locale.auth_fail)
              TriggerClientEvent('k:alert',_source,Locale.auth_fail)
        end
    end)
end)