if Config.framework ~= 'qb' then 
    return
end

Core = exports["qb-core"]:GetCoreObject()

function TriggerCallBack(name, cb, ...)
    Core.Functions.TriggerCallback(name, cb, ...)
end