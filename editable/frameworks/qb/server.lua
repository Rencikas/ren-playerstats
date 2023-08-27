if Config.framework ~= 'qb' then 
    return
end

Core = exports["qb-core"]:GetCoreObject()

function GetPlayer(source)
    return Core.Functions.GetPlayer(source)
end

function GetAccountMoney(player, account)   
    return player.PlayerData.money[account]
end

function GetPLayerLicenses(player)
    local licenses = {}

    for k,v in pairs(player.PlayerData.metadata.licences) do 
        if v then 
            licenses[#licenses + 1] = { label = k }
        end
    end

    return licenses
end

function GetPLayerJob(player)
    return player.PlayerData.job.label, player.PlayerData.job.grade.name
end

function RegisterCallBack(name, cb, ...)
    Core.Functions.CreateCallback(name, cb, ...)
end