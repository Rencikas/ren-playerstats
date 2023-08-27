if Config.framework ~= 'esx' then 
    return
end

Core = exports['es_extended']:getSharedObject()

function GetPlayer(source)
    return Core.GetPlayerFromId(source)
end

function GetPlayerIdentifier(source)
    return Core.GetPlayerFromId(source).identifier
end

function GetAccountMoney(player, account)
    local accountType = account == 'cash' and 'money' or account
    return player.getAccount(accountType).money
end

function GetPLayerLicenses(player)
    local licenses = promise:new()

    TriggerEvent('esx_license:getLicenses', player.source, function(result)
        licenses:resolve(result)
	end)

    return Citizen.Await(licenses)
end

function GetPLayerJob(player)
    return player.job.label, player.job.grade_label
end

function RegisterCallBack(name, cb, ...)
    Core.RegisterServerCallback(name, cb, ...)  
end