local labels = {}

labels.en = {
    undefined_territory = "Pas de zone trouvée.",
    inside_vehicle = "Vous ne pouvez pas vendre depuis l'intérieur d'un véhicule.",
    no_peds_found = "Il n'y a pas de piétons à proximité.",
    missing_items = "Vous n'avez pas les objets requis pour cette transaction.",
    generic_error = "Quelque chose n'a pas fonctionné.",
    sell_drugs = "Vente de drogues",
    currency_label = "$",
    success = "Transaction réussie.",
    sell_amount = "Quantité à vendre",
    submit = "Valider",
    amount = "Quantité",
    max = "Max",
}

ti.locales.set(labels)

_ENV.Labels = setmetatable({},{
    __index = function(t,k)
        return ti.locales.get(k)
    end
})