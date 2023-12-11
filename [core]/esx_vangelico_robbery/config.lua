Config = {}
Config.Locale = 'fr'

Config.RequiredCopsRob = 4
Config.RequiredCopsSell = 3
Config.MinJewels = 1 
Config.MaxJewels = 5
Config.MaxWindows = 20
Config.SecBetwNextRob = 3600 --1 hour
Config.MaxJewelsSell = 5
Config.PriceForOneJewel = math.random(300, 700)
Config.EnableMarker = true
Config.NeedBag = false

Config.Borsoni = {40, 41, 44, 45}

Stores = {
	["jewelry"] = {
		position = { ['x'] = -629.99, ['y'] = -236.542, ['z'] = 38.05 },       
		nameofstore = "jewelry",
		lastrobbed = 0
	}
}