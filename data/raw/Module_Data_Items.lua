local data = {}
--Refer to the MarnoNodesHelp page for references to how these node images look

--ALL MINERAL NODES

--Aquamarine_Cobalt_Node
--Amber_Gold_Node
--Blackdiamond_Starmetal_Node
--Copper_Node
--Dreamstone_Mithril_Node
--Bloodstone_Obsidian_Node
--Emerald_Malachite_Node
--Iron_Node
--Heartofthesea_Arcanestone_Node
--Moonstone_Eternalice_Node
--Petrified_Wood_Node
--Quartz_Node
--Ruby_Bismuth_Node
--Salt_Node
--Sapphire_Titanium_Node
--Sulphur_Node

--END OF MINERAL NODES
------------------------------------------------------------------------------------------------------------------------------------------------

--ALL FORAGE NODES

--Sea_Weed_Node
--Soy_Plant_Node
--Whitebloom_Node
--Sweet_Fern_Node
--Ancient_Fern_Node
--Angelic_Algae_Node
--Arcane_Pearl_Node
--Ashen_Onion_Node
--Blue_Ginseng_Node
--Blue_Pepper_Node
--Cactus_Node
--Censhroom_Node
--Cotton_Tree_Node
--Crystal_Flower_Node
--Desert_Bush_Node
--Desert_Flower_Node
--Epochal_Lily_Node
--Forbidden_Fruit_Node
--Glowbush_Node
--Hell_Chili_Node
--Memory_Agave_Node
--Pineapple_Node
--Poceanto_Node
--Red_Dandelion_Node
--Sculpted_Cactus_Node
--Sea_Grape_Node
--Silverleaf_Node
--Fire_Weed_Node
--Melon_Node
--Desert_rose_256
--White_herb_256
--Green_herb_256
--Red_herb_256
--Blue_herb_256

--END OF FORAGE NODES
------------------------------------------------------------------------------------------------------------------------------------------------

--ALL HARVEST NODES

--Sulphuric_Tree_Node
--Rocky_Tree_Node
--Ashen_Tree_Node
--Eon_Tree_Node
--Ice_Cinnamon_Tree_Node
--Giant_Tree_Node
--Eternal_Tree_Node
--Giant_tree_1_256
--Savanna_tree_256
--Dead_tree_256
--Palm_tree_256
--Pine_tree_256
--Giant_tree_2_256
--Oak_tree_256
--Oak_tree_snow_256

--END OF HARVEST NODES
------------------------------------------------------------------------------------------------------------------------------------------------
--FISHING

--FishingRodBob

------------------------------------------------------------------------------------------------------------------------------------------------


data["Stone"] = {
    name = "Stone",
    image = "Stone.png",
    caption = "Hard as a... rock.",
    inventoryTab = "Mats",
    
    lifeSkilling = {
    {
        map = "Outskirts West",
        skillingType = "Mining",
        level = 1,
        node = "Salt_Node",
        chance = "2%",
    },
    {
        map = "Outskirts East",
        skillingType = "Mining",
        level = 5,
        node = "Copper_Node",
        chance = "5%",
    },
    {
        map = "Crystal Cave",
        skillingType = "Mining",
        level = 12,
        node = "Heartofthesea_Arcanestone_Node",
        chance = "12%",
    },
},

    crafting = {},
    craftingUsage = {
    {
        name = "Cobbled Stone",
        craftingType = "Weapon Smithing",
        craftingLevel = 6,
        resources = {
            {name = "Stone", quantity = 2},
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

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "Yes",
}

data["Copper Ore"] = {
    name = "Copper Ore",
    image = "Copper Ore.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {
        {name = "Plains 1", chance = "100%"},
        {name = "Plains 2", chance = "100%"},
        {name = "Plains 3", chance = "100%"},
        {name = "Plains 4", chance = "100%"},
        {name = "Lost Plains", chance = "100%"},
    },

    fishing = {},
    herbalism = {},

    crafting = {},

    craftingUsage = {
        {
            name = "Copper Ingot",
            craftingType = "Weaponsmithing",
            craftingLevel = 5,
            resources = {
                {name = "Copper Ore", quantity = 2},
            }
        },
        {
            name = "Copper Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 6,
            resources = {
                {name = "Copper Ore", quantity = 3},
            }
        },
        {
            name = "Copper Rod",
            craftingType = "Jewelry",
            craftingLevel = 3,
            resources = {
                {name = "Copper Ore", quantity = 5},
            }
        },
    },

    questObjective = {},

    questReward = {},

    purchase = {},

    drops = {
        {name = "", chance = ""},
    },

    dungeons = {},

    minigames = {
        {name = "Barrier Forge"},
    },

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "No",
}

data["Copper Ingot"] = {
    name = "Copper Ingot",
    image = "Copper Ingot.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {},
    fishing = {},
    herbalism = {},

    crafting = {
        {
            name = "Copper Ore",
            quantity = 1,
            craftingType = "Weaponsmithing",
            craftingLevel = 5,
            resources = {
                {name = "Copper Ore", quantity = 2},
            }
        },
    },

    craftingUsage = {
        {
            name = "Copper Focus",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Life Essence", quantity = 20},
            }
        },
        {
            name = "Copper Bow",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
        {
            name = "Copper Shield",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 20},
                {name = "Dull Eternal Essence", quantity = 20},
            }
        },
        {
            name = "Copper Spell Blade",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
        {
            name = "Copper Holy Arrow",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 20},
                {name = "Dull Raging Essence", quantity = 20},
            }
        },
        {
            name = "Copper Sword",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Ghostly Essence", quantity = 20},
            }
        },
        {
            name = "Copper Magic Wand",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
        {
            name = "Copper Decree Nine",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 20},
                {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
        {
            name = "Copper Cross",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Raging Essence", quantity = 20},
            }
        },
        {
            name = "Copper Javelin",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Life Essence", quantity = 20},
            }
        },
        {
            name = "Copper Orb",
            craftingType = "Weaponsmithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 20},
                {name = "Dull Metal Essence", quantity = 20},
            }
        },
    },

    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {},
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "No",
}

data["Copper Plate"] = {
    name = "Copper Plate",
    image = "Copper Plate.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {},
    fishing = {},
    herbalism = {},

    crafting = {
        {
            name = "Copper Ore",
            quantity = 1,
            craftingType = "Armor Crafting",
            craftingLevel = 6,
            resources = {
                {name = "Copper Ore", quantity = 3},
            }
        },
    },

    craftingUsage = {
        {
            name = "Copper Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 7,
            resources = {
                {name = "Copper Plate", quantity = 7},
                {name = "Dull Nurturing Essence", quantity = 8},
            }
        },
        {
            name = "Copper Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 8,
            resources = {
                {name = "Copper Plate", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
            }
        },
        {
            name = "Copper Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 9,
            resources = {
                {name = "Copper Plate", quantity = 10},
                {name = "Dull Eternal Essence", quantity = 10},
            }
        },
        {
            name = "Copper Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 10,
            resources = {
                {name = "Copper Plate", quantity = 15},
                {name = "Dull Historic Essence", quantity = 13},
            }
        },
    },

    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {},
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "No",
}

data["Copper Rod"] = {
    name = "Copper Rod",
    image = "Copper Rod.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {},
    fishing = {},
    herbalism = {},

    crafting = {
        {
            name = "Copper Ore",
            quantity = 1,
            craftingType = "Jewelry",
            craftingLevel = 3,
            resources = {
                {name = "Copper Ore", quantity = 5},
            }
        },
    },

    craftingUsage = {
        {
            name = "Copper Ring",
            craftingType = "Jewelry",
            craftingLevel = 6,
            resources = {
                {name = "Copper Rod", quantity = 3},
                {name = "Dull Nurturing Essence", quantity = 2},
                {name = "Dull Ghostly Essence", quantity = 2},
                {name = "Dull Historic Essence", quantity = 2},
                {name = "Dull Life Essence", quantity = 2},
                {name = "Dull Metal Essence", quantity = 2},
                {name = "Dull Eternal Essence", quantity = 2},
                {name = "Dull Raging Essence", quantity = 2},
            }
        },
    },

    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {},
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "No",
}

data["Quartz"] = {
    name = "Quartz",
    image = "Quartz.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {
        {name = "Snapper Shore", chance = "88.2%"},
        {name = "Around the Seashore", chance = "88.2%"},
        {name = "Seashell Cove", chance = "88.2%"},
    },

    fishing = {},
    herbalism = {},

    crafting = {},

    craftingUsage = {
        {
            name = "Refined Quartz Ingot",
            craftingType = "Weaponsmithing",
            craftingLevel = 11,
            resources = {
                {name = "Quartz", quantity = 2},
            }
        },
        {
            name = "Quartz Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 12,
            resources = {
                {name = "Quartz", quantity = 3},
            }
        },
        {
            name = "Refined Quartz Rod",
            craftingType = "Jewelry",
            craftingLevel = 9,
            resources = {
                {name = "Quartz", quantity = 5},
            }
        },
    },

    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {},
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    craftable = "No",
    mysteryTicket = "No",
}

data["Refined Quartz Ingot"] = {
    name = "Refined Quartz Ingot",
    image = "Refined Quartz Ingot.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {},
    fishing = {},
    herbalism = {},

    crafting = {
        {
            name = "Quartz",
            quantity = 1,
            craftingType = "Weaponsmithing",
            craftingLevel = 11,
            resources = {
                {name = "Quartz", quantity = 2},
            }
        },
    },

    craftingUsage = {
        {
            name = "Quartz Focus",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Historic Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Bow",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Eternal Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Shield",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Metal Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Spellblade",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Ghostly Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Holy Arrow",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Raging Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Sword",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Raging Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Magic Wand",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Eternal Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Kunai",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Raging Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Cross",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Historic Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Javelin",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Orb",
            craftingType = "Weaponsmithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Eternal Essence", quantity = 20},
            }
        },
    },

    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {},
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "No",
}

data["Quartz Plate"] = {
    name = "Quartz Plate",
    image = "Quartz Plate.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {},
    fishing = {},
    herbalism = {},

    crafting = {
        {
            name = "Quartz",
            quantity = 1,
            craftingType = "Armor Crafting",
            craftingLevel = 12,
            resources = {
                {name = "Quartz", quantity = 3},
            }
        },
    },

    craftingUsage = {
        {
            name = "Quartz Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 13,
            resources = {
                {name = "Quartz Plate", quantity = 9},
                {name = "Dull Metal Essence", quantity = 12},
            }
        },
        {
            name = "Quartz Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 14,
            resources = {
                {name = "Quartz Plate", quantity = 9},
                {name = "Dull Historic Essence", quantity = 10},
            }
        },
        {
            name = "Quartz Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 15,
            resources = {
                {name = "Quartz Plate", quantity = 12},
                {name = "Dull Ghostly Essence", quantity = 14},
            }
        },
        {
            name = "Quartz Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 16,
            resources = {
                {name = "Quartz Plate", quantity = 18},
                {name = "Dull Metal Essence", quantity = 18},
            }
        },
    },

    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {},
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "No",
}

data["Refined Quartz Rod"] = {
    name = "Refined Quartz Rod",
    image = "Refined Quartz Rod.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {},
    fishing = {},
    herbalism = {},

    crafting = {
        {
            name = "Quartz",
            quantity = 1,
            craftingType = "Jewelry",
            craftingLevel = 9,
            resources = {
                {name = "Quartz", quantity = 5},
            }
        },
    },

    craftingUsage = {
        {
            name = "Quartz Ring",
            craftingType = "Jewelry",
            craftingLevel = 12,
            resources = {
                {name = "Refined Quartz Rod", quantity = 4},
                {name = "Dull Nurturing Essence", quantity = 3},
                {name = "Dull Ghostly Essence", quantity = 3},
                {name = "Dull Historic Essence", quantity = 3},
                {name = "Dull Life Essence", quantity = 3},
                {name = "Dull Metal Essence", quantity = 3},
                {name = "Dull Eternal Essence", quantity = 3},
                {name = "Dull Raging Essence", quantity = 3},
            }
        },
    },

    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {},
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "No",
}

data["Red Shard"] = {
    name = "Red Shard",
    image = "Red Shard.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {
        {name = "Beach Cave", chance = "20.5%"},
    },

    fishing = {},
    herbalism = {},

    crafting = {},

    craftingUsage = {
        {
            name = "Campfire",
            craftingType = "General",
            craftingLevel = 0,
            resources = {
                {name = "Red Shard", quantity = 1},
                {name = "Wood", quantity = 5},
            }
        },
        {
            name = "Wooden Mask",
            craftingType = "General",
            craftingLevel = 0,
            resources = {
                {name = "Wood", quantity = 100},
                {name = "Red Shard", quantity = 10},
            }
        },
    },

    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {
        {name = "Rokkik", chance = "1.0%"},
    },
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    craftable = "No",
    mysteryTicket = "Yes",
}

data["Blue Shard"] = {
    name = "Blue Shard",
    image = "Blue Shard.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {
        {name = "Beach Cave", chance = "20.5%"},
    },

    fishing = {},
    herbalism = {},

    crafting = {},

    craftingUsage = {},

    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {},
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    craftable = "No",
    mysteryTicket = "Yes",
}

data["Yellow Shard"] = {
    name = "Yellow Shard",
    image = "Yellow Shard.png",
    caption = "",
    inventoryTab = "Mats",

    mining = {
        {name = "Beach Cave", chance = "20.5%"},
    },

    fishing = {},
    herbalism = {},

    crafting = {},

    craftingUsage = {},

    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {
        {name = "Glowsnail", chance = "1.49%"},
    },
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    craftable = "No",
    mysteryTicket = "Yes",
}


-- ALL ESSENCES
------------------------------------------------------------------------------------------------------------------------------------------------
data["Dull Life Essence"] = {
    name = "Dull Life Essence",
    image = "Dull Life Essence.png",
    caption = "Essence of Life itself. Can be used to upgrade the skill and crafting.",
    
    inventoryTab = "Mats",

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
            name = "Energetic Soul",
            craftingType = "Alchemy",
            craftingLevel = 15,
            resources = {
				{name = "Dull Life Essence", quantity = 40},
                {name = "Dull Raging Essence", quantity = 40},
				{name = "Dull Historic Essence", quantity = 40},
				{name = "Dull Nurturing Essence", quantity = 40},
				{name = "Dull Metal Essence", quantity = 40},
				{name = "Dull Eternal Essence", quantity = 40},
				{name = "Dull Ghostly Essence", quantity = 40},
				{name = "Green Herb", quantity = 10},
				{name = "Red Herb", quantity = 10},
				{name = "Blue Herb", quantity = 10},
				{name = "Soul Crystal", quantity = 1500},
            }
        },
		{
            name = "Life Essence",
            craftingType = "Alchemy",
            craftingLevel = 30,
            resources = {
				{name = "Dull Life Essence", quantity = 3},
				{name = "Soul Crystal", quantity = 150},
            }
        },
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
            craftingLevel = 3,
            resources = {
                {name = "Cobbled Stone", quantity = 10},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
                {name = "Cobbled Stone", quantity = 10},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
                {name = "Cobbled Stone", quantity = 15},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
                {name = "Cobbled Stone", quantity = 10},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
                {name = "Cobbled Stone", quantity = 15},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
                {name = "Cobbled Stone", quantity = 10},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
                {name = "Cobbled Stone", quantity = 10},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
                {name = "Cobbled Stone", quantity = 10},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
                {name = "Cobbled Stone", quantity = 15},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Stone Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
                {name = "Cobbled Stone", quantity = 10},
                {name = "Dull Life Essence", quantity = 12},
            }
        },
            {
            name = "Copper Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Life Essence", quantity = 20},
            }
        },
            {
            name = "Copper Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Life Essence", quantity = 20},
            }
        },
            {
            name = "Iron Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Copper Ingot", quantity = 25},
                {name = "Dull Life Essence", quantity = 45},
            }
        },
            {
            name = "Iron Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Copper Ingot", quantity = 25},
                {name = "Dull Life Essence", quantity = 45},
            }
        },
            {
            name = "Iron Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Copper Ingot", quantity = 35},
                {name = "Dull Life Essence", quantity = 45},
            }
        },
            {
            name = "Petrified Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 40},
                {name = "Dull Life Essence", quantity = 65},
            }
        },
            {
            name = "Stinky Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Stinky Ingot", quantity = 40},
                {name = "Dull Life Essence", quantity = 90},
            }
        },
            {
            name = "Stinky Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Stinky Ingot", quantity = 30},
                {name = "Dull Life Essence", quantity = 90},
            }
        },
            {
            name = "Stinky Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Stinky Ingot", quantity = 30},
                {name = "Dull Life Essence", quantity = 90},
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
        --     {
        --     name = "Shepherd",
        --     NPC = "Shepherd",
        --     repeatable = "No",
        --     questLevel = 6,
        --     resources = {
        --         {name = "Stone", quantity = 8},
        --     }, for copy paste
        -- },
    },

    purchase = {
        -- { 
        --     name = "Shopkeeper",
        --     purchasePrice = "1,000 SC",
        --     sellPrice = "150 SC"
        -- }, for copy paste
    },

    drops = {
    	
    	{name = "Slime", chance = "1.25%"},
    	{name = "Jel", chance = "6.25%"},
        {name = "Cloudsheep", chance = "15.0%"},
        {name = "Bananek", chance = "28.75%"},
        
    },

    dungeons = {
    {
        name = "Slime Garden",
        level = 10,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 7},
            {type = "Wooden", chance = "25%", quantity = 2},
        }
    },
    {
        name = "Plains Dungeon",
        level = 20,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 10},
            {type = "Wooden", chance = "25%", quantity = 3},
        }
    },
},

    minigames = {
        {name = "Idk"},
    },

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "Yes",

}

data["Dull Eternal Essence"] = {
    name = "Dull Eternal Essence",
    image = "Dull Eternal Essence.png",
    caption = "Essence of coldness, condensed from monster. Can be used to upgrade the skill and crafting.",
    
    inventoryTab = "Mats",

    crafting = {
    {
        name = "Dull Eternal Essence",
        quantity = 2,
        craftingType = "Alchemy",
        craftingLevel = 5,
        resources = {
            {name = "Eternal Essence", quantity = 1},
            {name = "Soul Crystal", quantity = 100},
        }
    },
    {
        name = "Dull Eternal Essence",
        quantity = 1,
        craftingType = "Alchemy",
        craftingLevel = 38,
        resources = {
            {name = "Misty wood", quantity = 3},
            {name = "Misty Fruit", quantity = 1},
            {name = "Lantern Bulb", quantity = 1},
        }
    },
},

    craftingUsage = {
    	{
            name = "Energetic Soul",
            craftingType = "Alchemy",
            craftingLevel = 15,
            resources = {
				{name = "Dull Life Essence", quantity = 40},
                {name = "Dull Raging Essence", quantity = 40},
				{name = "Dull Historic Essence", quantity = 40},
				{name = "Dull Nurturing Essence", quantity = 40},
				{name = "Dull Metal Essence", quantity = 40},
				{name = "Dull Eternal Essence", quantity = 40},
				{name = "Dull Ghostly Essence", quantity = 40},
				{name = "Green Herb", quantity = 10},
				{name = "Red Herb", quantity = 10},
				{name = "Blue Herb", quantity = 10},
				{name = "Soul Crystal", quantity = 1500},
            }
        },
        {
            name = "Eternal Essence",
            craftingType = "Alchemy",
            craftingLevel = 30,
            resources = {
				{name = "Dull Eternal Essence", quantity = 3},
				{name = "Soul Crystal", quantity = 150},
            }
        },
        {
            name = "Copper Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 20},
                {name = "Dull Eternal Essence", quantity = 20},
            }
        },
            {
            name = "Quartz Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Eternal Essence", quantity = 30},
            }
        },
            {
            name = "Quartz Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Eternal Essence", quantity = 30},
            }
        },
        {
            name = "Iron Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Iron Ingot", quantity = 25},
                {name = "Dull Eternal Essence", quantity = 45},
            }
        },
		{
            name = "Iron Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Iron Ingot", quantity = 25},
                {name = "Dull Eternal Essence", quantity = 45},
            }
        },
		{
            name = "Petrified Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 30},
                {name = "Dull Eternal Essence", quantity = 65},
            }
        },
		{
            name = "Petrified Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 40},
                {name = "Dull Eternal Essence", quantity = 65},
            }
        },
        {
		    name = "Copper Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 9,
            resources = {
                {name = "Copper Plate", quantity = 10},
                {name = "Dull Eternal Essence", quantity = 10},
            }
        },
        {
		    name = "Cotton Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 10,
            resources = {
                {name = "Cotton Fabric", quantity = 15},
                {name = "Dull Eternal Essence", quantity = 13},
            }
        },
        {
		    name = "Cotton Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 10,
            resources = {
                {name = "Cotton Fabric", quantity = 15},
                {name = "Dull Eternal Essence", quantity = 13},
            }
        },
        {
		    name = "Iron Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 19,
            resources = {
                {name = "Iron plate", quantity = 11},
                {name = "Dull Eternal Essence", quantity = 18},
            }
        },
        {
		    name = "Iron Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 20,
            resources = {
                {name = "Iron plate", quantity = 11},
                {name = "Dull Eternal Essence", quantity = 15},
            }
        },
        {
		    name = "Glowing Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 25,
            resources = {
                {name = "Glowing Fabric", quantity = 13},
                {name = "Dull Eternal Essence", quantity = 29},
            }
        },
        {
		    name = "Glowing Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 26,
            resources = {
                {name = "Glowing Fabric", quantity = 13},
                {name = "Dull Eternal Essence", quantity = 25},
            }
        },
        {
		    name = "Glowing Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 27,
            resources = {
                {name = "Glowing Fabric", quantity = 18},
                {name = "Dull Eternal Essence", quantity = 36},
            }
        },
        {
		    name = "Petrified Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 28,
            resources = {
                {name = "Petrified Plate", quantity = 26},
                {name = "Dull Eternal Essence", quantity = 45},
            }
        },
        {
		    name = "Silverleaf Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 33,
            resources = {
                {name = "Silverleaf Fabric", quantity = 21},
                {name = "Dull Eternal Essence", quantity = 52},
            }
        },
        {
		    name = "Silverleaf Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 34,
            resources = {
                {name = "Silverleaf Fabric", quantity = 30},
                {name = "Dull Eternal Essence", quantity = 65},
            }
        },
        {
		    name = "Stone Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 5,
            resources = {
                {name = "Stone", quantity = 10},
				{name = "Dull Life Essence", quantity = 1},
                {name = "Dull Raging Essence", quantity = 1},
				{name = "Dull Historic Essence", quantity = 1},
				{name = "Dull Nurturing Essence", quantity = 1},
				{name = "Dull Metal Essence", quantity = 1},
				{name = "Dull Eternal Essence", quantity = 1},
				{name = "Dull Ghostly Essence", quantity = 1},
            }
        },
        {
		    name = "Copper Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 6,
            resources = {
                {name = "Copper Rod", quantity = 3},
				{name = "Dull Life Essence", quantity = 2},
                {name = "Dull Raging Essence", quantity = 2},
				{name = "Dull Historic Essence", quantity = 2},
				{name = "Dull Nurturing Essence", quantity = 2},
				{name = "Dull Metal Essence", quantity = 2},
				{name = "Dull Eternal Essence", quantity = 2},
				{name = "Dull Ghostly Essence", quantity = 2},
            }
        },
        {
		    name = "Quartz Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 12,
            resources = {
                {name = "Refined Quartz Rod", quantity = 4},
				{name = "Dull Life Essence", quantity = 3},
                {name = "Dull Raging Essence", quantity = 3},
				{name = "Dull Historic Essence", quantity = 3},
				{name = "Dull Nurturing Essence", quantity = 3},
				{name = "Dull Metal Essence", quantity = 3},
				{name = "Dull Eternal Essence", quantity = 3},
				{name = "Dull Ghostly Essence", quantity = 3},
            }
        },
        {
		    name = "Iron Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 18,
            resources = {
                {name = "Iron Rod", quantity = 5},
				{name = "Dull Life Essence", quantity = 5},
                {name = "Dull Raging Essence", quantity = 5},
				{name = "Dull Historic Essence", quantity = 5},
				{name = "Dull Nurturing Essence", quantity = 5},
				{name = "Dull Metal Essence", quantity = 5},
				{name = "Dull Eternal Essence", quantity = 5},
				{name = "Dull Ghostly Essence", quantity = 5},
            }
        },
        {
		    name = "Petrified Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 24,
            resources = {
                {name = "Petrified Rod", quantity = 6},
				{name = "Dull Life Essence", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
				{name = "Dull Historic Essence", quantity = 7},
				{name = "Dull Nurturing Essence", quantity = 7},
				{name = "Dull Metal Essence", quantity = 7},
				{name = "Dull Eternal Essence", quantity = 7},
				{name = "Dull Ghostly Essence", quantity = 7},
            }
        },
        {
		    name = "Stinky Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 30,
            resources = {
                {name = "Stinky Rod", quantity = 7},
				{name = "Dull Life Essence", quantity = 11},
                {name = "Dull Raging Essence", quantity = 11},
				{name = "Dull Historic Essence", quantity = 11},
				{name = "Dull Nurturing Essence", quantity = 11},
				{name = "Dull Metal Essence", quantity = 11},
				{name = "Dull Eternal Essence", quantity = 11},
				{name = "Dull Ghostly Essence", quantity = 11},
            }
        },
    },

    questObjective = {},

    questReward = {},

    purchase = {},

    drops = {
        {name = "Snapper", chance = "12.5%"},
        {name = "Crusher", chance = "12.5%"},
		{name = "Dark Pumpkin", chance = "12.5%"},
    },

    dungeons = {
    {
        name = "Slime Garden",
        level = 10,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 7},
            {type = "Wooden", chance = "25%", quantity = 2},
        }
    },
    {
        name = "Plains Dungeon",
        level = 20,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 10},
            {type = "Wooden", chance = "25%", quantity = 3},
        }
    },
},
    minigames = {},
    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "Yes",
}
data["Dull Raging Essence"] = {
    name = "Dull Raging Essence",
    image = "Dull Raging Essence.png",
    caption = "Essence of rage. Can be used to upgrade the skill and crafting.",
    
    inventoryTab = "Mats",

    crafting = {
    {
        name = "Dull Raging Essence",
        quantity = 2,
        craftingType = "Alchemy",
        craftingLevel = 5,
        resources = {
            {name = "Raging Essence", quantity = 1},
            {name = "Soul Crystal", quantity = 100},
        }
    },
    {
        name = "Dull Raging Essence",
        quantity = 1,
        craftingType = "Alchemy",
        craftingLevel = 25,
        resources = {
            {name = "Sulfuric wood", quantity = 3},
            {name = "Spot Tomato", quantity = 1},
            {name = "Silver Leaf", quantity = 1},
        }
    },
},

    craftingUsage = {
    	{
            name = "Energetic Soul",
            craftingType = "Alchemy",
            craftingLevel = 15,
            resources = {
				{name = "Dull Life Essence", quantity = 40},
                {name = "Dull Raging Essence", quantity = 40},
				{name = "Dull Historic Essence", quantity = 40},
				{name = "Dull Nurturing Essence", quantity = 40},
				{name = "Dull Metal Essence", quantity = 40},
				{name = "Dull Eternal Essence", quantity = 40},
				{name = "Dull Ghostly Essence", quantity = 40},
				{name = "Green Herb", quantity = 10},
				{name = "Red Herb", quantity = 10},
				{name = "Blue Herb", quantity = 10},
				{name = "Soul Crystal", quantity = 1500},
            }
        },
		{
            name = "Raging Essence",
            craftingType = "Alchemy",
            craftingLevel = 30,
            resources = {
				{name = "Dull Raging Essence", quantity = 3},
				{name = "Soul Crystal", quantity = 150},
            }
        },
        {
            name = "Copper Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 20},
                {name = "Dull Raging Essence", quantity = 20},
            }
        },
        {
            name = "Copper Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Raging Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 25},
                {name = "Dull Raging Essence", quantity = 30},
            }
        },
		{
            name = "Quartz Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Raging Essence", quantity = 30},
            }
        },
		{
            name = "Quartz Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 25},
                {name = "Dull Raging Essence", quantity = 30},
            }
        },
        {
            name = "Iron Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Iron Ingot", quantity = 25},
                {name = "Dull Raging Essence", quantity = 45},
            }
        },
		{
            name = "Iron Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Iron Ingot", quantity = 35},
                {name = "Dull Raging Essence", quantity = 45},
            }
        },
		{
            name = "Iron Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Iron Ingot", quantity = 25},
                {name = "Dull Raging Essence", quantity = 45},
            }
        },
		{
            name = "Petrified Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 40},
                {name = "Dull Raging Essence", quantity = 65},
            }
        },
		{
            name = "Stinky Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Petrified Ingot", quantity = 30},
                {name = "Dull Raging Essence", quantity = 90},
            }
        },
		
        {
		    name = "Cotton Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 8,
            resources = {
                {name = "Cotton Fabric", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
            }
        },
        {
		    name = "Cotton Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 8,
            resources = {
                {name = "Cotton Fabric", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
            }
        },
		{
		    name = "Copper Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 8,
            resources = {
                {name = "Copper Plate", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
            }
        },
        {
		    name = "Coconut Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 14,
            resources = {
                {name = "Coconut Fabric", quantity = 9},
                {name = "Dull Raging Essence", quantity = 10},
            }
        },
		{
		    name = "Coconut Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 14,
            resources = {
                {name = "Coconut Fabric", quantity = 12},
                {name = "Dull Raging Essence", quantity = 14},
            }
        },
        {
		    name = "Yellow Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 19,
            resources = {
                {name = "Yellow Fabric", quantity = 11},
                {name = "Dull Raging Essence", quantity = 18},
            }
        },
        {
		    name = "Yellow Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 22,
            resources = {
                {name = "Yellow Fabric", quantity = 22},
                {name = "Dull Raging Essence", quantity = 28},
            }
        },
        {
		    name = "Glowing Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 25,
            resources = {
                {name = "Glowing Fabric", quantity = 13},
                {name = "Dull Raging Essence", quantity = 29},
            }
        },
        {
		    name = "Glowing Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 25,
            resources = {
                {name = "Glowing Fabric", quantity = 13},
                {name = "Dull Raging Essence", quantity = 29},
            }
        },
        {
		    name = "Silverleaf Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 31,
            resources = {
                {name = "Silverleaf Fabric", quantity = 15},
                {name = "Dull Raging Essence", quantity = 42},
            }
        },
        {
		    name = "Stinky Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 32,
            resources = {
                {name = "Stinky Plate", quantity = 15},
                {name = "Dull Raging Essence", quantity = 36},
            }
        },
        {
		    name = "Stone Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 5,
            resources = {
                {name = "Stone", quantity = 10},
				{name = "Dull Life Essence", quantity = 1},
                {name = "Dull Raging Essence", quantity = 1},
				{name = "Dull Historic Essence", quantity = 1},
				{name = "Dull Nurturing Essence", quantity = 1},
				{name = "Dull Metal Essence", quantity = 1},
				{name = "Dull Eternal Essence", quantity = 1},
				{name = "Dull Ghostly Essence", quantity = 1},
            }
        },
        {
		    name = "Copper Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 6,
            resources = {
                {name = "Copper Rod", quantity = 3},
				{name = "Dull Life Essence", quantity = 2},
                {name = "Dull Raging Essence", quantity = 2},
				{name = "Dull Historic Essence", quantity = 2},
				{name = "Dull Nurturing Essence", quantity = 2},
				{name = "Dull Metal Essence", quantity = 2},
				{name = "Dull Eternal Essence", quantity = 2},
				{name = "Dull Ghostly Essence", quantity = 2},
            }
        },
        {
		    name = "Quartz Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 12,
            resources = {
                {name = "Refined Quartz Rod", quantity = 4},
				{name = "Dull Life Essence", quantity = 3},
                {name = "Dull Raging Essence", quantity = 3},
				{name = "Dull Historic Essence", quantity = 3},
				{name = "Dull Nurturing Essence", quantity = 3},
				{name = "Dull Metal Essence", quantity = 3},
				{name = "Dull Eternal Essence", quantity = 3},
				{name = "Dull Ghostly Essence", quantity = 3},
            }
        },
        {
		    name = "Iron Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 18,
            resources = {
                {name = "Iron Rod", quantity = 5},
				{name = "Dull Life Essence", quantity = 5},
                {name = "Dull Raging Essence", quantity = 5},
				{name = "Dull Historic Essence", quantity = 5},
				{name = "Dull Nurturing Essence", quantity = 5},
				{name = "Dull Metal Essence", quantity = 5},
				{name = "Dull Eternal Essence", quantity = 5},
				{name = "Dull Ghostly Essence", quantity = 5},
            }
        },
        {
		    name = "Petrified Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 24,
            resources = {
                {name = "Petrified Rod", quantity = 6},
				{name = "Dull Life Essence", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
				{name = "Dull Historic Essence", quantity = 7},
				{name = "Dull Nurturing Essence", quantity = 7},
				{name = "Dull Metal Essence", quantity = 7},
				{name = "Dull Eternal Essence", quantity = 7},
				{name = "Dull Ghostly Essence", quantity = 7},
            }
        },
        {
		    name = "Stinky Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 30,
            resources = {
                {name = "Stinky Rod", quantity = 7},
				{name = "Dull Life Essence", quantity = 11},
                {name = "Dull Raging Essence", quantity = 11},
				{name = "Dull Historic Essence", quantity = 11},
				{name = "Dull Nurturing Essence", quantity = 11},
				{name = "Dull Metal Essence", quantity = 11},
				{name = "Dull Eternal Essence", quantity = 11},
				{name = "Dull Ghostly Essence", quantity = 11},
            }
        },
    },

    questObjective = {},

    questReward = {},

    purchase = {},

    drops = {
        {name = "Black Cloudsheep", chance = "12.5%"},
        {name = "Licke", chance = "12.5%"},
    },

    dungeons = {
    {
        name = "Slime Garden",
        level = 10,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 7},
            {type = "Wooden", chance = "25%", quantity = 2},
        }
    },
    {
        name = "Plains Dungeon",
        level = 20,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 10},
            {type = "Wooden", chance = "25%", quantity = 3},
        }
    },
},
    minigames = {},
    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "Yes",
}
data["Dull Ghostly Essence"] = {
    name = "Dull Ghostly Essence",
    image = "Dull Ghostly Essence.png",
    caption = "Essence of ghost. Can be used to upgrade the skill and crafting.",
    
    inventoryTab = "Mats",

    crafting = {
    {
        name = "Dull Ghostly Essence",
        quantity = 2,
        craftingType = "Alchemy",
        craftingLevel = 5,
        resources = {
            {name = "Ghostly Essence", quantity = 1},
            {name = "Soul Crystal", quantity = 100},
        }
    },
},

    craftingUsage = {
    	{
            name = "Energetic Soul",
            craftingType = "Alchemy",
            craftingLevel = 15,
            resources = {
				{name = "Dull Life Essence", quantity = 40},
                {name = "Dull Raging Essence", quantity = 40},
				{name = "Dull Historic Essence", quantity = 40},
				{name = "Dull Nurturing Essence", quantity = 40},
				{name = "Dull Metal Essence", quantity = 40},
				{name = "Dull Eternal Essence", quantity = 40},
				{name = "Dull Ghostly Essence", quantity = 40},
				{name = "Green Herb", quantity = 10},
				{name = "Red Herb", quantity = 10},
				{name = "Blue Herb", quantity = 10},
				{name = "Soul Crystal", quantity = 1500},
            }
        },
		{
            name = "Ghostly Essence",
            craftingType = "Alchemy",
            craftingLevel = 30,
            resources = {
				{name = "Dull Ghostly Essence", quantity = 3},
				{name = "Soul Crystal", quantity = 150},
            }
        },
        {
            name = "Copper Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Ghostly Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Ghostly Essence", quantity = 30},
            }
        },
        {
            name = "Iron Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Iron Ingot", quantity = 35},
                {name = "Dull Ghostly Essence", quantity = 45},
            }
        },
		{
            name = "Petrified Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 30},
                {name = "Dull Ghostly Essence", quantity = 65},
            }
        },
		
        {
		    name = "Cotton Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 9,
            resources = {
                {name = "Cotton Fabric", quantity = 10},
                {name = "Dull Ghostly Essence", quantity = 10},
            }
        },
        {
		    name = "Quartz Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Plate", quantity = 12},
                {name = "Dull Ghostly Essence", quantity = 14},
            }
        },
        {
		    name = "Yellow Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 20,
            resources = {
                {name = "Yellow Fabric", quantity = 11},
                {name = "Dull Ghostly Essence", quantity = 15},
            }
        },
        {
		    name = "Iron Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 22,
            resources = {
                {name = "Iron Plate", quantity = 22},
                {name = "Dull Ghostly Essence", quantity = 28},
            }
        },
        {
		    name = "Glowing Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 26,
            resources = {
                {name = "Silverleaf Fabric", quantity = 13},
                {name = "Dull Ghostly Essence", quantity = 25},
            }
        },
        {
		    name = "Glowing Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 28,
            resources = {
                {name = "Glowing Fabric", quantity = 26},
                {name = "Dull Ghostly Essence", quantity = 36},
            }
        },
		{
		    name = "Silverleaf Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 31,
            resources = {
                {name = "Silverleaf Fabric", quantity = 15},
                {name = "Dull Ghostly Essence", quantity = 42},
            }
        },
		{
		    name = "Silverleaf Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 31,
            resources = {
                {name = "Silverleaf Fabric", quantity = 15},
                {name = "Dull Ghostly Essence", quantity = 42},
            }
        },
        {
		    name = "Stone Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 5,
            resources = {
                {name = "Stone", quantity = 10},
				{name = "Dull Life Essence", quantity = 1},
                {name = "Dull Raging Essence", quantity = 1},
				{name = "Dull Historic Essence", quantity = 1},
				{name = "Dull Nurturing Essence", quantity = 1},
				{name = "Dull Metal Essence", quantity = 1},
				{name = "Dull Eternal Essence", quantity = 1},
				{name = "Dull Ghostly Essence", quantity = 1},
            }
        },
        {
		    name = "Copper Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 6,
            resources = {
                {name = "Copper Rod", quantity = 3},
				{name = "Dull Life Essence", quantity = 2},
                {name = "Dull Raging Essence", quantity = 2},
				{name = "Dull Historic Essence", quantity = 2},
				{name = "Dull Nurturing Essence", quantity = 2},
				{name = "Dull Metal Essence", quantity = 2},
				{name = "Dull Eternal Essence", quantity = 2},
				{name = "Dull Ghostly Essence", quantity = 2},
            }
        },
        {
		    name = "Quartz Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 12,
            resources = {
                {name = "Refined Quartz Rod", quantity = 4},
				{name = "Dull Life Essence", quantity = 3},
                {name = "Dull Raging Essence", quantity = 3},
				{name = "Dull Historic Essence", quantity = 3},
				{name = "Dull Nurturing Essence", quantity = 3},
				{name = "Dull Metal Essence", quantity = 3},
				{name = "Dull Eternal Essence", quantity = 3},
				{name = "Dull Ghostly Essence", quantity = 3},
            }
        },
        {
		    name = "Iron Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 18,
            resources = {
                {name = "Iron Rod", quantity = 5},
				{name = "Dull Life Essence", quantity = 5},
                {name = "Dull Raging Essence", quantity = 5},
				{name = "Dull Historic Essence", quantity = 5},
				{name = "Dull Nurturing Essence", quantity = 5},
				{name = "Dull Metal Essence", quantity = 5},
				{name = "Dull Eternal Essence", quantity = 5},
				{name = "Dull Ghostly Essence", quantity = 5},
            }
        },
        {
		    name = "Petrified Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 24,
            resources = {
                {name = "Petrified Rod", quantity = 6},
				{name = "Dull Life Essence", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
				{name = "Dull Historic Essence", quantity = 7},
				{name = "Dull Nurturing Essence", quantity = 7},
				{name = "Dull Metal Essence", quantity = 7},
				{name = "Dull Eternal Essence", quantity = 7},
				{name = "Dull Ghostly Essence", quantity = 7},
            }
        },
        {
		    name = "Stinky Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 30,
            resources = {
                {name = "Stinky Rod", quantity = 7},
				{name = "Dull Life Essence", quantity = 11},
                {name = "Dull Raging Essence", quantity = 11},
				{name = "Dull Historic Essence", quantity = 11},
				{name = "Dull Nurturing Essence", quantity = 11},
				{name = "Dull Metal Essence", quantity = 11},
				{name = "Dull Eternal Essence", quantity = 11},
				{name = "Dull Ghostly Essence", quantity = 11},
            }
        },
    },

    questObjective = {},

    questReward = {},

    purchase = {},

    drops = {
        {name = "Troppo", chance = "12.5%"},
        {name = "Monoghoul", chance = "12.5%"},
		{name = "Spot Slime", chance = "12.5%"},
        {name = "Soultree", chance = "8.33%"},
    },

    dungeons = {
    {
        name = "Slime Garden",
        level = 10,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 7},
            {type = "Wooden", chance = "25%", quantity = 2},
        }
    },
    {
        name = "Plains Dungeon",
        level = 20,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 10},
            {type = "Wooden", chance = "25%", quantity = 3},
        }
    },
},
    minigames = {},
    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "Yes",
}
data["Dull Metal Essence"] = {
    name = "Dull Metal Essence",
    image = "Dull Metal Essence.png",
    caption = "Essence condensed from metallic monster. Can be used to upgrade the skill and crafting.",
    
    inventoryTab = "Mats",

    crafting = {
    {
        name = "Dull Metal Essence",
        quantity = 2,
        craftingType = "Alchemy",
        craftingLevel = 5,
        resources = {
            {name = "Metal Essence", quantity = 1},
            {name = "Soul Crystal", quantity = 100},
        }
    },
},

    craftingUsage = {
    	{
            name = "Energetic Soul",
            craftingType = "Alchemy",
            craftingLevel = 15,
            resources = {
				{name = "Dull Life Essence", quantity = 40},
                {name = "Dull Raging Essence", quantity = 40},
				{name = "Dull Historic Essence", quantity = 40},
				{name = "Dull Nurturing Essence", quantity = 40},
				{name = "Dull Metal Essence", quantity = 40},
				{name = "Dull Eternal Essence", quantity = 40},
				{name = "Dull Ghostly Essence", quantity = 40},
				{name = "Green Herb", quantity = 10},
				{name = "Red Herb", quantity = 10},
				{name = "Blue Herb", quantity = 10},
				{name = "Soul Crystal", quantity = 1500},
            }
        },
		{
            name = "Metal Essence",
            craftingType = "Alchemy",
            craftingLevel = 30,
            resources = {
				{name = "Dull Metal Essence", quantity = 3},
				{name = "Soul Crystal", quantity = 150},
            }
        },
        {
            name = "Copper Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 20},
                {name = "Dull Metal Essence", quantity = 20},
            }
        },
        {
            name = "Quartz Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 25},
                {name = "Dull Metal Essence", quantity = 30},
            }
		},
		{
            name = "Petrified Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 30},
                {name = "Dull Metal Essence", quantity = 65},
            }
        },
		{
            name = "Petrified Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 30},
                {name = "Dull Metal Essence", quantity = 65},
            }
        },
        {
		    name = "Quartz Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 13,
            resources = {
                {name = "Refined Quartz plate", quantity = 9},
                {name = "Dull Metal Essence", quantity = 12},
            }
        },
        {
		    name = "Quartz Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 16,
            resources = {
                {name = "Refined Quartz plate", quantity = 18},
                {name = "Dull Metal Essence", quantity = 18},
            }
        },
        {
		    name = "Yellow Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 19,
            resources = {
                {name = "Glowing Fabric", quantity = 11},
                {name = "Dull Metal Essence", quantity = 18},
            }
        },
        {
		    name = "Petrified Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Plate", quantity = 18},
                {name = "Dull Metal Essence", quantity = 36},
            }
        },
        {
		    name = "Stinky Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 31,
            resources = {
                {name = "Stinky Plate", quantity = 15},
                {name = "Dull Metal Essence", quantity = 42},
            }
        },
        {
		    name = "Silverleaf Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 33,
            resources = {
                {name = "Silverleaf Fabric", quantity = 21},
                {name = "Dull Metal Essence", quantity = 52},
            }
        },
		{
		    name = "Silverleaf Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 34,
            resources = {
                {name = "Silverleaf Fabric", quantity = 30},
                {name = "Dull Metal Essence", quantity = 65},
            }
        },
        {
		    name = "Stone Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 5,
            resources = {
                {name = "Stone", quantity = 10},
				{name = "Dull Life Essence", quantity = 1},
                {name = "Dull Raging Essence", quantity = 1},
				{name = "Dull Historic Essence", quantity = 1},
				{name = "Dull Nurturing Essence", quantity = 1},
				{name = "Dull Metal Essence", quantity = 1},
				{name = "Dull Eternal Essence", quantity = 1},
				{name = "Dull Ghostly Essence", quantity = 1},
            }
        },
        {
		    name = "Copper Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 6,
            resources = {
                {name = "Copper Rod", quantity = 3},
				{name = "Dull Life Essence", quantity = 2},
                {name = "Dull Raging Essence", quantity = 2},
				{name = "Dull Historic Essence", quantity = 2},
				{name = "Dull Nurturing Essence", quantity = 2},
				{name = "Dull Metal Essence", quantity = 2},
				{name = "Dull Eternal Essence", quantity = 2},
				{name = "Dull Ghostly Essence", quantity = 2},
            }
        },
        {
		    name = "Quartz Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 12,
            resources = {
                {name = "Refined Quartz Rod", quantity = 4},
				{name = "Dull Life Essence", quantity = 3},
                {name = "Dull Raging Essence", quantity = 3},
				{name = "Dull Historic Essence", quantity = 3},
				{name = "Dull Nurturing Essence", quantity = 3},
				{name = "Dull Metal Essence", quantity = 3},
				{name = "Dull Eternal Essence", quantity = 3},
				{name = "Dull Ghostly Essence", quantity = 3},
            }
        },
        {
		    name = "Iron Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 18,
            resources = {
                {name = "Iron Rod", quantity = 5},
				{name = "Dull Life Essence", quantity = 5},
                {name = "Dull Raging Essence", quantity = 5},
				{name = "Dull Historic Essence", quantity = 5},
				{name = "Dull Nurturing Essence", quantity = 5},
				{name = "Dull Metal Essence", quantity = 5},
				{name = "Dull Eternal Essence", quantity = 5},
				{name = "Dull Ghostly Essence", quantity = 5},
            }
        },
        {
		    name = "Petrified Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 24,
            resources = {
                {name = "Petrified Rod", quantity = 6},
				{name = "Dull Life Essence", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
				{name = "Dull Historic Essence", quantity = 7},
				{name = "Dull Nurturing Essence", quantity = 7},
				{name = "Dull Metal Essence", quantity = 7},
				{name = "Dull Eternal Essence", quantity = 7},
				{name = "Dull Ghostly Essence", quantity = 7},
            }
        },
        {
		    name = "Stinky Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 30,
            resources = {
                {name = "Stinky Rod", quantity = 7},
				{name = "Dull Life Essence", quantity = 11},
                {name = "Dull Raging Essence", quantity = 11},
				{name = "Dull Historic Essence", quantity = 11},
				{name = "Dull Nurturing Essence", quantity = 11},
				{name = "Dull Metal Essence", quantity = 11},
				{name = "Dull Eternal Essence", quantity = 11},
				{name = "Dull Ghostly Essence", quantity = 11},
            }
        },
    },

    questObjective = {},

    questReward = {},

    purchase = {},

    drops = {
        {name = "Glowsnail", chance = "12.5%"},
        {name = "Sadling", chance = "12.5%"},
    },

    dungeons = {
    {
        name = "Slime Garden",
        level = 10,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 7},
            {type = "Wooden", chance = "25%", quantity = 2},
        }
    },
    {
        name = "Plains Dungeon",
        level = 20,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 10},
            {type = "Wooden", chance = "25%", quantity = 3},
        }
    },
},
    minigames = {},
    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "Yes",
}
data["Dull Historic Essence"] = {
    name = "Dull Historic Essence",
    image = "Dull Historic Essence.png",
    caption = "Essence of history, condensed from monster. Can be used to upgrade the skill and crafting.",
    
    inventoryTab = "Mats",

    crafting = {
    {
        name = "Dull Historic Essence",
        quantity = 2,
        craftingType = "Alchemy",
        craftingLevel = 5,
        resources = {
            {name = "Historic Essence", quantity = 1},
            {name = "Soul Crystal", quantity = 100},
        }
    },
    {
        name = "Dull Historic Essence",
        quantity = 1,
        craftingType = "Alchemy",
        craftingLevel = 30,
        resources = {
            {name = "Acacia wood", quantity = 3},
            {name = "Aloe Vera", quantity = 1},
            {name = "Pineapple", quantity = 1},
        }
    },
},

    craftingUsage = {
    	{
            name = "Energetic Soul",
            craftingType = "Alchemy",
            craftingLevel = 15,
            resources = {
				{name = "Dull Life Essence", quantity = 40},
                {name = "Dull Raging Essence", quantity = 40},
				{name = "Dull Historic Essence", quantity = 40},
				{name = "Dull Nurturing Essence", quantity = 40},
				{name = "Dull Metal Essence", quantity = 40},
				{name = "Dull Eternal Essence", quantity = 40},
				{name = "Dull Ghostly Essence", quantity = 40},
				{name = "Green Herb", quantity = 10},
				{name = "Red Herb", quantity = 10},
				{name = "Blue Herb", quantity = 10},
				{name = "Soul Crystal", quantity = 1500},
            }
        },
		{
            name = "Historic Essence",
            craftingType = "Alchemy",
            craftingLevel = 30,
            resources = {
				{name = "Dull Historic Essence", quantity = 3},
				{name = "Soul Crystal", quantity = 150},
            }
        },
            {
            name = "Quartz Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Historic Essence", quantity = 30},
            }
        },
            {
            name = "Quartz Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Historic Essence", quantity = 30},
            }
        },
        {
            name = "Iron Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Iron Ingot", quantity = 35},
                {name = "Dull Historic Essence", quantity = 45},
            }
        },
		{
            name = "Petrified Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 30},
                {name = "Dull Historic Essence", quantity = 65},
            }
        },
		{
            name = "Petrified Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 40},
                {name = "Dull Historic Essence", quantity = 65},
            }
        },
		{
            name = "Stinky Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Stinky Ingot", quantity = 30},
                {name = "Dull Historic Essence", quantity = 90},
            }
        },
		{
            name = "Stinky Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Stinky Ingot", quantity = 40},
                {name = "Dull Historic Essence", quantity = 90},
            }
        },
		{
            name = "Stinky Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Stinky Ingot", quantity = 40},
                {name = "Dull Historic Essence", quantity = 90},
            }
        },
        {
		    name = "Cotton Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 7,
            resources = {
                {name = "Cotton Fabric", quantity = 7},
                {name = "Dull Historic Essence", quantity = 8},
            }
        },
        {
		    name = "Copper Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 10,
            resources = {
                {name = "Copper Plate", quantity = 15},
                {name = "Dull Historic Essence", quantity = 13},
            }
        },
		{
		    name = "Cotton Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 10,
            resources = {
                {name = "Cotton Fabric", quantity = 15},
                {name = "Dull Historic Essence", quantity = 13},
            }
        },
		{
		    name = "Coconut Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 13,
            resources = {
                {name = "Coconut Fabric", quantity = 9},
                {name = "Dull Historic Essence", quantity = 12},
            }
        },
		{
		    name = "Quartz Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 14,
            resources = {
                {name = "Refined Quartz Plate", quantity = 9},
                {name = "Dull Historic Essence", quantity = 10},
            }
        },
		{
		    name = "Coconut Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 16,
            resources = {
                {name = "Coconut Fabric", quantity = 18},
                {name = "Dull Historic Essence", quantity = 18},
            }
        },
		{
		    name = "Yellow Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 19,
            resources = {
                {name = "Yellow Fabric", quantity = 11},
                {name = "Dull Historic Essence", quantity = 18},
            }
        },
		{
		    name = "Yellow Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 20,
            resources = {
                {name = "Yellow Fabric", quantity = 11},
                {name = "Dull Historic Essence", quantity = 15},
            }
        },
        {
		    name = "Glowing Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 28,
            resources = {
                {name = "Glowing Fabric", quantity = 26},
                {name = "Dull Historic Essence", quantity = 45},
            }
        },
        {
		    name = "Silverleaf Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 32,
            resources = {
                {name = "Silverleaf Fabric", quantity = 15},
                {name = "Dull Historic Essence", quantity = 36},
            }
        },
        {
		    name = "Stone Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 5,
            resources = {
                {name = "Stone", quantity = 10},
				{name = "Dull Life Essence", quantity = 1},
                {name = "Dull Raging Essence", quantity = 1},
				{name = "Dull Historic Essence", quantity = 1},
				{name = "Dull Nurturing Essence", quantity = 1},
				{name = "Dull Metal Essence", quantity = 1},
				{name = "Dull Eternal Essence", quantity = 1},
				{name = "Dull Ghostly Essence", quantity = 1},
            }
        },
        {
		    name = "Copper Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 6,
            resources = {
                {name = "Copper Rod", quantity = 3},
				{name = "Dull Life Essence", quantity = 2},
                {name = "Dull Raging Essence", quantity = 2},
				{name = "Dull Historic Essence", quantity = 2},
				{name = "Dull Nurturing Essence", quantity = 2},
				{name = "Dull Metal Essence", quantity = 2},
				{name = "Dull Eternal Essence", quantity = 2},
				{name = "Dull Ghostly Essence", quantity = 2},
            }
        },
        {
		    name = "Quartz Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 12,
            resources = {
                {name = "Refined Quartz Rod", quantity = 4},
				{name = "Dull Life Essence", quantity = 3},
                {name = "Dull Raging Essence", quantity = 3},
				{name = "Dull Historic Essence", quantity = 3},
				{name = "Dull Nurturing Essence", quantity = 3},
				{name = "Dull Metal Essence", quantity = 3},
				{name = "Dull Eternal Essence", quantity = 3},
				{name = "Dull Ghostly Essence", quantity = 3},
            }
        },
        {
		    name = "Iron Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 18,
            resources = {
                {name = "Iron Rod", quantity = 5},
				{name = "Dull Life Essence", quantity = 5},
                {name = "Dull Raging Essence", quantity = 5},
				{name = "Dull Historic Essence", quantity = 5},
				{name = "Dull Nurturing Essence", quantity = 5},
				{name = "Dull Metal Essence", quantity = 5},
				{name = "Dull Eternal Essence", quantity = 5},
				{name = "Dull Ghostly Essence", quantity = 5},
            }
        },
        {
		    name = "Petrified Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 24,
            resources = {
                {name = "Petrified Rod", quantity = 6},
				{name = "Dull Life Essence", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
				{name = "Dull Historic Essence", quantity = 7},
				{name = "Dull Nurturing Essence", quantity = 7},
				{name = "Dull Metal Essence", quantity = 7},
				{name = "Dull Eternal Essence", quantity = 7},
				{name = "Dull Ghostly Essence", quantity = 7},
            }
        },
        {
		    name = "Stinky Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 30,
            resources = {
                {name = "Stinky Rod", quantity = 7},
				{name = "Dull Life Essence", quantity = 11},
                {name = "Dull Raging Essence", quantity = 11},
				{name = "Dull Historic Essence", quantity = 11},
				{name = "Dull Nurturing Essence", quantity = 11},
				{name = "Dull Metal Essence", quantity = 11},
				{name = "Dull Eternal Essence", quantity = 11},
				{name = "Dull Ghostly Essence", quantity = 11},
            }
        },
    },

    questObjective = {},

    questReward = {},

    purchase = {},

    drops = {
        {name = "Licki", chance = "12.5%"},
        {name = "Stinky Sheep", chance = "12.5%"},
    },

    dungeons = {
    {
        name = "Slime Garden",
        level = 10,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 7},
            {type = "Wooden", chance = "25%", quantity = 2},
        }
    },
    {
        name = "Plains Dungeon",
        level = 20,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 10},
            {type = "Wooden", chance = "25%", quantity = 3},
        }
    },
},
    minigames = {},
    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "Yes",
}
data["Dull Nurturing Essence"] = {
    name = "Dull Nurturing Essence",
    image = "Dull Nurturing Essence.png",
    caption = "Essence of nurturing, condensed from monster. Can be used to upgrade the skill and crafting.",
    
    inventoryTab = "Mats",

    crafting = {
    {
        name = "Dull Nurturing Essence",
        quantity = 2,
        craftingType = "Alchemy",
        craftingLevel = 5,
        resources = {
            {name = "Nurturing Essence", quantity = 1},
            {name = "Soul Crystal", quantity = 100},
        }
    },
    {
        name = "Dull Nurturing Essence",
        quantity = 1,
        craftingType = "Alchemy",
        craftingLevel = 15,
        resources = {
            {name = "Coconut wood", quantity = 3},
            {name = "Coconut", quantity = 1},
            {name = "Sea Grapes", quantity = 1},
        }
    },
},

    craftingUsage = {
    	{
            name = "Energetic Soul",
            craftingType = "Alchemy",
            craftingLevel = 15,
            resources = {
				{name = "Dull Life Essence", quantity = 40},
                {name = "Dull Raging Essence", quantity = 40},
				{name = "Dull Historic Essence", quantity = 40},
				{name = "Dull Nurturing Essence", quantity = 40},
				{name = "Dull Metal Essence", quantity = 40},
				{name = "Dull Eternal Essence", quantity = 40},
				{name = "Dull Ghostly Essence", quantity = 40},
				{name = "Green Herb", quantity = 10},
				{name = "Red Herb", quantity = 10},
				{name = "Blue Herb", quantity = 10},
				{name = "Soul Crystal", quantity = 1500},
            }
        },
		{
            name = "Nurturing Essence",
            craftingType = "Alchemy",
            craftingLevel = 30,
            resources = {
				{name = "Dull Nurturing Essence", quantity = 3},
				{name = "Soul Crystal", quantity = 150},
            }
        },
        {
            name = "Copper Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
		{
            name = "Copper Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
		{
            name = "Copper Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
		{
            name = "Copper Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
                {name = "Copper Ingot", quantity = 20},
                {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
            {
            name = "Quartz Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
                {name = "Refined Quartz Ingot", quantity = 20},
                {name = "Dull Nurturing Essence", quantity = 30},
            }
        },
        {
            name = "Iron Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
                {name = "Iron Ingot", quantity = 25},
                {name = "Dull Nurturing Essence", quantity = 45},
            }
        },
		{
            name = "Petrified Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 30},
                {name = "Dull Nurturing Essence", quantity = 65},
            }
        },
		{
            name = "Petrified Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
                {name = "Petrified Ingot", quantity = 30},
                {name = "Dull Nurturing Essence", quantity = 65},
            }
        },
		{
            name = "Stinky Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Stinky Ingot", quantity = 30},
                {name = "Dull Nurturing Essence", quantity = 90},
            }
        },
		{
            name = "Stinky Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Stinky Ingot", quantity = 40},
                {name = "Dull Nurturing Essence", quantity = 90},
            }
        },
		{
            name = "Stinky Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Stinky Ingot", quantity = 30},
                {name = "Dull Nurturing Essence", quantity = 90},
            }
        },
		{
            name = "Stinky Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
                {name = "Stinky Ingot", quantity = 40},
                {name = "Dull Nurturing Essence", quantity = 90},
            }
        },
		{
		    name = "Cotton Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 7,
            resources = {
                {name = "Cotton Fabric", quantity = 7},
                {name = "Dull Nurturing Essence", quantity = 8},
            }
        },
		{
		    name = "Cotton Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 7,
            resources = {
                {name = "Cotton Fabric", quantity = 7},
                {name = "Dull Nurturing Essence", quantity = 8},
            }
        },
        {
		    name = "Copper Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 7,
            resources = {
                {name = "Copper Plate", quantity = 7},
                {name = "Dull Nurturing Essence", quantity = 8},
            }
        },
        {
		    name = "Cotton Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 9,
            resources = {
                {name = "Cotton Fabric", quantity = 10},
                {name = "Dull Nurturing Essence", quantity = 10},
            }
        },
        {
		    name = "Coconut Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 15,
            resources = {
                {name = "Coconut Fabric", quantity = 12},
                {name = "Dull Nurturing Essence", quantity = 14},
            }
        },
		{
		    name = "Coconut Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 15,
            resources = {
                {name = "Coconut Fabric", quantity = 12},
                {name = "Dull Nurturing Essence", quantity = 14},
            }
        },
		{
		    name = "Coconut Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 15,
            resources = {
                {name = "Coconut Fabric", quantity = 18},
                {name = "Dull Nurturing Essence", quantity = 18},
            }
        },
		{
		    name = "Yellow Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 20,
            resources = {
                {name = "Yellow Fabric", quantity = 11},
                {name = "Dull Nurturing Essence", quantity = 15},
            }
        },
        {
		    name = "Iron Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 21,
            resources = {
                {name = "Iron plate", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 22},
            }
        },
		{
		    name = "Yellow Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 21,
            resources = {
                {name = "Yellow Fabric", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 22},
            }
        },
		{
		    name = "Yellow Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 21,
            resources = {
                {name = "Yellow Fabric", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 22},
            }
        },
		{
		    name = "Yellow Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 22,
            resources = {
                {name = "Yellow Fabric", quantity = 22},
                {name = "Dull Nurturing Essence", quantity = 28},
            }
        },
		{
		    name = "Yellow Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 22,
            resources = {
                {name = "Yellow Fabric", quantity = 22},
                {name = "Dull Nurturing Essence", quantity = 28},
            }
        },
        {
		    name = "Petrified Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 25,
            resources = {
                {name = "Petrified Plate", quantity = 13},
                {name = "Dull Nurturing Essence", quantity = 29},
            }
        },
        {
		    name = "Glowing Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 26,
            resources = {
                {name = "Glowing Fabric", quantity = 13},
                {name = "Dull Nurturing Essence", quantity = 25},
            }
        },
		{
		    name = "Glowing Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 27,
            resources = {
                {name = "Glowing Fabric", quantity = 18},
                {name = "Dull Nurturing Essence", quantity = 36},
            }
        },
		{
		    name = "Glowing Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 27,
            resources = {
                {name = "Glowing Fabric", quantity = 18},
                {name = "Dull Nurturing Essence", quantity = 36},
            }
        },
        {
		    name = "Silverleaf Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 32,
            resources = {
                {name = "Silverleaf Fabric", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 36},
            }
        },
		{
		    name = "Silverleaf Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 32,
            resources = {
                {name = "Silverleaf Fabric", quantity = 15},
                {name = "Dull Nurturing Essence", quantity = 36},
            }
        },
		{
		    name = "Silverleaf Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 33,
            resources = {
                {name = "Silverleaf Fabric", quantity = 21},
                {name = "Dull Nurturing Essence", quantity = 52},
            }
        },
		{
		    name = "Silverleaf Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 34,
            resources = {
                {name = "Silverleaf Fabric", quantity = 30},
                {name = "Dull Nurturing Essence", quantity = 65},
            }
        },
        {
		    name = "Stone Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 5,
            resources = {
                {name = "Stone", quantity = 10},
				{name = "Dull Life Essence", quantity = 1},
                {name = "Dull Raging Essence", quantity = 1},
				{name = "Dull Historic Essence", quantity = 1},
				{name = "Dull Nurturing Essence", quantity = 1},
				{name = "Dull Metal Essence", quantity = 1},
				{name = "Dull Eternal Essence", quantity = 1},
				{name = "Dull Ghostly Essence", quantity = 1},
            }
        },
        {
		    name = "Copper Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 6,
            resources = {
                {name = "Copper Rod", quantity = 3},
				{name = "Dull Life Essence", quantity = 2},
                {name = "Dull Raging Essence", quantity = 2},
				{name = "Dull Historic Essence", quantity = 2},
				{name = "Dull Nurturing Essence", quantity = 2},
				{name = "Dull Metal Essence", quantity = 2},
				{name = "Dull Eternal Essence", quantity = 2},
				{name = "Dull Ghostly Essence", quantity = 2},
            }
        },
        {
		    name = "Quartz Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 12,
            resources = {
                {name = "Refined Quartz Rod", quantity = 4},
				{name = "Dull Life Essence", quantity = 3},
                {name = "Dull Raging Essence", quantity = 3},
				{name = "Dull Historic Essence", quantity = 3},
				{name = "Dull Nurturing Essence", quantity = 3},
				{name = "Dull Metal Essence", quantity = 3},
				{name = "Dull Eternal Essence", quantity = 3},
				{name = "Dull Ghostly Essence", quantity = 3},
            }
        },
        {
		    name = "Iron Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 18,
            resources = {
                {name = "Iron Rod", quantity = 5},
				{name = "Dull Life Essence", quantity = 5},
                {name = "Dull Raging Essence", quantity = 5},
				{name = "Dull Historic Essence", quantity = 5},
				{name = "Dull Nurturing Essence", quantity = 5},
				{name = "Dull Metal Essence", quantity = 5},
				{name = "Dull Eternal Essence", quantity = 5},
				{name = "Dull Ghostly Essence", quantity = 5},
            }
        },
        {
		    name = "Petrified Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 24,
            resources = {
                {name = "Petrified Rod", quantity = 6},
				{name = "Dull Life Essence", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
				{name = "Dull Historic Essence", quantity = 7},
				{name = "Dull Nurturing Essence", quantity = 7},
				{name = "Dull Metal Essence", quantity = 7},
				{name = "Dull Eternal Essence", quantity = 7},
				{name = "Dull Ghostly Essence", quantity = 7},
            }
        },
        {
		    name = "Stinky Ring",
            craftingType = "Jewelry Crafting",
            craftingLevel = 30,
            resources = {
                {name = "Stinky Rod", quantity = 7},
				{name = "Dull Life Essence", quantity = 11},
                {name = "Dull Raging Essence", quantity = 11},
				{name = "Dull Historic Essence", quantity = 11},
				{name = "Dull Nurturing Essence", quantity = 11},
				{name = "Dull Metal Essence", quantity = 11},
				{name = "Dull Eternal Essence", quantity = 11},
				{name = "Dull Ghostly Essence", quantity = 11},
            }
        },
    },

    questObjective = {},

    questReward = {},

    purchase = {},

    drops = {
        {name = "Squishling", chance = "12.5%"},
        {name = "Droppo", chance = "12.5%"},
    },

    dungeons = {
    {
        name = "Slime Garden",
        level = 10,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 7},
            {type = "Wooden", chance = "25%", quantity = 2},
        }
    },
    {
        name = "Plains Dungeon",
        level = 20,
        difficulty = "Normal",
        chests = {
            {type = "Silver", chance = "25%", quantity = 10},
            {type = "Wooden", chance = "25%", quantity = 3},
        }
    },
},
    minigames = {},
    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "Yes",
}
-- END OF ESSENCES

data["Salt"] = {
    name = "Salt",
    image = "Salt.png",
    caption = "Salty. Don't eat too much of these.",
    inventoryTab = "Mats",

    lifeSkilling = {
        {
            map = "Behind the Garden",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts Flower Field",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts Flower Field 2",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts North",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts Northeast",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts East",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts Southeast",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts South",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts Southwest",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts West",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts Northwest",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Outskirts Pond",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
	{
            map = "Secret Garden",
            skillingType = "Mining",
            level = 2,
            node = "Salt_Node",
            chance = "34.8%",
        },
    },

    crafting = {},

    craftingUsage = {
        {
            name = "Grilled Clam",
            craftingType = "Cooking",
            craftingLevel = 1,
            resources = {
                {name = "Salt", quantity = 1},
		{name = "Clam", quantity = 1},
            }
        },
        {
            name = "Cooked Shrimp",
            quantity = 1,
            craftingType = "Cooking",
            craftingLevel = 8,
            resources = {
                {name = "Shrimp", quantity = 12},
                {name = "Salt", quantity = 3},
                {name = "Lemon", quantity = 3},
            }
        },
        {
            name = "Cooked Trout",
            quantity = 1,
            craftingType = "Cooking",
            craftingLevel = 8,
            resources = {
                {name = "Trout", quantity = 12},
                {name = "Salt", quantity = 3},
                {name = "Lemon", quantity = 3},
            }
        },
        {
            name = "Fish Sauce",
            quantity = 1,
            craftingType = "Cooking",
            craftingLevel = 18,
            resources = {
                {name = "Trout", quantity = 1},
                {name = "Salt", quantity = 1},
            }
        },
        {
            name = "Soy Sauce",
            quantity = 1,
            craftingType = "Cooking",
            craftingLevel = 41,
            resources = {
                {name = "Red Soy", quantity = 2},
                {name = "Salt", quantity = 1},
            }
        },
        {
            name = "Black Calamari",
            quantity = 1,
            craftingType = "Cooking",
            craftingLevel = 43,
            resources = {
                {name = "Sulfur Squid", quantity = 4},
                {name = "Flour", quantity = 4},
                {name = "Salt", quantity = 4},
		{name = "Coconut Oil", quantity = 4},
            }
        },
        {
            name = "Soul's Rub",
            quantity = 1,
            craftingType = "Cooking",
            craftingLevel = 54,
            resources = {
                {name = "Salt", quantity = 1},
                {name = "Yellow Garlic", quantity = 1},
                {name = "Blue Pepper", quantity = 1},
		{name = "Desert Sage", quantity = 1},
            }
        },
        {
            name = "Deep Sea Bread",
            quantity = 1,
            craftingType = "Cooking",
            craftingLevel = 67,
            resources = {
                {name = "Deep Sea Bread", quantity = 2},
                {name = "Salt", quantity = 1},
                {name = "Fern Sugar", quantity = 1},
            }
        },
    },

    questObjective = {},

    questReward = {},

    purchase = {},

    drops = {},

    dungeons = {},

    minigames = {},

    tradable = "Yes",
    craftable = "Yes",
    mysteryTicket = "No",
}

data["Dull Dungeon Crystal"] = {
    name = "Dull Dungeon Crystal",
    image = "Dull Dungeon Crystal.png",
    caption = "An important material for upgrading skills.",
    inventoryTab = "Mats",

    mining = {},

    fishing = {},
    herbalism = {},
    crafting = {},
    craftingUsage = {},
    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {},
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    -- craftable = "No",
    -- mysteryTicket = "No",
}
data["Radiant Dungeon Crystal"] = {
    name = "Radiant Dungeon Crystal",
    image = "Radiant Dungeon Crystal.png",
    caption = "An important material for upgrading skills.",
    inventoryTab = "Mats",

    mining = {},

    fishing = {},
    herbalism = {},
    crafting = {},
    craftingUsage = {},
    questObjective = {},
    questReward = {},
    purchase = {},
    drops = {},
    dungeons = {},
    minigames = {},

    tradable = "Yes",
    -- craftable = "No",
    -- mysteryTicket = "No",
}
return data