local function OpenMenu()
    TriggerCallBack('ren-playerstats:getPlayerData', function(data)
        SetNuiFocus(true, false)
        SendNUIMessage({ 
            show = true,
            id = GetPlayerServerId(PlayerId()),
            steam = GetPlayerName(PlayerId()),
            job = data.job,
            grade = data.grade,
            cash = data.cash,
            bank = data.bank,
            black_money = data.black_money,
            licenses = data.licenses
        })
    end)
end 

RegisterNUICallback('close', function(data, cb)
    SetNuiFocus(false)
    SendNUIMessage({ show = false })
end)

RegisterCommand(Config.command, OpenMenu)
RegisterKeyMapping(Config.command, 'Player stats menu', 'keyboard', Config.keybind)