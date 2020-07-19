RegisterServerEvent("k:tp")
AddEventHandler('k:tp', function (target)

    local _source = tonumber(source)
    local _target = target

    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
        if user == nil then return end

        if Config.enable_adminGroups[user.getGroup()] == true then
            if user == nil then
                print("ERROR: User does not exist")
            else
                --- Teleport
                TriggerClientEvent('k:teleport',_source,_source,_target)
            end
        else
                print("AUTH: Teleport command not allowed")
        end
    end)
end)