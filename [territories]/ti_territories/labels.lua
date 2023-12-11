ti.locales.set({
    en = {
        invalid_controller = "Faction invalide",
        invalid_permission = "Permissions invalides",
        missing_items = "Objets manquants",
        missing_accounts = "Comptes manquants",
        lab = "Labo",
        missing = "Manquant",
        currency = "$",
        action_complete = "Action terminée",
        gained = "Gain ",
        controller = "Faction",
        reputation = "Réputation",
        seized_at = "Revendiqué le",
        last_login = "Dernière connexion",
    }
})

labels = setmetatable({},{
    __index = function(t,k)
        return ti.locales.get(k)
    end
})