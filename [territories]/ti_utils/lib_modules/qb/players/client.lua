local QBCore = select(2,...)

local uniqueId
local playerJob,playerGroup = {},{}
local playerInventory

local idTrackers,jobTrackers,groupTrackers = {},{},{}
local inventoryTrackers = {}

local module = {}

module.isReady = function()
  local data = QBCore.Functions.GetPlayerData()
  return (type(data) == 'table' and type(data.citizenid) == 'string')
end

module.awaitReadySync = function()
  local data = QBCore.Functions.GetPlayerData()

  while not data or not data.citizenid do
    Wait(500)
    data = QBCore.Functions.GetPlayerData()
  end
end

module.awaitReadyAsync = function(cb)
  Citizen.CreateThread(function()
    local data = QBCore.Functions.GetPlayerData()

    while not data or not data.citizenid or not LocalPlayer.state.isLoggedIn do
      Wait(500)
      data = QBCore.Functions.GetPlayerData()
    end

    cb()
  end)
end

module.setClothes = function(clothes)
  TriggerEvent("qb-clothes:loadSkin", false, clothes.model, clothes.skin)
  TriggerServerEvent("qb-clothing:server:savePlayerSkin", clothes.model, clothes.skin)
end

module.getName = function()
  local char = QBCore.Functions.GetPlayerData().charinfo
  return char.firstname or "Unknown",char.lastname  or "Unknown"
end

module.getUniqueId = function()
  return QBCore.Functions.GetPlayerData().citizenid
end

module.getJob = function()
  local job = QBCore.Functions.GetPlayerData().job

  if not job then
    return
  end

  return job.name,job.grade.level,job.label,job.grade.name
end

module.getGroup = function()
  local gang = QBCore.Functions.GetPlayerData().gang

  if not gang then
    return
  end

  return gang.name,gang.grade.level,gang.label,gang.grade.name
end

module.trackUniqueId = function(cb)
  table.insert(idTrackers,cb)

  local id = module.getUniqueId()

  cb(id)
end

module.trackJob = function(cb)
  table.insert(jobTrackers,cb)

  local name,rank = module.getJob()

  cb(name,rank)
end

module.trackGroup = function(cb)
  table.insert(groupTrackers,cb)

  local name,rank = module.getGroup()

  cb(name,rank)
end

module.trackInventoryChange = function(cb)
  table.insert(inventoryTrackers, cb)
end

module.hasPermissions = function(characterPermissions,jobPermissions,groupPermissions)
  if  not characterPermissions
  and not jobPermissions
  and not groupPermissions
  then
    return true
  end

  if jobPermissions then
    if jobPermissions[playerJob.name] and jobPermissions[playerJob.name] <= playerJob.rank then
      return true
    end
  end

  if groupPermissions then
    if groupPermissions[playerGroup.name] and groupPermissions[playerGroup.name] <= playerGroup.rank then
      return true
    end
  end

  if characterPermissions then
    for _,uid in ipairs(characterPermissions) do
      if uid == uniqueId then
        return true
      end
    end
  end
  
  return false
end

module.getAccounts = function()
  local playerData = QBCore.Functions.GetPlayerData()

  local accounts = {}

  for k,v in pairs(playerData.money) do
    accounts[k] = v
  end

  if not accounts.cash and accounts.money then
    accounts.cash = accounts.money
  end

  return accounts
end

module.getInventory = function()
  local items = QBCore.Functions.GetPlayerData().items

  if not items then return {} end

  for k,v in pairs(items) do
    if v then
      v.count = v.count or v.amount
      v.metadata = v.metadata or v.info
    end
  end

  return items
end

--
-- Internal Tracking
--

module.trackUniqueId(function(uid)
  uniqueId = uid
end)

module.trackJob(function(name,rank)
  playerJob = {
    name = name,
    rank = rank
  }
end)

module.trackGroup(function(name,rank)
  playerGroup = {
    name = name,
    rank = rank
  }
end)

module.awaitReadyAsync(function()
  playerInventory = module.getInventory()
end)

--
-- Change Handlers
--

local function checkIdChanged(data)
  if data.citizenid ~= uniqueId then
    uniqueId = data.citizenid

    for _,cb in ipairs(idTrackers) do
      cb(data.citizenid)
    end
  end
end

local function checkJobChanged(data)  
  if data.job.name ~= playerJob.name or data.job.grade.level ~= playerJob.rank then
    playerJob = {
      name = data.job.name,
      rank = data.job.grade.level
    }

    for _,cb in ipairs(jobTrackers) do
      cb(data.job.name,data.job.grade.level)
    end
  end
end

local function checkGroupChanged(data)  
  if data.gang.name ~= playerGroup.name or data.gang.grade.level ~= playerGroup.rank then
    playerGroup = {
      name = data.gang.name,
      rank = data.gang.grade.level
    }

    for _,cb in ipairs(groupTrackers) do
      cb(data.gang.name,data.gang.grade.level)
    end
  end
end

local function checkInventoryChanged()
  if not playerInventory then
    playerInventory = module.getInventory()
  end

  Wait(0)
  
  local newInventory = module.getInventory()

  for k,v in pairs(playerInventory) do
    if type(newInventory[k]) ~= "table" then
      for _,cb in ipairs(inventoryTrackers) do
        cb("remove", v)
      end
    end
  end

  for k,v in pairs(newInventory) do
    if type(v) == "table" then
      if type(playerInventory[k]) ~= "table" then
        for _,cb in ipairs(inventoryTrackers) do
          cb("add", v)
        end
      elseif playerInventory[k].name ~= v.name then
        for _,cb in ipairs(inventoryTrackers) do
          cb("swap", v, playerInventory[k])
        end
      elseif playerInventory[k].count < v.count then
        for _,cb in ipairs(inventoryTrackers) do
          cb("add", v)
        end
      elseif playerInventory[k].count > v.count then
        for _,cb in ipairs(inventoryTrackers) do
          cb("remove", v)
        end
      end
    end
  end

  playerInventory = newInventory
end

--
-- Event Handling
--

RegisterNetEvent("QBCore:Client:OnJobUpdate",function(job)
  for _,cb in ipairs(jobTrackers) do
    cb(job.name,job.grade.level)
  end
end)

RegisterNetEvent("QBCore:Client:OnGangUpdate",function(gang)
  for _,cb in ipairs(groupTrackers) do
    cb(gang.name,gang.grade.level)
  end
end)

RegisterNetEvent("QBCore:Client:OnPlayerLoaded",function()
  local data = QBCore.Functions.GetPlayerData()

  if not data then
    return
  end

  for _,cb in ipairs(idTrackers) do
    cb(data.citizenid)
  end  
  
  for _,cb in ipairs(jobTrackers) do
    cb(data.job.name,data.job.grade.level)
  end

  for _,cb in ipairs(groupTrackers) do
    cb(data.gang.name,data.gang.grade.level)
  end
end)

RegisterNetEvent("QBCore:Player:UpdatePlayerData",function(data)
  if not data then
    data = QBCore.Functions.GetPlayerData()
  end

  if not data then
    return
  end

  checkIdChanged(data)
  checkJobChanged(data)
  checkGroupChanged(data)
  checkInventoryChanged()
end)

RegisterNetEvent("QBCore:Player:SetPlayerData",function(data)
  if not data then
    return
  end

  checkIdChanged(data)
  checkJobChanged(data)
  checkGroupChanged(data)
  checkInventoryChanged()
end)

return module