local Menus = {
    labEntryPreview = {        
        label = "%s Entrée",
        icon = "fa-solid fa-circle-info",
        text = "Interagir avec ce point pour entrer dans le laboratoire.",
        retEvent = "territories:enterLabPreview"
    },

    labEntry = {
        {
            isHeader = true,
            label = "%s Entrée",
            icon = "fa-solid fa-circle-info",
            text = ""
        },
        {
            label = "Enter",
            text = "Enter the lab.",
            icon = "",
            retEvent = "territories:doEnterLab"
        },
        {
            label = "Fermer",
            text = "Fermer ce menu.",
            icon = "",
            retEvent = "territories:menuClosed"
        },
    },    

    labExitPreview = {        
        label = "%s Sortie",
        icon = "fa-solid fa-circle-info",
        text = "Interagir avec ce point pour quitter le laboratoire.",
        retEvent = "territories:exitLabPreview"
    },

    labExit = {
        {
            isHeader = true,
            label = "%s Sortie",
            icon = "fa-solid fa-circle-info",
            text = ""
        },
        {
            label = "Sortir",
            text = "Quitter le laboratoire.",
            icon = "",
            retEvent = "territories:doExitLab"
        },
        {
            label = "Fermer",
            text = "Fermer ce menu.",
            icon = "",
            retEvent = "territories:menuClosed"
        },
    },  

    labActionPreview = {
        label = "%s",
        icon = "fa-solid fa-circle-info",
        text = "Interagir avec ce point pour effectuer cette action.",
        retEvent = "territories:labActionPreview"
    },

    labAction = {
        {
            isHeader = true,
            label = "%s",
            icon = "fa-solid fa-circle-info",
            text = ""
        },
        {
            label = "Interagir",
            text = "Effectuer cette action.",
            icon = "",
            retEvent = "territories:doLabAction"
        },
        {
            label = "Fermer",
            text = "Fermer ce menu.",
            icon = "",
            retEvent = "territories:menuClosed"
        },
    },
}

_ENV.Menus = Menus