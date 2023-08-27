if Config.framework ~= 'esx' then 
    return
end

Core = exports['es_extended']:getSharedObject()

function TriggerCallBack(name, cb, ...)
    Core.TriggerServerCallback(name, cb, ...)
end