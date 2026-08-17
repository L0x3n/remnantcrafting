local data = {}

data["Small Health Potion"] = {
    name = "Small Health Potion",
    image = "Small Health Potion.png",
    caption = "AAAAAAAAAAAAAAA",
    inventoryTab = "Use",
    stats = {
    	{name = "line 1", stat = "+24% Speed"},
    	{name = "line 2", stat = "Buff lasts 10 minutes"},
    },
    crafting = {
    {
        name = "Dull Life Essence",
        quantity = 2,
        craftingType = "Alchemy",
        craftingLevel = 5,
        resources = {
            {name = "Life Essence", quantity = 1},
            {name = "Soul Crystal", quantity = 100},
        }
    },
    {
        name = "Dull Life Essence",
        quantity = 1,
        craftingType = "Alchemy",
        craftingLevel = 7,
        resources = {
            {name = "Oak Wood", quantity = 3},
            {name = "Apple", quantity = 1},
            {name = "Cotton Ball", quantity = 1},
        }
    },
},

    craftingUsage = {
        {
            name = "Stone Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 2,
            resources = {
                {name = "Cobbled Stone", quantity = 15},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 2,
            resources = {
                {name = "Cobbled Stone", quantity = 10},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 2,
            resources = {
                {name = "Cobbled Stone", quantity = 10},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 2,
            resources = {
                {name = "Cobbled Stone", quantity = 15},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
    },

    questObjective = {
        {
            name = "Kmitty Questline",
            NPC = "Kmitty",
            repeatable = "Yes",
            questLevel = 6,
            resources = {
                {name = "Stone", quantity = 8},
            },
            enemies = {
                {name = "Slime", quantity = 50},
            }
        },
    },

    questReward = {
        {
            name = "Shepherd",
            NPC = "Shepherd",
            repeatable = "No",
            questLevel = 6,
            resources = {
                {name = "Stone", quantity = 8},
            },
        },
    },

    purchase = {
        {
            name = "Shopkeeper",
            purchasePrice = "1,000 SC",
            sellPrice = "150 SC"
        },
    },

    drops = {
        {name = "Slime", chance = "0.04%"},
        {name = "Bubble Spirit", chance = "0.05%"},
    },

    dungeons = {
    {
        name = "Slime Garden",
        level = 1,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "1%"},
            {type = "Wooden", chance = "2%"},
        }
    },
    {
        name = "Slime Garden",
        level = 2,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "2%"},
        }
    },
},

    minigames = {
        {name = "Idk"},
    },

    echoes = {
        {name = "", quantity = "", chance = ""},
    },

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "Yes",

}

return data