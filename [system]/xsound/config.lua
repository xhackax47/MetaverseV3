config = {}

-- How much ofter the player position is updated ?
config.RefreshTime = 100

-- default sound format for interact
config.interact_sound_file = "ogg"

-- is emulator enabled ?
config.interact_sound_enable = false

-- how much close player has to be to the sound before starting updating position ?
config.distanceBeforeUpdatingPos = 40

-- Message list
config.Messages = {
    ["streamer_on"]  = "Le mode Streamer est activé. A partir de maintenant, vous n'entendrez plus de musique/son.",
    ["streamer_off"] = "Le mode Streamer est désactivé. À partir de maintenant, vous pourrez écouter la musique que les joueurs pourraient jouer.",

    ["no_permission"] = "Tu ne peux pas utiliser cette commande, tu n'as pas les permissions pour cela !",
}

-- Addon list
-- True/False enabled/disabled
config.AddonList = {
    crewPhone = false,
}