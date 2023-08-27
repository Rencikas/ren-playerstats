RegisterCallBack('ren-playerstats:getPlayerData', function(source, cb)
    local player = GetPlayer(source)
    local job, grade = GetPLayerJob(player)

    cb({
        job = job, 
        grade = grade,
        cash = GetAccountMoney(player, 'cash'),
        bank = GetAccountMoney(player, 'bank'),
        licenses = GetPLayerLicenses(player)
    })
end)