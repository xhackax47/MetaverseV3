Citizen.CreateThread(function()
	while true do
	local count = 0

    local text = {
    "Metaverse RP",
    "20K Start",
    "Staff sérieux"
    }
		
    for _, __ in pairs(text) do 
			
        count = count + 1
		end
			
		local presence  = math.random(1, count)
		local player = GetPlayerPed(-1)

		SetDiscordAppId('966261815774437377')
		SetDiscordRichPresenceAsset('metaverse') -- Name of the image.
	    SetDiscordRichPresenceAssetText('Metaverse RP') -- Text that pops up when you hover over the image.
        SetDiscordRichPresenceAssetSmall('discord') -- Name of the small image.
		SetDiscordRichPresenceAssetSmallText('https://discord.gg/gPR8ruJqWz') -- Name of the small tsext.
        SetDiscordRichPresenceAction(0, "Rejoindre", "https://discord.gg/gPR8ruJqWz") -- Button 1 and link
	    SetDiscordRichPresenceAction(1, "Vidéo Trailer", "https://youtu.be/HHPA25BFE7M") --  Button 2 and link

		while true do
        Citizen.Wait(1500)
        players = {}
        for i = 0, 128 do
            if NetworkIsPlayerActive( i ) then
                table.insert( players, i )
            end
        end
        SetRichPresence("Nom | "..GetPlayerName(PlayerId()) .. " - ID: " ..GetPlayerServerId(PlayerId()).. " - " .. #players + 0 .. "/300 Joueurs")
	end

	--	SetRichPresence((GetPlayerName(PlayerId())) .. " -") -- [Steam username] [text]
	--	SetRichPresence("".. text[presence] .."")  -- [text]
		SetDiscordRichPresenceAssetText('https://discord.gg/gPR8ruJqWz')
		print('^5Discord rich presence mis a jour :D')
		Citizen.Wait(300000) -- 5 minutes 
	end
end)