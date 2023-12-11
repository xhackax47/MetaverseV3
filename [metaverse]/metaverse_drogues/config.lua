Config = {}

Config.Locale = 'fr'

Config.Delays = {
	WeedProcessing = 1000 * 10,
	MethProcessing = 1000 * 10,
	CokeProcessing = 1000 * 10,
	lsdProcessing = 1000 * 10,
	HeroinProcessing = 1000 * 10,
	thionylchlorideProcessing = 1000 * 10,
}

Config.DrugDealerItems = {
	heroin = math.random(50,100),
	marijuana = math.random(30,60),
	meth = math.random(100,200),
	coke = math.random(75,150),
	lsd = math.random(100,200),
}

Config.ChemicalsConvertionItems = {
	hydrochloric_acid = 0,
	sodium_hydroxide = 0,
	sulfuric_acid = 0,
	lsa = 0,
}

Config.ChemicalsLicenseEnabled = true --Will Enable or Disable the need for a Chemicals License.
Config.MoneyWashLicenseEnabled = true --Will Enable or Disable the need for a MoneyWash License.

Config.LicensePrices = {
	chemicalslisence = {label = _U('license_chemicals'), price = 100000},
	moneywash = {label = _U('license_moneywash'), price = 50000}
}

Config.Licenses = {
	moneywash = 100000,
	chemicalslisence = 50000,
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.EnableMapsBlimps = false -- Enables the blimps on the map.

Config.CircleZones = {
	--Weed
	WeedField = {coords = vector3(-2414.09, 836.76, 266.85), blimpcoords = vector3(-2414.09, 836.76, 266.85), name = _U('blip_weedfield'), color = 25, sprite = 496, radius = 0, enabled = true},
	WeedProcessing = {coords = vector3(216.06, -2157.86, 10.19), blimpcoords = vector3(216.06, -2157.86, 10.19), name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = 0.0, enabled = true},
	
	--meth
	MethProcessing = {coords = vector3(-1806.46, -2732.25, 5.43), blimpcoords = vector3(-1806.46, -2732.25, 5.43), name = _U('blip_methprocessing'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	HydrochloricAcidFarm = {coords = vector3(301.08, 2884.38, 43.51), blimpcoords = vector3(301.08, 2884.38, 43.51), name = _U('blip_HydrochloricAcidFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	SulfuricAcidFarm = {coords = vector3(1069.77, 2299.55, 45.50), blimpcoords = vector3(1069.77, 2299.55, 45.50), name = _U('blip_SulfuricAcidFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	SodiumHydroxideFarm = {coords = vector3(2764.24, 1486.34, 30.79), blimpcoords = vector3(2764.24, 1486.34, 30.79), name = _U('blip_SodiumHydroxideFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	
	--Chemicals
	ChemicalsField = {coords = vector3(3552.62, 3666.78, 33.88), blimpcoords = vector3(3552.62, 3666.78, 33.88), name = _U('blip_ChemicalsFarm'), color = 3, sprite = 499, radius = 0.0, enabled = true},
	ChemicalsConvertionMenu = {coords = vector3(3718.8, 4533.45, 20.67), blimpcoords = vector3(3718.8, 4533.45, 20.67), name = _U('blip_ChemicalsProcessing'), color = 3, sprite = 499, radius = 0.0, enabled = true},
	
	--Coke
	CokeField = {coords = vector3(2884.52, 1960.48, 44.71), blimpcoords = vector3(2884.52, 1960.48, 44.71), name = _U('blip_CokeFarm'), color = 4, sprite = 501, radius = 0.0, enabled = true},
	CokeProcessing = {coords = vector3(1243.21, -3133.91, 4.53), blimpcoords = vector3(1243.21, -3133.91, 4.53), name = _U('blip_Cokeprocessing'),color = 4, sprite = 501, radius = 0.0, enabled = true},
	
	--LSD
	lsdProcessing = {coords = vector3(-1099.34, 2205.26, 72.82), blimpcoords = vector3(-1099.34, 2205.26, 72.82), name = _U('blip_lsdprocessing'),color = 12, sprite = 364, radius = 0.0, enabled = true},
	thionylchlorideProcessing = {coords = vector3(663.77, 1282.27, 359.29), blimpcoords = vector3(663.77, 1282.27, 359.29), name = _U('blip_thionylchlorideprocessing'),color = 12, sprite = 364, radius = 0.0, enabled = true},
	
	--Heroin
	HeroinField = {coords = vector3(1319.46, 5167.18, 203.59), blimpcoords = vector3(1319.46, 5167.18, 203.59), name = _U('blip_heroinfield'), color = 7, sprite = 497, radius = 0, enabled = true},
	HeroinProcessing = {coords = vector3(-414.32, 4007.28, 79.83), blimpcoords = vector3(-414.32, 4007.28, 79.83), name = _U('blip_heroinprocessing'), color = 7, sprite = 497, radius = 0.0, enabled = true},

	--License
	LicenseShop = {coords = vector3(5194.15, -5134.57, 3.35), blimpcoords = vector3(5194.15, -5134.57, 3.35), name = _U('blip_licenseshop'),color = 9, sprite = 498, radius = 0.0, enabled = true},

	--DrugDealer
	DrugDealer = {coords = vector3(5066.00, -4591.27, 1.87), blimpcoords = vector3(5066.00, -4591.27, 1.87), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 0.0, enabled = true},
	
	--MoneyWash
	MoneyWash = {coords = vector3(-113.07, 6481.67, 30.46), blimpcoords = vector3(-113.07, 6481.67, 30.46), name = _U('blip_moneywash'), color = 1, sprite = 500, radius = 0.0, enabled = true},
}
