Rave = {}

Rave.Zones = {}
for k,v in ipairs(Config.Zones) do
  Rave.Zones[k] = {
    song    = false,
    volume  = 0.3,
    started = false
  }
end

Rave.Get = function(index,time)
  print("Get",index)
  local rave = Rave.Zones[index]
  local ping = GetPlayerPing(source)
  if not rave.started then
    rave.started = time
  end
  TriggerClientEvent("Rave:Got",source,index,rave,ping)
end

Rave.Save = function(index,data)
  TriggerClientEvent("Rave:Saved",-1,index,data)
end

Rave.Submit = function(index,data)
  Rave.Zones[index] = data
  print("Submit!",index)
  TriggerClientEvent("Rave:Submitted",-1,index)
end

RegisterNetEvent("Rave:Get")
AddEventHandler("Rave:Get",Rave.Get)

RegisterNetEvent("Rave:Save")
AddEventHandler("Rave:Save",Rave.Save)

RegisterNetEvent("Rave:Submit")
AddEventHandler("Rave:Submit",Rave.Submit)