local data = {}
--ALL WEAPONS
	--ALL ORBS
------------------------------------------------------------------------------------------------------------------------------------------------
data["Faded Innocence"] = {
    name = "Faded Innocence",
    image = "Faded Innocence.png",
    caption = "It's so faded you don't see any color anymore. Makes you wonder who it once belonged to?",
    equipmentType = "Weapon",
    weaponType = "Orb",
    armorType = "",
    level = 1,
    tier = "Faded",
	crafting = {},
	resources = {},
	questReward = {
        {
            name = "Slime Hunt!",
            NPC = "Shepherd",
            repeatable = "No",
            questLevel = 2,
            resources = {
                {name = "EXP", quantity = 150},
                {name = "Faded Innocence", quantity = 1},
                {name = "Small Health Potion", quantity = 5},
                {name = "Small Mana Potion", quantity = 5},
            },
        },
    },
	purchase = {
		{name = "Shop Keeper", purchasePrice = "1,000 SC", sellPrice = "150 SC"}
	},
	drops = {
		{name = "Slime", chance = "0.04%"},
		{name = "Bubble Spirit", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+5 Global Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "No(Quest)/Yes",
    craftable = "No"
}

data["Stone Orb"] = {
    name = "Stone Orb",
    image = "Stone Orb.png",
    caption = "You ponder the Stone Orb.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 6,
    tier = "Stone",
	crafting = {
    {
        name = "Stone Orb",
        craftingType = "Weapon Smithing",
        craftingLevel = 2,
        resources = {
            {name = "Cobbled Stone", quantity = 15},
            {name = "Dull Life Essence", quantity = 12},
        }
    },
},
	quest = {
		
	},
	purchase = {		
		{name = "Smith", purchasePrice = "1,500 SC", sellPrice = ""}
},
	drops = {
		{name = "Bubble Spirit", chance = "0.05%"},
		{name = "Glow Snail", chance = "0.37%"},
		},
    stats = {
    	{name = "line 1", stat = "+5 - 9 Global Attack"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Copper Orb"] = {
    name = "Copper Orb",
    image = "Copper Orb.png",
    caption = "You ponder the Copper Orb.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
            {name = "Copper Ingot", quantity = 20},
            {name = "Dull Metal Essence", quantity = 20},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Pin Pin", chance = "0.05%"},
		{name = "Slip", chance = "0.37%"},
		},
    stats = {
    	{name = "line 1", stat = "+9 - 12 Global Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Quartz Orb"] = {
    name = "Quartz Orb",
    image = "Quartz Orb.png",
    caption = "You ponder the Fancy Orb.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 25},
            {name = "Dull Eternal Essence", quantity = 30},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Snapper", chance = "0.19%"},
		},
    stats = {
    	{name = "line 1", stat = "+12 - 16 Global Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Iron Orb"] = {
    name = "Iron Orb",
    image = "Iron Orb.png",
    caption = "You ponder the Fancy Orb.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
            {name = "Iron Ingot", quantity = 35},
            {name = "Dull Life Essence", quantity = 45},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Crusher", chance = "0.04%"},
		},
    stats = {
    	{name = "line 1", stat = "+16 - 20 Global Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Petrified Orb"] = {
    name = "Petrified Orb",
    image = "Petrified Orb.png",
    caption = "You ponder the Petrified Orb.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 30,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 40},
            {name = "Dull Eternal Essence", quantity = 65},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Bananek", chance = "0.02%"},
		{name = "Dark Pumpkin", chance = "0.1%"},
		},
    stats = {
    	{name = "line 1", stat = "+1% Global Attack SPD"},
    	{name = "line 2", stat = "+21 - 26 Global Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Stinky Orb"] = {
    name = "Stinky Orb",
    image = "Stinky Orb.png",
    caption = "You ponder the Stinky Orb.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Ingot", quantity = 40},
            {name = "Dull Historic Essence", quantity = 90},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Dark Pumpkin", chance = "0.02%"},
		},
    stats = {
    	{name = "line 1", stat = "+1% Global Attack SPD"},
    	{name = "line 2", stat = "+26 - 31 Global Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eerie Orb"] = {
    name = "Eerie Orb",
    image = "Eerie Orb.png",
    caption = "You ponder the weird looking orb.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 45},
            {name = "Historic Essence", quantity = 6},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Soulpling", chance = "0.01%"},
		{name = "Ferni", chance = "0.02%"}
		},
    stats = {
    	{name = "line 1", stat = "+2 - 5% Global Attack SPD"},
    	{name = "line 2", stat = "+31 - 36 Global Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Deep Orb"] = {
    name = "Deep Orb",
    image = "Deep Orb.png",
    caption = "The orb is pondering you.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 55},
            {name = "Life Essence", quantity = 90},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Soultree", chance = "0.01%"},
		{name = "Giga", chance = "0.01%"}
		},
    stats = {
    	{name = "line 1", stat = "+3 - 7% Global Attack SPD"},
    	{name = "line 2", stat = "+36 - 41 Global Attack"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Repressive Orb"] = {
    name = "Repressive Orb",
    image = "Repressive Orb.png",
    caption = "You ponder whatever this orb is.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 60},
            {name = "Historic Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
		},
    stats = {
    	{name = "line 1", stat = "+4 - 9% Global Attack SPD"},
    	{name = "line 2", stat = "+41 - 48 Global Attack"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sharp Orb"] = {
    name = "Sharp Orb",
    image = "Sharp Orb.png",
    caption = "You ponder the Sharp Orb. How can a sphere object be sharp?",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 70},
            {name = "Life Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
		},
    stats = {
    	{name = "line 1", stat = "+5 - 11% Global Attack SPD"},
    	{name = "line 2", stat = "+48 - 53 Global Attack"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Orb"] = {
    name = "Radiant Orb",
    image = "Radiant Orb.png",
    caption = "You ponder the expensive looking orb.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 66,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 75},
            {name = "Eternal Essence", quantity = 250},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 13% Global Attack SPD"},
    	{name = "line 2", stat = "+53 - 60 Global Attack"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Mystical Orb"] = {
    name = "Mystical Orb",
    image = "Mystical Orb.png",
    caption = "",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 80},
            {name = "Dreamstone", quantity = 5},
            {name = "Radiant Ghostly Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "0.01%"},
		{name = "Tallshroom", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+7 - 15% Global Attack SPD"},
    	{name = "line 2", stat = "+60 - 67 Global Attack"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Orb"] = {
    name = "Arcane Orb",
    image = "Arcane Orb.png",
    caption = "",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Orb",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 85},
            {name = "Ocean Heart", quantity = 7},
            {name = "Radiant Raging Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Kiwi", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+8 - 17% Global Attack SPD"},
    	{name = "line 2", stat = "+67 - 72 Global Attack"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Innocence"] = {
    name = "Innocence",
    image = "Innocence.png",
    caption = "You are pure.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Innocence",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 80},
            {name = "Moonstone", quantity = 9},
            {name = "Radiant Ghostly Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
		},
    stats = {
    	{name = "line 1", stat = "+9 - 19% Global Attack SPD"},
    	{name = "line 2", stat = "+71 - 87 Global Attack"},
    	{name = "line 3", stat = "+4 - 14% Damage Balance"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Innocence"] = {
    name = "Radiant Innocence",
    image = "Radiant Innocence.png",
    caption = "You shine bright.",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Innocence",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 120},
            {name = "Black Diamond", quantity = 15},
            {name = "Radiant Raging Essence", quantity = 680},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Pyramid Guardian", chance = "<0.00%"},
		{name = "Ancient Soulfish", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+10 - 21% Global Attack SPD"},
    	{name = "line 2", stat = "+87 - 94 Global Attack"},
    	{name = "line 3", stat = "+6 - 18% Damage Balance"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Inverse Innocence"] = {
    name = "Inverse Innocence",
    image = "Inverse Innocence.png",
    caption = "Everything asides from you is so dirty. Impure...",
    equipmentType = "Weapon",
    weaponType = "Orb",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Innocence",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 160},
            {name = "Bloodstone", quantity = 30},
            {name = "Radiant Raging Essence", quantity = 950},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		},
    stats = {
    	{name = "line 1", stat = "+11 - 23% Global Attack SPD"},
    	{name = "line 2", stat = "+94 - 103 Global Attack"},
    	{name = "line 3", stat = "+8 - 22% Damage Balance"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF ORBS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL FOCUSES
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Focus"] = {
    name = "Stone Focus",
    image = "Stone Focus.png",
    caption = "An inconspicuous stone that allows you to focus your willpower.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
            {name = "Cobbled Stone", quantity = 10},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {},
	purchase = {
		{name = "Smith", purchasePrice = "2,000 SC", sellPrice = ""}
	},
	drops = {
		{name = "Jel", chance = "0.13%"},
		{name = "Pin Pin", chance = "0.2%"},
	},
    stats = {
    	{name = "line 1", stat = "+7 - 11 Faith Attack"},
    	{name = "line 2", stat = "+7 - 11 Magic Attack"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Copper Focus"] = {
    name = "Copper Focus",
    image = "Copper Focus.png",
    caption = "Somehow this copper focus allows you to focus better than the Stone Focus.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
            {name = "Copper Ingot", quantity = 15},
            {name = "Dull Life Essence", quantity = 20},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Jel", chance = "0.04%"},
		{name = "Pin Pin", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+11 - 15 Faith Attack"},
    	{name = "line 2", stat = "+11 - 15 Magic Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Quartz Focus"] = {
    name = "Quartz Focus",
    image = "Quartz Focus.png",
    caption = "The white, glistening surface of quartz helps you focus.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 20},
            {name = "Dull Historic Essence", quantity = 30},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cloudsheep", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 21 Faith Attack"},
    	{name = "line 2", stat = "+15 - 21 Magic Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Iron Focus"] = {
    name = "Iron Focus",
    image = "Iron Focus.png",
    caption = "The cold hard surface reminds you of mortality.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
            {name = "Iron Ingot", quantity = 15},
            {name = "Dull Life Essence", quantity = 45},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Snapper", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+21 - 27 Faith Attack"},
    	{name = "line 2", stat = "+21 - 27 Magic Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Petrified Focus"] = {
    name = "Petrified Focus",
    image = "Petrified Focus.png",
    caption = "Centuries of stillness pressed into the stone. Your thoughts settle the same way.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 30,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 30},
            {name = "Dull Eternal Essence", quantity = 65},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Citruslime", chance = "0.02%"},
		{name = "Monoghoul", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+27 - 33 Faith Attack"},
    	{name = "line 2", stat = "+1 MP Regeneration Per Tick"},
    	{name = "line 3", stat = "+27 - 33 Magic Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Stinky Focus"] = {
    name = "Stinky Focus",
    image = "Stinky Focus.png",
    caption = "Hard to lose your concentration when your eyes will not stop watering.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Ingot", quantity = 30},
            {name = "Dull Historic Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dark Pumpkin", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+33 - 39 Faith Attack"},
    	{name = "line 2", stat = "+1 MP Regeneration Per Tick"},
    	{name = "line 3", stat = "+33 - 39 Magic Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eerie Focus"] = {
    name = "Eerie Focus",
    image = "Eerie Focus.png",
    caption = "The wavy, uneven and mesmerizing green surface reminded you of your past.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 35},
            {name = "Metal Essence", quantity = 60},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Licke", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+39 - 45 Faith Attack"},
    	{name = "line 2", stat = "+39 - 45 Magic Attack"},
    	{name = "line 3", stat = "+1 - 3 MP Regeneration Per Tick"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Deep Focus"] = {
    name = "Deep Focus",
    image = "Deep Focus.png",
    caption = "Just holding this focus made you calm down.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 40},
            {name = "Nurturing Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Giga", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+45 - 51 Faith Attack"},
    	{name = "line 2", stat = "+45 - 51 Magic Attack"},
    	{name = "line 3", stat = "+2 - 4 MP Regeneration Per Tick"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Repressive Focus"] = {
    name = "Repressive Focus",
    image = "Repressive Focus.png",
    caption = "You focus by hiding all the pain.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 45},
            {name = "Life Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+51 - 59 Faith Attack"},
    	{name = "line 2", stat = "+51 - 59 Magic Attack"},
    	{name = "line 3", stat = "+2 - 5 MP Regeneration Per Tick"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sharp Focus"] = {
    name = "Sharp Focus",
    image = "Sharp Focus.png",
    caption = "Your will can pierce through stone.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 50},
            {name = "Raging Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+59 - 66 Faith Attack"},
    	{name = "line 2", stat = "+59 - 66 Magic Attack"},
    	{name = "line 3", stat = "+3 - 5 MP Regeneration Per Tick"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Focus"] = {
    name = "Radiant Focus",
    image = "Radiant Focus.png",
    caption = "Your focus shines, bringing joy to others.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 60,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 55},
            {name = "Eternal Essence", quantity = 250},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+66 - 74 Faith Attack"},
    	{name = "line 2", stat = "+66 - 74 Magic Attack"},
    	{name = "line 3", stat = "+3 - 6 MP Regeneration Per Tick"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Mystical Focus"] = {
    name = "Mystical Focus",
    image = "Mystical Focus.png",
    caption = "Your thoughts come clearer, though not all of them feel like yours.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 60},
            {name = "Dream Fragment", quantity = 10},
            {name = "Radiant Ghostly Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Shroomie", chance = "0.01%"},
		{name = "Tallshroom", chance = "0.01%"},
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+74 - 81 Faith Attack"},
    	{name = "line 2", stat = "+4 - 6 MP Regeneration Per Tick"},
    	{name = "line 3", stat = "+74 - 81 Magic Attack"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Focus"] = {
    name = "Arcane Focus",
    image = "Arcane Focus.png",
    caption = "Raw magic circles inside, waiting for you to give it a shape.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Focus",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 65},
            {name = "Ocean Shard", quantity = 15},
            {name = "Radiant Life Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "<0.00%"},
		{name = "Shroomie", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+81 - 89 Faith Attack"},
    	{name = "line 2", stat = "+5 - 7 MP Regeneration Per Tick"},
    	{name = "line 3", stat = "+81 - 89 Magic Attack"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Divinity"] = {
    name = "Divinity",
    image = "Divinity.png",
    caption = "Your will expands outwards, surpassing the limits, yet... is your soul still you?",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Divinity",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 70},
            {name = "Moon Shard", quantity = 20},
            {name = "Radiant Nurturing Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+89 - 107 Faith Attack"},
    	{name = "line 2", stat = "+89 - 107 Magic Attack"},
    	{name = "line 3", stat = "+6 - 8 MP Regeneration Per Tick"},
    	{name = "line 4", stat = "+8 - 20% Elemental Potency"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Divinity"] = {
    name = "Radiant Divinity",
    image = "Radiant Divinity.png",
    caption = "Your divinity shines so bright, yet, you feel lonely.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Divinity",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 90},
            {name = "Black Diamond", quantity = 10},
            {name = "Radiant Raging Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Pyramid Guardian", chance = "<0.00%"},
		{name = "Ancient Soulfish", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+107 - 116 Faith Attack"},
    	{name = "line 2", stat = "+107 - 116 Magic Attack"},
    	{name = "line 3", stat = "+7 - 9 MP Regeneration Per Tick"},
    	{name = "line 4", stat = "+12 - 25% Elemental Potency"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Inverse Divinity"] = {
    name = "Inverse Divinity",
    image = "Inverse Divinity.png",
    caption = "You've come so far, but what did you lose along the way..? Maybe at this point, it doesn't matter anymore.",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Divinity",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 120},
            {name = "Bloodstone", quantity = 20},
            {name = "Radiant Eternal Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+116 - 126 Faith Attack"},
    	{name = "line 2", stat = "+116 - 126 Magic Attack"},
    	{name = "line 3", stat = "+8 - 10 MP Regeneration Per Tick"},
    	{name = "line 4", stat = "+15 - 30% Elemental Potency"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Psyche"] = {
    name = "Psyche",
    image = "Psyche.png",
    caption = "Is that... your soul..?",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Psyche",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 70},
            {name = "Moon Shard", quantity = 20},
            {name = "Radiant Eternal Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {		
		{name = "Soulfish", chance = "<0.00%"},
		{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+89 - 107 Faith Attack"},
    	{name = "line 2", stat = "+89 - 107 Magic Attack"},
    	{name = "line 3", stat = "+6 - 8 MP Regeneration Per Tick"},
    	{name = "line 4", stat = "+2 - 9 CON"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Psyche"] = {
    name = "Radiant Psyche",
    image = "Radiant Psyche.png",
    caption = "Your strength lies within",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Psyche",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 90},
            {name = "Black Diamond", quantity = 10},
            {name = "Radiant Eternal Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+107 - 116 Faith Attack"},
    	{name = "line 2", stat = "+107 - 116 Magic Attack"},
    	{name = "line 3", stat = "+7 - 9 MP Regeneration Per Tick"},
    	{name = "line 4", stat = "+3 - 11 CON"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Inverse Psyche"] = {
    name = "Inverse Psyche",
    image = "Inverse Psyche.png",
    caption = "What is there at the bottom of your soul? What's your deepest, darkest desire...?",
    equipmentType = "Weapon",
    weaponType = "Focus",
    armorType = "",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Psyche",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 120},
            {name = "Bloodstone", quantity = 20},
            {name = "Radiant Metal Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+116 - 126 Faith Attack"},
    	{name = "line 2", stat = "+116 - 126 Magic Attack"},
    	{name = "line 3", stat = "+8 - 10 MP Regeneration Per Tick"},
    	{name = "line 4", stat = "+4 - 13 CON"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF FOCUSES
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL BOWS
data["Stone Bow"] = {
    name = "Stone Bow",
    image = "Stone Bow.png",
    caption = "Bow made of stone. It works somehow.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
            {name = "Cobbled Stone", quantity = 10},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {},
	purchase = {
		{name = "Smith", purchasePrice = "2,000 SC", sellPrice = ""}
	},
	drops = {
		{name = "Hopper", chance = "0.36%"},
		{name = "Glowsnail", chance = "0.37%"},
	},
    stats = {
    	{name = "line 1", stat = "+7 - 11 Range Attack"},
    	{name = "line 2", stat = "+7 - 11 Magic Attack"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Copper Bow"] = {
    name = "Copper Bow",
    image = "Copper Bow.png",
    caption = "Bow made of copper. Very elastic, it's fantastic.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
            {name = "Copper Ingot", quantity = 15},
            {name = "Dull Life Essence", quantity = 20},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Jel", chance = "0.04%"},
		{name = "Pin Pin", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+11 - 15 Range Attack"},
    	{name = "line 2", stat = "+11 - 15 Magic Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Quartz Bow"] = {
    name = "Quartz Bow",
    image = "Quartz Bow.png",
    caption = "Quartz bow reveals the target to you.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 20},
            {name = "Dull Nurturing Essence", quantity = 30},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Snapper", chance = "0.19%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 21 Range Attack"},
    	{name = "line 2", stat = "+15 - 21 Magic Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Iron Bow"] = {
    name = "Iron Bow",
    image = "Iron Bow.png",
    caption = "Strong and sturdy, ideal for hunting.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
            {name = "Iron Ingot", quantity = 15},
            {name = "Dull Eternal Essence", quantity = 45},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Troppo", chance = "0.05%"},
		{name = "Licki", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+21 - 27 Range Attack"},
    	{name = "line 2", stat = "+21 - 27 Magic Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Petrified Bow"] = {
    name = "Petrified Bow",
    image = "Petrified Bow.png",
    caption = "Carved from petrified wood. It will never warp, and it will never bend either.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 30,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 30},
            {name = "Dull Metal Essence", quantity = 65},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Bananek", chance = "0.02%"},
		{name = "Sadling", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+2% Crit Rate"},
    	{name = "line 2", stat = "+27 - 33 Range Attack"},
    	{name = "line 3", stat = "+27 - 33 Magic Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Stinky Bow"] = {
    name = "Stinky Bow",
    image = "Stinky Bow.png",
    caption = "Strong, sturdy, and downwind of you at all times.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Ingot", quantity = 30},
            {name = "Dull Metal Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dark Pumpkin", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+3% Crit Rate"},
    	{name = "line 2", stat = "+33 - 39 Range Attack"},
    	{name = "line 3", stat = "+33 - 39 Magic Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eerie Bow"] = {
    name = "Eerie Bow",
    image = "Eerie Bow.png",
    caption = "Its surface is coarse, how do you shoot anything with this?",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 35},
            {name = "Nurturing Essence", quantity = 60},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Licke", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+39 - 45 Range Attack"},
    	{name = "line 2", stat = "+39 - 45 Magic Attack"},
    	{name = "line 3", stat = "+4 - 9% Crit Rate"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Deep Bow"] = {
    name = "Deep Bow",
    image = "Deep Bow.png",
    caption = "Your arrow will find its mark but will you...?",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 40},
            {name = "Nurturing Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Giga", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+45 - 51 Range Attack"},
    	{name = "line 2", stat = "+45 - 51 Magic Attack"},
    	{name = "line 3", stat = "+5 - 11% Crit Rate"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Repressive Bow"] = {
    name = "Repressive Bow",
    image = "Repressive Bow.png",
    caption = "Nothing else matters but your target.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 45},
            {name = "Ghostly Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+51 - 59 Range Attack"},
    	{name = "line 2", stat = "+51 - 59 Magic Attack"},
    	{name = "line 3", stat = "+6 - 12% Crit Rate"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sharp Bow"] = {
    name = "Sharp Bow",
    image = "Sharp Bow.png",
    caption = "You will shoot down anything in your path.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 50},
            {name = "Ghostly Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+59 - 66 Range Attack"},
    	{name = "line 2", stat = "+59 - 66 Magic Attack"},
    	{name = "line 3", stat = "+7 - 14% Crit Rate"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Bow"] = {
    name = "Radiant Bow",
    image = "Radiant Bow.png",
    caption = "Flashy and shiny bow, too bad you to look at your target when you shoot instead of it.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 60,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 55},
            {name = "Raging Essence", quantity = 250},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+66 - 74 Range Attack"},
    	{name = "line 2", stat = "+66 - 74 Magic Attack"},
    	{name = "line 3", stat = "+8 - 16% Crit Rate"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Mystical Bow"] = {
    name = "Mystical Bow",
    image = "Mystical Bow.png",
    caption = "The arrow is gone before you feel the string leave your fingers.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 60},
            {name = "Dream Fragment", quantity = 10},
            {name = "Radiant Metal Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rocky", chance = "<0.00%"},
		{name = "Rokkak", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 18% Crit Rate"},
    	{name = "line 2", stat = "+74 - 81 Range Attack"},
    	{name = "line 3", stat = "+74 - 81 Magic Attack"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Bow"] = {
    name = "Arcane Bow",
    image = "Arcane Bow.png",
    caption = "It hums as you draw it, as if the shot already happened.",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Bow",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 65},
            {name = "Ocean Shard", quantity = 15},
            {name = "Radiant Eternal Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Shroomie", chance = "<0.00%"},
		{name = "Tallshroom", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+10 - 20% Crit Rate"},
    	{name = "line 2", stat = "+81 - 89 Range Attack"},
    	{name = "line 3", stat = "+81 - 89 Magic Attack"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Shooting Star"] = {
    name = "Shooting Star",
    image = "Shooting Star.png",
    caption = "Will your arrow reach the star?",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Shooting Star",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 70},
            {name = "Moon Shard", quantity = 20},
            {name = "Radiant Metal Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Coral", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+89 - 107 Range Attack"},
    	{name = "line 2", stat = "+89 - 107 Magic Attack"},
    	{name = "line 3", stat = "+11 - 22% Crit Rate"},
    	{name = "line 4", stat = "+15 - 25% Projectile Speed"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Shooting Star"] = {
    name = "Radiant Shooting Star",
    image = "Radiant Shooting Star.png",
    caption = "Your arrow will pierce through heaven!",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Shooting Star",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 90},
            {name = "Black Diamond", quantity = 10},
            {name = "Radiant Nurturing Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haunted Flame", chance = "<0.00%"},
		{name = "Blaze", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+107 - 116 Range Attack"},
    	{name = "line 2", stat = "+107 - 116 Magic Attack"},
    	{name = "line 3", stat = "+12 - 24% Crit Rate"},
    	{name = "line 4", stat = "+15 - 28% Projectile Speed"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Inverse Shooting Star"] = {
    name = "Inverse Shooting Star",
    image = "Inverse Shooting Star.png",
    caption = "When reality comes crashing down...",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Shooting Star",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 120},
            {name = "Bloodstone", quantity = 20},
            {name = "Radiant Life Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+116 - 126 Range Attack"},
    	{name = "line 2", stat = "+116 - 126 Magic Attack"},
    	{name = "line 3", stat = "+13 - 26% Crit Rate"},
    	{name = "line 4", stat = "+18 - 34% Projectile Speed"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Wish"] = {
    name = "Wish",
    image = "Wish.png",
    caption = "What do you wish for?",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Wish",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 70},
            {name = "Moon Shard", quantity = 20},
            {name = "Radiant Historic Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
			{name = "Coral", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+89 - 107 Range Attack"},
    	{name = "line 2", stat = "+89 - 107 Magic Attack"},
    	{name = "line 3", stat = "+11 - 22% Crit Rate"},
    	{name = "line 4", stat = "+0 - 4 Armor Pen"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Wish"] = {
    name = "Radiant Wish",
    image = "Radiant Wish.png",
    caption = "Your wish will be fulfilled",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Wish",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 90},
            {name = "Black Diamond", quantity = 10},
            {name = "Radiant Nurturing Essence", quantity = 680},
            }
        },
    },
	quest = {
			{name = "Pyramid Guardian", chance = "<0.00%"},
			{name = "Ancient Soulfish", chance = "<0.00%"},
	},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+107 - 116 Range Attack"},
    	{name = "line 2", stat = "+107 - 116 Magic Attack"},
    	{name = "line 3", stat = "+12 - 24% Crit Rate"},
    	{name = "line 4", stat = "+1 - 5 Armor Pen"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Inverse Wish"] = {
    name = "Inverse Wish",
    image = "Inverse Wish.png",
    caption = "Be careful what you wish for",
    equipmentType = "Weapon",
    weaponType = "Bow",
    armorType = "",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Wish",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 120},
            {name = "Bloodstone", quantity = 20},
            {name = "Radiant Nurturing Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+116 - 126 Range Attack"},
    	{name = "line 2", stat = "+116 - 126 Magic Attack"},
    	{name = "line 3", stat = "+13 - 26% Crit Rate"},
    	{name = "line 4", stat = "+2 - 6 Armor Pen"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF BOWS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL SHIELDS
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Shield"] = {
    name = "Stone Shield",
    image = "Stone Shield.png",
    caption = "Clunky but usable",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
            {name = "Cobbled Stone", quantity = 15},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {},
	purchase = {
		{name = "Smith", purchasePrice = "2,000 SC", sellPrice = ""}
	},
	drops = {
		{name = "Slime", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+7 - 11 Melee Attack"},
    	{name = "line 2", stat = "+7 - 11 Faith Attack"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Copper Shield"] = {
    name = "Copper Shield",
    image = "Copper Shield.png",
    caption = "Shield made of copper.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
            {name = "Copper Ingot", quantity = 20},
            {name = "Dull Eternal Essence", quantity = 20},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Jel", chance = "0.04%"},
		{name = "Flows", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+11 - 15 Melee Attack"},
    	{name = "line 2", stat = "+11 - 15 Faith Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Quartz Shield"] = {
    name = "Quartz Shield",
    image = "Quartz Shield.png",
    caption = "Let out a spark when hit... maybe?",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 25},
            {name = "Dull Metal Essence", quantity = 30},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+15 - 21 Melee Attack"},
    	{name = "line 2", stat = "+15 - 21 Faith Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Iron Shield"] = {
    name = "Iron Shield",
    image = "Iron Shield.png",
    caption = "Strong enough to protect yourself.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
            {name = "Iron Ingot", quantity = 35},
            {name = "Dull Historic Essence", quantity = 45},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Snapper", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+21 - 27 Melee Attack"},
    	{name = "line 2", stat = "+21 - 27 Faith Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Petrified Shield"] = {
    name = "Petrified Shield",
    image = "Petrified Shield.png",
    caption = "It has outlasted everything that ever hit it.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 30,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 40},
            {name = "Dull Raging Essence", quantity = 65},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+27 - 33 Melee Attack"},
    	{name = "line 2", stat = "+27 - 33 Faith Attack"},
    	{name = "line 3", stat = "+2 Defense"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Stinky Shield"] = {
    name = "Stinky Shield",
    image = "Stinky Shield.png",
    caption = "Enemies keep their distance. Somehow you are proud of that.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Ingot", quantity = 40},
            {name = "Dull Raging Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Stinky Sheep", chance = "0.02%"},
		{name = "Spot Slime", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+33 - 39 Melee Attack"},
    	{name = "line 2", stat = "+33 - 39 Faith Attack"},
    	{name = "line 3", stat = "+3 Defense"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eerie Shield"] = {
    name = "Eerie Shield",
    image = "Eerie Shield.png",
    caption = "Have you ever seen someone wield this in battle?",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 45},
            {name = "Ghostly Essence", quantity = 60},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rainbow Cloudsheep", chance = "0.01%"},
		{name = "Humblebee", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+39 - 45 Melee Attack"},
    	{name = "line 2", stat = "+39 - 45 Faith Attack"},
    	{name = "line 3", stat = "+3 - 8 Defense"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Deep Shield"] = {
    name = "Deep Shield",
    image = "Deep Shield.png",
    caption = "You're strong but are you strong enough to protect others?",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 55},
            {name = "Historic Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Sweel", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+45 - 51 Melee Attack"},
    	{name = "line 2", stat = "+45 - 51 Faith Attack"},
    	{name = "line 3", stat = "+4 - 9 Defense"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Repressive Shield"] = {
    name = "Repressive Shield",
    image = "Repressive Shield.png",
    caption = "None shall pass your line of defense.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 60},
            {name = "Metal Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "0.05%"},
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+51 - 59 Melee Attack"},
    	{name = "line 2", stat = "+51 - 59 Faith Attack"},
    	{name = "line 3", stat = "+5 - 11 Defense"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sharp Shield"] = {
    name = "Sharp Shield",
    image = "Sharp Shield.png",
    caption = "The shield itself isn't sharp, you look sharp with it though.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 70},
            {name = "Metal Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+59 - 66 Melee Attack"},
    	{name = "line 2", stat = "+59 - 66 Faith Attack"},
    	{name = "line 3", stat = "+6 - 13 Defense"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Shield"] = {
    name = "Radiant Shield",
    image = "Radiant Shield.png",
    caption = "The shield looks so fancy and expensive.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 60,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 75},
            {name = "Life Essence", quantity = 250},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+66 - 74 Melee Attack"},
    	{name = "line 2", stat = "+66 - 74 Faith Attack"},
    	{name = "line 3", stat = "+8 - 15 Defense"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Mystical Shield"] = {
    name = "Mystical Shield",
    image = "Mystical Shield.png",
    caption = "Blows slide off it, as if they landed somewhere else entirely.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 80},
            {name = "Dreamstone", quantity = 5},
            {name = "Radiant Ghostly Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Shroomie", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+74 - 81 Melee Attack"},
    	{name = "line 2", stat = "+74 - 81 Faith Attack"},
    	{name = "line 3", stat = "+10 - 17 Defense"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Shield"] = {
    name = "Arcane Shield",
    image = "Arcane Shield.png",
    caption = "Magic pools across the surface and drinks the impact.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Shield",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 85},
            {name = "Ocean Heart", quantity = 7},
            {name = "Radiant Life Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "<0.00%"},
		{name = "Shroomie", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+81 - 89 Melee Attack"},
    	{name = "line 2", stat = "+81 - 89 Faith Attack"},
    	{name = "line 3", stat = "+12 - 19 Defense"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Perseverance"] = {
    name = "Perseverance",
    image = "Perseverance.png",
    caption = "Your will to live is unmatched.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Perseverance",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 95},
            {name = "Moonstone", quantity = 9},
            {name = "Radiant Raging Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+89 - 107 Melee Attack"},
    	{name = "line 2", stat = "+89 - 107 Faith Attack"},
    	{name = "line 3", stat = "+14 - 21 Defense"},
    	{name = "line 4", stat = "+2 - 5 HP Regeneration Per Tick"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Perseverance"] = {
    name = "Radiant Perseverance",
    image = "Radiant Perseverance.png",
    caption = "Not even a reaper can take life away from you.",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Perseverance",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 120},
            {name = "Black Diamond", quantity = 15},
            {name = "Radiant Life Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haunted Flame", chance = "<0.00%"},
		{name = "Blaze", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+107 - 116 Melee Attack"},
    	{name = "line 2", stat = "+107 - 116 Faith Attack"},
    	{name = "line 3", stat = "+16 - 23 Defense"},
    	{name = "line 4", stat = "+3 - 6 HP Regeneration Per Tick"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Inverse Perseverance"] = {
    name = "Inverse Perseverance",
    image = "Inverse Perseverance.png",
    caption = "You can't die even if you want to...",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Perseverance",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 160},
            {name = "Bloodstone", quantity = 30},
            {name = "Radiant Metal Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+116 - 126 Melee Attack"},
    	{name = "line 2", stat = "+116 - 126 Faith Attack"},
    	{name = "line 3", stat = "+18 - 25 Defense"},
    	{name = "line 4", stat = "+4 - 8 HP Regeneration Per Tick"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Judgement"] = {
    name = "Judgement",
    image = "Judgement.png",
    caption = "No one will harm those you wish to protect",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Judgement",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 95},
            {name = "Moonstone", quantity = 9},
            {name = "Radiant Metal Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
			{name = "Soulfish", chance = "<0.00%"},
			{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+89 - 107 Melee"},
    	{name = "line 2", stat = "+89 - 107 Faith"},
    	{name = "line 3", stat = "+3 - 7 Global Attack"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Judgement"] = {
    name = "Radiant Judgement",
    image = "Radiant Judgement.png",
    caption = "No one will harm those you love",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Judgement",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 120},
            {name = "Black Diamond", quantity = 15},
            {name = "Radiant Life Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haunted Flame", chance = "<0.00%"},
		{name = "Blaze", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+107 - 116 Melee Attack"},
    	{name = "line 2", stat = "+107 - 116 Faith Attack"},
    	{name = "line 3", stat = "+4 - 9 Global Attack"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Inverse Judgement"] = {
    name = "Inverse Judgement",
    image = "Inverse Judgement.png",
    caption = "Those that are against me shall perish...",
    equipmentType = "Weapon",
    weaponType = "Shield",
    armorType = "",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Judgement",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 160},
            {name = "Bloodstone", quantity = 30},
            {name = "Radiant Life Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
			{name = "Lime Slime", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+116 - 126 Melee Attack"},
    	{name = "line 2", stat = "+116 - 126 Faith Attack"},
    	{name = "line 3", stat = "+5 - 11 Global Attack"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
-------------------------------------------------------------------------------------------------------------------------------------------------
	--END OF SHIELDS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL SPELLBLADES
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Spellblade"] = {
    name = "Stone Spellblade",
    image = "Stone Spellblade.png",
    caption = "Magic Stone that shaped like a sword for some reason.",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
            {name = "Cobbled Stone", quantity = 10},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {},
	purchase = {
		{name = "Smith", purchasePrice = "2,000 SC", sellPrice = ""}
	},
	drops = {
		{name = "Flows", chance = "0.17%"},
	},
    stats = {
    	{name = "line 1", stat = "+7 - 11 Melee"},
    	{name = "line 2", stat = "+7 - 11 Magic"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Copper Spellblade"] = {
    name = "Copper Spellblade",
    image = "Copper Spellblade.png",
    caption = "Does making a magic item look like a sword really make it better?",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
            {name = "Copper Ingot", quantity = 15},
            {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Hopper", chance = "0.06%"},
		{name = "Glowsnail", chance = "0.06%"},
	},
    stats = {
    	{name = "line 1", stat = "+11 - 15 Melee"},
    	{name = "line 2", stat = "+11 - 15 Magic"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Quartz Spellblade"] = {
    name = "Quartz Spellblade",
    image = "Quartz Spellblade.png",
    caption = "Who wants to hit the monster with the spell casting sword? Like literally. I guess you?",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 20},
            {name = "Dull Ghostly Essence", quantity = 30},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Black Cloudsheep", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 21 Melee"},
    	{name = "line 2", stat = "+15 - 21 Magic"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Iron Spellblade"] = {
    name = "Iron Spellblade",
    image = "Iron Spellblade.png",
    caption = "Great now it's iron!",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
            {name = "Iron Ingot", quantity = 25},
            {name = "Dull Eternal Essence", quantity = 45},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Troppo", chance = "0.05%"},
		{name = "Licki", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+21 - 27 Melee"},
    	{name = "line 2", stat = "+21 - 27 Magic"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Petrified Spellblade"] = {
    name = "Petrified Spellblade",
    image = "Petrified Spellblade.png",
    caption = "We are still doing this, apparently.",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 30,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 30},
            {name = "Dull Historic Essence", quantity = 65},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Sadling", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+3% Skill Range"},
    	{name = "line 2", stat = "+27 - 33 Melee"},
    	{name = "line 3", stat = "+27 - 33 Magic"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Stinky Spellblade"] = {
    name = "Stinky Spellblade",
    image = "Stinky Spellblade.png",
    caption = "Now it smells, too. Wonderful.",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Ingot", quantity = 30},
            {name = "Dull Nurturing Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+3 - 9% Skill Range"},
    	{name = "line 2", stat = "+33 - 39 Melee"},
    	{name = "line 3", stat = "+33 - 39 Magic"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eerie Spellblade"] = {
    name = "Eerie Spellblade",
    image = "Eerie Spellblade.png",
    caption = "Make it stop.",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 35},
            {name = "Ghostly Essence", quantity = 60},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Licke", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+39 - 45 Melee"},
    	{name = "line 2", stat = "+39 - 45 Magic"},
    	{name = "line 3", stat = "+4 - 9% Skill Range"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Deep Spellblade"] = {
    name = "Deep Spellblade",
    image = "Deep Spellblade.png",
    caption = "Maybe I should be the one to stop.",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 40},
            {name = "Raging Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Soultree", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+45 - 51 Melee"},
    	{name = "line 2", stat = "+45 - 51 Magic"},
    	{name = "line 3", stat = "+5 - 11% Skill Range"}
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Repressive Spellblade"] = {
    name = "Repressive Spellblade",
    image = "Repressive Spellblade.png",
    caption = "Are you really making sense out of this?",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 45},
            {name = "Nurturing Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+51 - 59 Melee"},
    	{name = "line 2", stat = "+51 - 59 Magic"},
    	{name = "line 3", stat = "+6 - 13% Skill Range"}
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sharp Spellblade"] = {
    name = "Sharp Spellblade",
    image = "Sharp Spellblade.png",
    caption = "Maybe this is working...",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 50},
            {name = "Ghostly Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "0.08%"},
		{name = "Slibbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+59 - 66 Melee"},
    	{name = "line 2", stat = "+59 - 66 Magic"},
    	{name = "line 3", stat = "+7 - 15% Skill Range"}
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Spellblade"] = {
    name = "Radiant Spellblade",
    image = "Radiant Spellblade.png",
    caption = "Fine",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 60,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 55},
            {name = "Raging Essence", quantity = 250},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+66 - 74 Melee"},
    	{name = "line 2", stat = "+66 - 74 Magic"},
    	{name = "line 3", stat = "+8 - 16% Skill Range"}
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Mystical Spellblade"] = {
    name = "Mystical Spellblade",
    image = "Mystical Spellblade.png",
    caption = "At this point the sword shape is load bearing.",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 60},
            {name = "Dream Fragment", quantity = 10},
            {name = "Radiant Nurturing Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Kiwi", chance = "0.02%"},
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 17% Skill Range"},
    	{name = "line 2", stat = "+74 - 81 Melee"},
    	{name = "line 3", stat = "+74 - 81 Magic"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Spellblade"] = {
    name = "Arcane Spellblade",
    image = "Arcane Spellblade.png",
    caption = "It is a sword. It has always been a sword. Stop asking.",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Spellblade",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 65},
            {name = "Ocean Shard", quantity = 15},
            {name = "Radiant Metal Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Kiwi", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 17% Skill Range"},
    	{name = "line 2", stat = "+81 - 89 Melee"},
    	{name = "line 3", stat = "+81 - 89 Magic"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sacrifice"] = {
    name = "Sacrifice",
    image = "Sacrifice.png",
    caption = "You let go of part of yourself for power.",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Sacrifice",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 70},
            {name = "Moon Shard", quantity = 20},
            {name = "Radiant Raging Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "0.01%"},
		{name = "Ancient Soulfish", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+89 - 107 Melee"},
    	{name = "line 2", stat = "+89 - 107 Magic"},
    	{name = "line 3", stat = "+11 - 19% Skill Range"},
    	{name = "line 4", stat = "+8 - 15% 1 HP on Hit Chance"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Sacrifice"] = {
    name = "Radiant Sacrifice",
    image = "Radiant Sacrifice.png",
    caption = "You can help others but never lose yourself.",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Sacrifice",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 90},
            {name = "Black Diamond", quantity = 10},
            {name = "Radiant Ghostly Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Pyramid Guardian", chance = "<0.00%"},
		{name = "Ancient Soulfish", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+107 - 116 Melee"},
    	{name = "line 2", stat = "+107 - 116 Magic"},
    	{name = "line 3", stat = "+12 - 20% Skill Range"},
    	{name = "line 4", stat = "+9 - 18% 1 HP on Hit Chance"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Inverse Sacrifice"] = {
    name = "Inverse Sacrifice",
    image = "Inverse Sacrifice.png",
    caption = "Why sacrifice yourseld when you can sacrifice others?",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Sacrifice",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 120},
            {name = "Bloodstone", quantity = 20},
            {name = "Radiant Historic Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+116 - 126 Melee"},
    	{name = "line 2", stat = "+116 - 126 Magic"},
    	{name = "line 3", stat = "+13 - 21% Skill Range"},
    	{name = "line 4", stat = "+12 - 22% 1 HP on Hit Chance"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Solitude"] = {
    name = "Solitude",
    image = "Solitude.png",
    caption = "To be alone doesn't mean to be lonely",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Solitude",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            	{name = "Eternal Ingot", quantity = 70},
            	{name = "Moon Shard", quantity = 20},
            	{name = "Radiant Raging Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Ancient Soulfish", chance = "<0.00%"},
		{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+89 - 107 Melee"},
    	{name = "line 2", stat = "+89 - 107 Magic"},
    	{name = "line 3", stat = "+11 - 19% Skill Range"},
    	{name = "line 4", stat = "+8 - 15% 1 MP on Hit Chance"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Solitude"] = {
    name = "Radiant Solitude",
    image = "Radiant Solitude.png",
    caption = "You found peace in confinement and acceptance",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Solitude",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 90},
            {name = "Black Diamond", quantity = 10},
            {name = "Radiant Metal Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
			{name = "Pyramid Guardian", chance = "<0.00%"},
			{name = "Ancient Soulfish", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+107 - 116 Melee"},
    	{name = "line 2", stat = "+107 - 116 Magic"},
    	{name = "line 3", stat = "+12 - 20% Skill Range"},
    	{name = "line 4", stat = "+9 - 18% 1 MP on Hit Chance"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Inverse Solitude"] = {
    name = "Inverse Solitude",
    image = "Inverse Solitude.png",
    caption = "I hate people...",
    equipmentType = "Weapon",
    weaponType = "Spellblade",
    armorType = "",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Solitude",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 120},
            {name = "Bloodstone", quantity = 20},
            {name = "Radiant Ghostly Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+116 - 126 Melee"},
    	{name = "line 2", stat = "+116 - 126 Magic"},
    	{name = "line 3", stat = "+13 - 21% Skill Range"},
    	{name = "line 4", stat = "+12 - 22% 1 MP on Hit Chance"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
-------------------------------------------------------------------------------------------------------------------------------------------------
	--END OF SPELLBLADES
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL HOLY ARROWS
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Holy Arrow"] = {
    name = "Stone Holy Arrow",
    image = "Stone Holy Arrow.png",
    caption = "Better than throwing stone at your enemy.",
    equipmentType = "Weapon",
    weaponType = "Holy Arrow",
    armorType = "",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
            {name = "Cobbled Stone", quantity = 15},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {},
	purchase = {
		{name = "Smith", purchasePrice = "2,000 SC", sellPrice = ""}
	},
drops = {},
    stats = {
    	{name = "line 1", stat = "+7 - 11 Range Attack"},
    	{name = "line 2", stat = "+7 - 11 Faith Attack"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes",
}

data["Copper Holy Arrow"] = {
    name = "Copper Holy Arrow",
    image = "Copper Holy Arrow.png",
    caption = "Arrow made of copper.",
    equipmentType = "Weapon",
    weaponType = "Holy Arrow",
    armorType = "",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
            {name = "Cobbled Stone", quantity = 15},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+11 - 15 Range Attack"},
    	{name = "line 2", stat = "+11 - 15 Faith Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes",
}

data["Quartz Holy Arrow"] = {
    name = "Quartz Holy Arrow",
    image = "Quartz Holy Arrow.png",
    caption = "Fancy, for an arrow",
    equipmentType = "Weapon",
    weaponType = "Holy Arrow",
    armorType = "",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 25},
            {name = "Dull Raging Essence", quantity = 30},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+15 - 21 Range Attack"},
    	{name = "line 2", stat = "+15 - 21 Faith Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes",
}

data["Iron Holy Arrow"] = {
    name = "Iron Holy Arrow",
    image = "Iron Holy Arrow.png",
    caption = "Holy arrow made of iron. Are you gonna hunt with this?",
    equipmentType = "Weapon",
    weaponType = "Holy Arrow",
    armorType = "",
    level = 19,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 0,
            resources = {
            {name = "Iron Ingot", quantity = 35},
            {name = "Dull Ghostly Essence", quantity = 45},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+21 - 27 Range Attack"},
    	{name = "line 2", stat = "+21 - 27 Faith Attack"},
    },
    slots = 24,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes",
}

data["Petrified Holy Arrow"] = {
	name = "Petrified Holy Arrow",
	image = "PEtrified Holy Arrow.png",
	caption = "Arrow made of petrified wood",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 30,
	tier = "Petrified",
    crafting = {
        {
            name = "Petrified Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 40},
            {name = "Dull Historic Essence", quantity = 65},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+27 - 33 Faith Attack"},
		{name = "line 2", stat = "+2% Elemental Chance"},
		{name = "line 3", stat = "+27 - 33 Range Attack"},
	},
	slots = 4,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "34%"},
		{name = "1 echo", quantity = "1", chance = "34%"},
		{name = "2 echoes", quantity = "2", chance = "27%"},
		{name = "3 echoes", quantity = "3", chance = "2.7%"},
		{name = "4 echoes", quantity = "4", chance = "1.6%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Stinky Holy Arrow"] = {
	name = "Stinky Holy Arrow",
	image = "Stinky Holy Arrow.png",
	caption = "Arrow made of something you would rather not identify",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 36,
	tier = "Stinky",
    crafting = {
        {
            name = "Stinky Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Ingot", quantity = 40},
            {name = "Dull Historic Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+33 - 39 Faith Attack"},
		{name = "line 2", stat = "+3% Elemental Chance"},
		{name = "line 3", stat = "+33 - 39 Range Attack"},
	},
	slots = 4,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "36%"},
		{name = "1 echo", quantity = "1", chance = "34%"},
		{name = "2 echoes", quantity = "2", chance = "26%"},
		{name = "3 echoes", quantity = "3", chance = "2.6%"},
		{name = "4 echoes", quantity = "4", chance = "1.4%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Eerie Holy Arrow"] = {
	name = "Eerie Holy Arrow",
	image = "Eerie Holy Arrow.png",
	caption = "Those hit by this reportedly felt weird.",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 42,
	tier = "Eerie",
    crafting = {
        {
            name = "Eerie Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 45},
            {name = "Historic Essence", quantity = 60},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+39 - 45 Range Attack"},
		{name = "line 2", stat = "+39 - 45 Faith Attack"},
		{name = "line 3", stat = "+4 - 9% Elemental Chance"},
	},
	slots = 4,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "38%"},
		{name = "1 echo", quantity = "1", chance = "34%"},
		{name = "2 echoes", quantity = "2", chance = "25%"},
		{name = "3 echoes", quantity = "3", chance = "2.4%"},
		{name = "4 echoes", quantity = "4", chance = "1.3%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Deep Holy Arrow"] = {
	name = "Deep Holy Arrow",
	image = "Deep Holy Arrow.png",
	caption = "Can arrow hurts more than words?",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 48,
	tier = "Deep",
    crafting = {
        {
            name = "Deep Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 55},
            {name = "Eternal Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+45 - 51 Range Attack"},
		{name = "line 2", stat = "+45 - 51 Faith Attack"},
		{name = "line 3", stat = "+5 - 11% Elemental Chance"},
	},
	slots = 5,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "40%"},
		{name = "1 echo", quantity = "1", chance = "33%"},
		{name = "2 echoes", quantity = "2", chance = "23%"},
		{name = "3 echoes", quantity = "2.3%"},
		{name = "4 echoes", quantity = "4", chance = "1.2%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Repressive Holy Arrow"] = {
	name = "Repressive Holy Arrow",
	image = "Repressive Holy Arrow.png",
	caption = "Ghosts reportedly hate being hit by this arrow. So does everyone else",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 54,
	tier = "Repressive",
    crafting = {
        {
            name = "Repressive Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 60},
            {name = "Nurturing Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
	},
	stats = {
		{name = "line 1", stat = "+51 - 59 Range Attack"},
		{name = "line 2", stat = "+51 - 59 Faith Attack"},
		{name = "line 3", stat = "+6 - 13% Elemental Chance"},
	},
	slots = 5,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "42%"},
		{name = "1 echo", quantity = "1", chance = "33%"},
		{name = "2 echoes", quantity = "2", chance = "22%"},
		{name = "3 echoes", quantity = "3", chance = "2.1%"},
		{name = "4 echoes", quantity = "4", chance = "1.1%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Sharp Holy Arrow"] = {
	name = "Sharp Holy Arrow",
	image = "Sharp Holy Arrow.png",
	caption = "So sharp it'll pierce anything",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 60,
	tier = "Sharp",
    crafting = {
        {
            name = "Sharp Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 70},
            {name = "Nurturing Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+59 - 66 Range Attack"},
		{name = "line 2", stat = "+59 - 66 Faith Attack"},
		{name = "line 3", stat = "+7 - 15% Elemental Chance"},
	},
	slots = 6,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "44%"},
		{name = "1 echo", quantity = "1", chance = "32%"},
		{name = "2 echoes", quantity = "2", chance = "21%"},
		{name = "3 echoes", quantity = "3", chance = "2.0%"},
		{name = "4 echoes", quantity = "4", chance = "1.0%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Radiant Holy Arrow"] = {
	name = "Radiant Holy Arrow",
	image = "Radiant Holy Arrow.png",
	caption = "Makes anyone that got hit by this look fancy.",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 66,
	tier = "Radiant",
    crafting = {
        {
            name = "Radiant Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 75},
            {name = "Life Essence", quantity = 250},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+66 - 74 Range Attack"},
		{name = "line 2", stat = "+66 - 74 Faith Attack"},
		{name = "line 3", stat = "+8 - 16% Elemental Chance"},
	},
	slots = 6,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "46%"},
		{name = "1 echo", quantity = "1", chance = "31%"},
		{name = "2 echoes", quantity = "2", chance = "20%"},
		{name = "3 echoes", quantity = "3", chance = "1.9%"},
		{name = "4 echoes", quantity = "4", chance = "0.95%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Mystical Holy Arrow"] = {
	name = "Mystical Holy Arrow",
	image = "Mystical Holy Arrow.png",
	caption = "It finds the mark whether or not you aimed.",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 72,
	tier = "Mystical",
    crafting = {
        {
            name = "Mystical Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 80},
            {name = "Dreamstone", quantity = 5},
            {name = "Radiant Nurturing Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rocky", chance = "<0.00%"},
		{name = "Rokkak", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+74 - 81 Faith Attack"},
		{name = "line 2", stat = "+9 - 17% Elemental Chance"},
		{name = "line 3", stat = "+74 - 81 Range Attack"},
	},
	slots = 6,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "48%"},
		{name = "1 echo", quantity = "1", chance = "31%"},
		{name = "2 echoes", quantity = "2", chance = "19%"},
		{name = "3 echoes", quantity = "3", chance = "1.7%"},
		{name = "4 echoes", quantity = "4", chance = "0.87%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Arcane Holy Arrow"] = {
	name = "Arcane Holy Arrow",
	image = "Arcane Holy Arrow.png",
	caption = "Spends more of its flight as light than as an arrow.",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 78,
	tier = "Arcane",
    crafting = {
        {
            name = "Arcane Holy Arrow",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 85},
            {name = "Ocean Heart", quantity = 7},
            {name = "Radiant Historic Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Shroomie", chance = "<0.00%"},
		{name = "Tallshroom", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+81 - 89 Faith Attack"},
		{name = "line 2", stat = "+10 - 18% Elemental Chance"},
		{name = "line 3", stat = "+81 - 89 Range Attack"},
	},
	slots = 6,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "49%"},
		{name = "1 echo", quantity = "1", chance = "30%"},
		{name = "2 echoes", quantity = "2", chance = "18%"},
		{name = "3 echoes", quantity = "3", chance = "1.6%"},
		{name = "4 echoes", quantity = "4", chance = "0.80%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Messenger"] = {
	name = "Messenger",
	image = "Messenger.png",
	caption = "What is your message?",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 84,
	tier = "Form Change",
    crafting = {
        {
            name = "Messenger",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 95},
            {name = "Moonstone", quantity = 9},
            {name = "Radiant Eternal Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Soulfish", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+89 - 107 Range Attack"},
		{name = "line 2", stat = "+89 - 107 Faith Attack"},
		{name = "line 3", stat = "+11 - 19% Elemental Chance"},
		{name = "line 4", stat = "+3 - 8 CON"},
	},
	slots = 7,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "51%"},
		{name = "1 echo", quantity = "1", chance = "30%"},
		{name = "2 echoes", quantity = "2", chance = "17%"},
		{name = "3 echoes", quantity = "3", chance = "1.5%"},
		{name = "4 echoes", quantity = "4", chance = "0.73%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Radiant Messenger"] = {
	name = "Radiant Messenger",
	image = "Radiant Messenger.png",
	caption = "It's not about damaging the enemy, it's about sending a message",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 90,
	tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Messenger",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 120},
            {name = "Black Diamond", quantity = 15},
            {name = "Radiant Metal Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Pyramid Guardian", chance = "<0.00%"},
		{name = "Ancient Soulfish", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+107 - 116 Range Attack"},
		{name = "line 2", stat = "+107 - 116 Faith Attack"},
		{name = "line 3", stat = "+12 - 20% Elemental Chance"},
		{name = "line 4", stat = "+4 - 10 CON"},
	},
	slots = 7,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "53%"},
		{name = "1 echo", quantity = "1", chance = "29%"},
		{name = "2 echoes", quantity = "2", chance = "16%"},
		{name = "3 echoes", quantity = "3", chance = "1.4%"},
		{name = "4 echoes", quantity = "4", chance = "0.67%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Inverse Messenger"] = {
	name = "Inverse Messenger",
	image = "Inverse Messenger.png",
	caption = "No body gets your message...",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 96,
	tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Messenger",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 160},
            {name = "Bloodstone", quantity = 30},
            {name = "Radiant Nurturing Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+116 - 126 Range Attack"},
		{name = "line 2", stat = "+116 - 126 Faith Attack"},
		{name = "line 3", stat = "+13 - 21% Elemental Chance"},
		{name = "line 4", stat = "+5 - 12 CON"},
	},
	slots = 8,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "55%"},
		{name = "1 echo", quantity = "1", chance = "28%"},
		{name = "2 echoes", quantity = "2", chance = "15%"},
		{name = "3 echoes", quantity = "3", chance = "1.3%"},
		{name = "4 echoes", quantity = "4", chance = "0.61%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}
data["Smite"] = {
	name = "Smite",
	image = "Smite.png",
	caption = "Bring your wrath down upon your enemy far away",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 84,
	tier = "Form Change",
    crafting = {
        {
            name = "Smite",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 95},
            {name = "Moonstone", quantity = 9},
            {name = "Radiant Raging Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
			{name = "Upsivase", chance = "<0.00%"},
			{name = "Soulfish", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+89 - 107 Range Attack"},
		{name = "line 2", stat = "+89 - 107 Faith Attack"},
		{name = "line 3", stat = "+11 - 19% Elemental Chance"},
		{name = "line 4", stat = "+3 - 8 LUK"},
	},
	slots = 7,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "51%"},
		{name = "1 echo", quantity = "1", chance = "30%"},
		{name = "2 echoes", quantity = "2", chance = "17%"},
		{name = "3 echoes", quantity = "3", chance = "1.5%"},
		{name = "4 echoes", quantity = "4", chance = "0.73%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Radiant Smite"] = {
	name = "Radiant Smite",
	image = "Radiant Smite.png",
	caption = "Take down your enemy in style",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 90,
	tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Smite",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 120},
            {name = "Black Diamond", quantity = 15},
            {name = "Radiant Raging Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+107 - 116 Range Attack"},
		{name = "line 2", stat = "+107 - 116 Faith Attack"},
		{name = "line 3", stat = "+12 - 20% Elemental Chance"},
		{name = "line 4", stat = "+4 - 10 LUK"},
	},
	slots = 7,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "53%"},
		{name = "1 echo", quantity = "1", chance = "29%"},
		{name = "2 echoes", quantity = "2", chance = "16%"},
		{name = "3 echoes", quantity = "3", chance = "1.4%"},
		{name = "4 echoes", quantity = "4", chance = "0.67%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Inverse Smite"] = {
	name = "Inverse Smite",
	image = "Inverse Smite.png",
	caption = "But you will never erase what happened",
	equipmentType = "Weapon",
	weaponType = "Holy Arrow",
	armorType = "",
	level = 96,
	tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Smite",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 160},
            {name = "Bloodstone", quantity = 30},
            {name = "Radiant Eternal Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
			{name = "Lime Slime", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+116 - 126 Range Attack"},
		{name = "line 2", stat = "+116 - 126 Faith Attack"},
		{name = "line 3", stat = "+13 - 21% Elemental Chance"},
		{name = "line 4", stat = "+5 - 12 LUK"},
	},
	slots = 8,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "55%"},
		{name = "1 echo", quantity = "1", chance = "28%"},
		{name = "2 echoes", quantity = "2", chance = "15%"},
		{name = "3 echoes", quantity = "3", chance = "1.3%"},
		{name = "4 echoes", quantity = "4", chance = "0.61%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}
	--END OF HOLY ARROWS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL JAVELIN
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Javelin"] = {
	name = "Stone Javelin",
	image = "Stone Javelin.png",
	caption = "Stab your enemy with it or throw it at your enemy!",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 6,
	tier = "Stone",
    crafting = {
        {
            name = "Stone Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 3,
            resources = {
            {name = "Cobbled Stone", quantity = 10},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {},
	purchase = {
		{name = "Smith", purchasePrice = "2,000 SC", sellPrice = ""}
	},
	drops = {},
	stats = {
		{name = "line 1", stat = "+7 - 11 Melee Attack"},
		{name = "line 2", stat = "+7 - 11 Range Attack"},
	},
	slots = 2,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "25%"},
		{name = "1 echo", quantity = "1", chance = "36%"},
		{name = "2 echoes", quantity = "2", chance = "33%"},
		{name = "3 echoes", quantity = "3", chance = "3.5%"},
		{name = "4 echoes", quantity = "4", chance = "2.2%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Copper Javelin"] = {
	name = "Copper Javelin",
	image = "Copper Javelin.png",
	caption = "Javelin made of copper.",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 12,
	tier = "Copper",
    crafting = {
        {
            name = "Copper Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
            {name = "Copper Ingot", quantity = 15},
            {name = "Dull Life Essence", quantity = 20},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+11 - 15 Melee Attack"},
		{name = "line 2", stat = "+11 - 15 Range Attack"},
	},
	slots = 3,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "27%"},
		{name = "1 echo", quantity = "1", chance = "35%"},
		{name = "2 echoes", quantity = "2", chance = "32%"},
		{name = "3 echoes", quantity = "3", chance = "3.3%"},
		{name = "4 echoes", quantity = "4", chance = "2.0%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Quartz Javelin"] = {
	name = "Quartz Javelin",
	image = "Quartz Javelin.png",
	caption = "Fancy, and you are about to throw it away",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 18,
	tier = "Quartz",
    crafting = {
        {
            name = "Quartz Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 20},
            {name = "Dull Nurturing Essence", quantity = 30},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+15 - 21 Melee Attack"},
		{name = "line 2", stat = "+15 - 21 Range Attack"},
	},
	slots = 3,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "29%"},
		{name = "1 echo", quantity = "1", chance = "35%"},
		{name = "2 echoes", quantity = "2", chance = "30%"},
		{name = "3 echoes", quantity = "3", chance = "3.1%"},
		{name = "4 echoes", quantity = "4", chance = "1.9%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Iron Javelin"] = {
	name = "Iron Javelin",
	image = "Iron Javelin.png",
	caption = "Javelin made of iron.",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 24,
	tier = "Iron",
    crafting = {
        {
            name = "Iron Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
            {name = "Iron Ingot", quantity = 25},
            {name = "Dull Raging Essence", quantity = 45},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+21 - 27 Melee Attack"},
		{name = "line 2", stat = "+21 - 27 Range Attack"},
	},
	slots = 4,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "32%"},
		{name = "1 echo", quantity = "1", chance = "35%"},
		{name = "2 echoes", quantity = "2", chance = "29%"},
		{name = "3 echoes", quantity = "3", chance = "2.9%"},
		{name = "4 echoes", quantity = "4", chance = "1.7%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Petrified Javelin"] = {
	name = "Petrified Javelin",
	image = "Petrified Javelin.png",
	caption = "Javelin made of petrified wood",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 30,
	tier = "Petrified",
    crafting = {
        {
            name = "Petrified Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 30},
            {name = "Dull Metal Essence", quantity = 65},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+27 - 33 Melee Attack"},
		{name = "line 2", stat = "+25 Bonus Damage"},
		{name = "line 3", stat = "+27 - 33 Range Attack"},
	},
	slots = 4,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "34%"},
		{name = "1 echo", quantity = "1", chance = "34%"},
		{name = "2 echoes", quantity = "2", chance = "27%"},
		{name = "3 echoes", quantity = "3", chance = "2.7%"},
		{name = "4 echoes", quantity = "4", chance = "1.6%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Stinky Javelin"] = {
	name = "Stinky Javelin",
	image = "Stinky Javelin.png",
	caption = "The smell arrives before the javelin does",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 36,
	tier = "Stinky",
    crafting = {
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
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+33 - 39 Melee Attack"},
		{name = "line 2", stat = "+33 - 39 Range Attack"},
		{name = "line 3", stat = "+25 - 60 Bonus Damage"},
	},
	slots = 4,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "36%"},
		{name = "1 echo", quantity = "1", chance = "34%"},
		{name = "2 echoes", quantity = "2", chance = "26%"},
		{name = "3 echoes", quantity = "3", chance = "2.6%"},
		{name = "4 echoes", quantity = "4", chance = "1.4%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Eerie Javelin"] = {
	name = "Eerie Javelin",
	image = "Eerie Javelin.png",
	caption = "Don't you feel that this weapon is weird?",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 42,
	tier = "Eerie",
    crafting = {
        {
            name = "Eerie Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 35},
            {name = "Raging Essence", quantity = 60},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+39 - 45 Melee Attack"},
		{name = "line 2", stat = "+39 - 45 Range Attack"},
		{name = "line 3", stat = "+35 - 80 Bonus Damage"},
	},
	slots = 4,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "38%"},
		{name = "1 echo", quantity = "1", chance = "34%"},
		{name = "2 echoes", quantity = "2", chance = "25%"},
		{name = "3 echoes", quantity = "3", chance = "2.4%"},
		{name = "4 echoes", quantity = "4", chance = "1.3%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Deep Javelin"] = {
	name = "Deep Javelin",
	image = "Deep Javelin.png",
	caption = "Throw this javelin like you throw away your feeling",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 48,
	tier = "Deep",
    crafting = {
        {
            name = "Deep Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 40},
            {name = "Ghostly Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {},
	stats = {
		{name = "line 1", stat = "+45 - 51 Melee Attack"},
		{name = "line 2", stat = "+45 - 51 Range Attack"},
		{name = "line 3", stat = "+45 - 100 Bonus Damage"},
	},
	slots = 5,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "40%"},
		{name = "1 echo", quantity = "1", chance = "33%"},
		{name = "2 echoes", quantity = "2", chance = "23%"},
		{name = "3 echoes", quantity = "3", chance = "2.3%"},
		{name = "4 echoes", quantity = "4", chance = "1.2%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Repressive Javelin"] = {
	name = "Repressive Javelin",
	image = "Repressive Javelin.png",
	caption = "Its presence deterred your enemy",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 54,
	tier = "Repressive",
    crafting = {
        {
            name = "Repressive Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 45},
            {name = "Nurturing Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+51 - 59 Melee Attack"},
		{name = "line 2", stat = "+51 - 59 Range Attack"},
		{name = "line 3", stat = "+65 - 140 Bonus Damage"},
	},
	slots = 5,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "42%"},
		{name = "1 echo", quantity = "1", chance = "33%"},
		{name = "2 echoes", quantity = "2", chance = "22%"},
		{name = "3 echoes", quantity = "3", chance = "2.1%"},
		{name = "4 echoes", quantity = "4", chance = "1.1%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Sharp Javelin"] = {
	name = "Sharp Javelin",
	image = "Sharp Javelin.png",
	caption = "So sharp you almost feel bad throwing it",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 60,
	tier = "Sharp",
    crafting = {
        {
            name = "Sharp Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 50},
            {name = "Eternal Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+59 - 66 Melee Attack"},
		{name = "line 2", stat = "+59 - 66 Range Attack"},
		{name = "line 3", stat = "+85 - 180 Bonus Damage"},
	},
	slots = 6,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "44%"},
		{name = "1 echo", quantity = "1", chance = "32%"},
		{name = "2 echoes", quantity = "2", chance = "21%"},
		{name = "3 echoes", quantity = "3", chance = "2.0%"},
		{name = "4 echoes", quantity = "4", chance = "1.0%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Radiant Javelin"] = {
	name = "Radiant Javelin",
	image = "Radiant Javelin.png",
	caption = "Gotta fight in style ya know?",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 66,
	tier = "Radiant",
    crafting = {
        {
            name = "Radiant Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 55},
            {name = "Nurturing Essence", quantity = 250},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Snowball", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+66 - 74 Melee Attack"},
		{name = "line 2", stat = "+66 - 74 Range Attack"},
		{name = "line 3", stat = "+115 - 220 Bonus Damage"},
	},
	slots = 6,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "46%"},
		{name = "1 echo", quantity = "1", chance = "31%"},
		{name = "2 echoes", quantity = "2", chance = "20%"},
		{name = "3 echoes", quantity = "3", chance = "1.9%"},
		{name = "4 echoes", quantity = "4", chance = "0.95%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Mystical Javelin"] = {
	name = "Mystical Javelin",
	image = "Mystical Javelin.png",
	caption = "It leaves a trail of light where it passed",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 72,
	tier = "Mystical",
    crafting = {
        {
            name = "Mystical Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 60},
            {name = "Dream Fragment", quantity = 10},
            {name = "Radiant Ghostly Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "0.01%"},
		{name = "Shroomie", chance = "0.01%"},
	},
	stats = {
		{name = "line 1", stat = "+74 - 81 Melee Attack"},
		{name = "line 2", stat = "+74 - 81 Range Attack"},
		{name = "line 3", stat = "+150 - 260 Bonus Damage"},
	},
	slots = 6,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "48%"},
		{name = "1 echo", quantity = "1", chance = "31%"},
		{name = "2 echoes", quantity = "2", chance = "19%"},
		{name = "3 echoes", quantity = "3", chance = "1.7%"},
		{name = "4 echoes", quantity = "4", chance = "0.87%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Arcane Javelin"] = {
	name = "Arcane Javelin",
	image = "Arcane Javelin.png",
	caption = "Thrown once, and it never quite lands where it should",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 78,
	tier = "Arcane",
    crafting = {
        {
            name = "Arcane Javelin",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 65},
            {name = "Ocean Shard", quantity = 15},
            {name = "Radiant Raging Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Shroomie", chance = "<0.00%"},
		{name = "Tallshroom", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+81 - 89 Melee Attack"},
		{name = "line 2", stat = "+81 - 89 Range Attack"},
		{name = "line 3", stat = "+185 - 300 Bonus Damage"},
	},
	slots = 6,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "49%"},
		{name = "1 echo", quantity = "1", chance = "30%"},
		{name = "2 echoes", quantity = "2", chance = "18%"},
		{name = "3 echoes", quantity = "3", chance = "1.6%"},
		{name = "4 echoes", quantity = "4", chance = "0.80%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Exchange"] = {
	name = "Exchange",
	image = "Exchange.png",
	caption = "Everything has a price",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 84,
	tier = "Form Change",
    crafting = {
        {
            name = "Exchange",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 70},
            {name = "Moon Shard", quantity = 20},
            {name = "Radiant Life Essence", quantity = 450},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+89 - 107 Melee Attack"},
		{name = "line 2", stat = "+89 - 107 Range Attack"},
		{name = "line 3", stat = "+220 - 340 Bonus Damage"},
		{name = "line 4", stat = "+12 - 30% Speed"},
	},
	slots = 7,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "51%"},
		{name = "1 echo", quantity = "1", chance = "30%"},
		{name = "2 echoes", quantity = "2", chance = "17%"},
		{name = "3 echoes", quantity = "3", chance = "1.5%"},
		{name = "4 echoes", quantity = "4", chance = "0.73%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Radiant Exchange"] = {
	name = "Radiant Exchange",
	image = "Radiant Exchange.png",
	caption = "What price would you pay for power?",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 90,
	tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Exchange",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 90},
            {name = "Black Diamond", quantity = 10},
            {name = "Radiant Historic Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haunted Flame", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+107 - 116 Melee Attack"},
		{name = "line 2", stat = "+107 - 116 Range Attack"},
		{name = "line 3", stat = "+255 - 380 Bonus Damage"},
		{name = "line 4", stat = "+18 - 42% Speed"},
	},
	slots = 7,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "53%"},
		{name = "1 echo", quantity = "1", chance = "29%"},
		{name = "2 echoes", quantity = "2", chance = "16%"},
		{name = "3 echoes", quantity = "3", chance = "1.4%"},
		{name = "4 echoes", quantity = "4", chance = "0.67%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}

data["Inverse Exchange"] = {
	name = "Inverse Exchange",
	image = "Inverse Exchange.png",
	caption = "But you didn't get what you asked for",
	equipmentType = "Weapon",
	weaponType = "Javelin",
	armorType = "",
	level = 96,
	tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Exchange",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 120},
            {name = "Bloodstone", quantity = 20},
            {name = "Radiant Ghostly Essence", quantity = 950},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
	stats = {
		{name = "line 1", stat = "+116 - 126 Melee Attack"},
		{name = "line 2", stat = "+116 - 126 Range Attack"},
		{name = "line 3", stat = "+290 - 420 Bonus Damage"},
		{name = "line 4", stat = "+24 - 54% Speed"},
	},
	slots = 8,
	echoes = {
		{name = "0 echoes", quantity = "0", chance = "55%"},
		{name = "1 echo", quantity = "1", chance = "28%"},
		{name = "2 echoes", quantity = "2", chance = "15%"},
		{name = "3 echoes", quantity = "3", chance = "1.3%"},
		{name = "4 echoes", quantity = "4", chance = "0.61%"},
	},
	tradable = "Yes",
	craftable = "Yes",
}
	--END OF JAVELIN
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL SWORDS
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Sword"] = {
    name = "Stone Sword",
    image = "Stone Sword.png",
    caption = "Stab your enemy with it!",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 4,
            resources = {
            {name = "Cobbled Stone", quantity = 10},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {
		
	},
	purchase = {
		{name = "Smith", purchasePrice = "2,500 SC", sellPrice = ""}
	},
	drops = {
		{name = "Jel", chance = "0.13%"},
		{name = "Pin Pin", chance = "0.2%"},
		},
    stats = {
    	{name = "line 1", stat = "+10 - 15 Melee Attack"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Copper Sword"] = {
    name = "Copper Sword",
    image = "Copper Sword.png",
    caption = "Sword made of copper.",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
            {name = "Copper Ingot", quantity = 15},
            {name = "Dull Ghostly Essence", quantity = 20},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Pin Pin", chance = "0.05%"},
		{name = "Slip", chance = "0.05%"},
		},
    stats = {
    	{name = "line 1", stat = "+15 - 20 Melee Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Quartz Sword"] = {
    name = "Quartz Sword",
    image = "Quartz Sword.png",
    caption = "Fancy sword made of quartz",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 20},
            {name = "Dull Raging Essence", quantity = 30},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Droppo", chance = "0.3%"},
		},
    stats = {
    	{name = "line 1", stat = "+20 - 25 Melee Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Iron Sword"] = {
    name = "Iron Sword",
    image = "Iron Sword.png",
    caption = "Ah iron sword, the staple of weapon",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
            {name = "Iron Ingot", quantity = 25},
            {name = "Dull Life Essence", quantity = 45},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Droppo", chance = "0.4%"},
		},
    stats = {
    	{name = "line 1", stat = "+28 - 35 Melee Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Petrified Sword"] = {
    name = "Petrified Sword",
    image = "Petrified Sword.png",
    caption = "Ah iron sword, the staple of weapon",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 24,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 30},
            {name = "Dull Ghostly Essence", quantity = 65},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "MonoGhoul", chance = "0.02%"},
		{name = "Stinky Sheep", chance = "0.17%"},
		},
    stats = {
    	{name = "line 1", stat = "+35 - 41 Melee Attack"},
		{name = "line 2", stat = "+2 - 2% Melee Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Stinky Sword"] = {
    name = "Stinky Sword",
    image = "Stinky Sword.png",
    caption = "Ah iron sword, the staple of weapon",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Ingot", quantity = 30},
            {name = "Dull Life Essence", quantity = 90},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Dark Pumpkin", chance = "0.02%"},
		},
    stats = {
    	{name = "line 1", stat = "+41 - 48 Melee Attack"},
		{name = "line 2", stat = "+3 - 3% Melee Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Eerie Sword"] = {
    name = "Eerie Sword",
    image = "Eerie Sword.png",
    caption = "You thought green sword would poison your enemy, but it doesn't.",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 35},
            {name = "Metal Essence", quantity = 60},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Soulpling", chance = "0.01%"},
		{name = "Ferni", chance = "0.02%"},
		},
    stats = {
    	{name = "line 1", stat = "+48 - 56 Melee Attack"},
		{name = "line 2", stat = "+3 - 6% Melee Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Deep Sword"] = {
    name = "Deep Sword",
    image = "Deep Sword.png",
    caption = "When you kill your enemy, was it you or the sword that kills it...?",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 40},
            {name = "Life Essence", quantity = 90},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Giga", chance = "0.01%"},
		},
    stats = {
    	{name = "line 1", stat = "+56 - 63 Melee Attack"},
		{name = "line 2", stat = "+5 - 10% Melee Attack SPD"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Repressive Sword"] = {
    name = "Repressive Sword",
    image = "Repressive Sword.png",
    caption = "Its presence deterred your enemy",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 45},
            {name = "Historic Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "0.05%"},
		{name = "Bubble Snake", chance = "<0.00%"},
		},
    stats = {
    	{name = "line 1", stat = "+63 - 72 Melee Attack"},
		{name = "line 2", stat = "+5 - 10% Melee Attack SPD"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Sharp Sword"] = {
    name = "Sharp Sword",
    image = "Sharp Sword.png",
    caption = "So sharp it'll slash through anything",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 50},
            {name = "Metal Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		},
    stats = {
    	{name = "line 1", stat = "+72 - 80 Melee Attack"},
		{name = "line 2", stat = "+6 - 12% Melee Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Radiant Sword"] = {
    name = "Radiant Sword",
    image = "Radiant Sword.png",
    caption = "Golden sword! Try not to plunge it into random stone",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 66,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 55},
            {name = "Life Essence", quantity = 250},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+80 - 88 Melee Attack"},
		{name = "line 2", stat = "+7 - 14% Melee Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Mystical Sword"] = {
    name = "Mystical Sword",
    image = "Mystical Sword.png",
    caption = "Golden sword! Try not to plunge it into random stone",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 60},
            {name = "Dream Fragment", quantity = 10},
            {name = "Radiant Historic Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Fernek", chance = "0.05%"},
		{name = "Rokkak", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+88 - 97 Melee Attack"},
		{name = "line 2", stat = "+8 - 16% Melee Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Arcane Sword"] = {
    name = "Arcane Sword",
    image = "Arcane Sword.png",
    caption = "Golden sword! Try not to plunge it into random stone",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Sword",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 65},
            {name = "Ocean Shard", quantity = 15},
            {name = "Radiant Eternal Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Shroomie", chance = "<0.00%"},
		{name = "Tallshroom", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+97 - 106 Melee Attack"},
		{name = "line 2", stat = "+9 - 18% Melee Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Sword of Heart"] = {
    name = "Sword of Heart",
    image = "Sword of Heart.png",
    caption = "No one will harm those you with to protect",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Sword of Heart",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 70},
            {name = "Moon Shard", quantity = 20},
            {name = "Radiant Metal Essence", quantity = 450},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Ancient Soulfish", chance = "0.01%"},
		{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+106 - 128 Melee Attack"},
		{name = "line 2", stat = "+10 - 20% Melee Attack SPD"},
		{name = "line 3", stat = "+2 - 5% Melee Damage"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Radiant Sword of Heart"] = {
    name = "Radiant Sword of Heart",
    image = "Radiant Sword of Heart.png",
    caption = "Your sword shines as bright as your heart.",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Sword of Heart",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 90},
            {name = "Black Diamond", quantity = 10},
            {name = "Radiant Eternal Essence", quantity = 680},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haunted Flame", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+128 - 138 Melee Attack"},
		{name = "line 2", stat = "+11 - 22% Melee Attack SPD"},
		{name = "line 3", stat = "+3 - 7% Melee Damage"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Inverse Sword of Heart"] = {
    name = "Inverse Sword of Heart",
    image = "Inverse Sword of Heart.png",
    caption = "Will you find your heart ever again?",
    equipmentType = "Weapon",
    weaponType = "Sword",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Sword of Heart",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 120},
            {name = "Bloodstone", quantity = 20},
            {name = "Radiant Metal Essence", quantity = 950},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+138 - 149 Melee Attack"},
		{name = "line 2", stat = "+12 - 24% Melee Attack SPD"},
		{name = "line 3", stat = "+4 - 9% Melee Damage"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Old Sickle"] = {
    name = "Old Sickle",
    image = "Old Sickle.png",
    caption = "A worn harvesting blade, dark with old use. It reaps more than grain each kill feeds the reaper.",
    equipmentType = "Weapon",
    weaponType = "Sword",
    tier = "Dark",
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+0 - 234.8 Melee Attack (scales w/ Lv)"},
		{name = "line 2", stat = "+0 - 28 HP on Kill (scales w/ Lv)"},
    },
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "No"
}
	--END OF SWORDS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL MAGIC WANDS
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Magic Wand"] = {
    name = "Stone Magic Wand",
    image = "Stone Magic Wand.png",
    caption = "Good enough to cast magic",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 4,
            resources = {
            {name = "Cobbled Stone", quantity = 10},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {
		
	},
	purchase = {
		{name = "Smith", purchasePrice = "2,500 SC", sellPrice = ""}
	},
	drops = {
		{name = "Hopper", chance = "0.36%"},
		{name = "Slip", chance = "0.21%"},
		},
    stats = {
    	{name = "line 1", stat = "+10 - 15 Magic Attack"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Copper Magic Wand"] = {
    name = "Copper Magic Wand",
    image = "Copper Magic Wand.png",
    caption = "Magic Magic Wand made of copper.",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
            {name = "Copper Ingot", quantity = 15},
            {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Glowsnail", chance = "0.06%"},
		{name = "Hopper", chance = "0.06%"},
		},
    stats = {
    	{name = "line 1", stat = "+15 - 20 Magic Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Quartz Magic Wand"] = {
    name = "Quartz Magic Wand",
    image = "Quartz Magic Wand.png",
    caption = "Fancy Magic Magic Wand made of quartz",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 20},
            {name = "Dull Eternal Essence", quantity = 30},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Cloudsheep", chance = "0.04%"},
		},
    stats = {
    	{name = "line 1", stat = "+20 - 25 Magic Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Iron Magic Wand"] = {
    name = "Iron Magic Wand",
    image = "Iron Magic Wand.png",
    caption = "Magic wand made of iron.",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
            {name = "Iron Ingot", quantity = 25},
            {name = "Dull Raging Essence", quantity = 45},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+28 - 35 Magic Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Petrified Magic Wand"] = {
    name = "Petrified Magic Wand",
    image = "Petrified Magic Wand.png",
    caption = "Magic wand made of iron.",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 24,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 30},
            {name = "Dull Nurturing Essence", quantity = 65},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Licke", chance = "0.18%"},
		{name = "Rainbow Cloudsheep", chance = "0.19%"},
		},
    stats = {
    	{name = "line 1", stat = "+35 - 41 Magic Attack"},
		{name = "line 2", stat = "+2 - 2% Magic Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Stinky Magic Wand"] = {
    name = "Stinky Magic Wand",
    image = "Stinky Magic Wand.png",
    caption = "Magic wand made of iron.",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Ingot", quantity = 30},
            {name = "Dull Raging Essence", quantity = 90},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+41 - 48 Magic Attack"},
		{name = "line 2", stat = "+3 - 3% Magic Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Eerie Magic Wand"] = {
    name = "Eerie Magic Wand",
    image = "Eerie Magic Wand.png",
    caption = "You feel weird casting magic using this wand.",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 35},
            {name = "Life Essence", quantity = 60},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Licke", chance = "0.01%"},
		},
    stats = {
    	{name = "line 1", stat = "+48 - 56 Magic Attack"},
		{name = "line 2", stat = "+3 - 6% Magic Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Deep Magic Wand"] = {
    name = "Deep Magic Wand",
    image = "Deep Magic Wand.png",
    caption = "How did you cast magic when you have no hand?",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 40},
            {name = "Life Essence", quantity = 90},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Sweel", chance = "0.01%"},
		},
    stats = {
    	{name = "line 1", stat = "+56 - 63 Magic Attack"},
		{name = "line 2", stat = "+5 - 10% Magic Attack SPD"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Repressive Magic Wand"] = {
    name = "Repressive Magic Wand",
    image = "Repressive Magic Wand.png",
    caption = "Your spells are repressive",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 45},
            {name = "Life Essence", quantity = 130},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
		},
    stats = {
    	{name = "line 1", stat = "+63 - 72 Magic Attack"},
		{name = "line 2", stat = "+5 - 10% Magic Attack SPD"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Sharp Magic Wand"] = {
    name = "Sharp Magic Wand",
    image = "Sharp Magic Wand.png",
    caption = "Your magic is sharp",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 50},
            {name = "Metal Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
		},
    stats = {
    	{name = "line 1", stat = "+72 - 80 Magic Attack"},
		{name = "line 2", stat = "+6 - 12% Magic Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Radiant Magic Wand"] = {
    name = "Radiant Magic Wand",
    image = "Radiant Magic Wand.png",
    caption = "Walking around with this will make you look more like a mage than you actually are.",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 66,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 55},
            {name = "Historic Essence", quantity = 250},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+80 - 88 Magic Attack"},
		{name = "line 2", stat = "+7 - 14% Magic Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Mystical Magic Wand"] = {
    name = "Mystical Magic Wand",
    image = "Mystical Magic Wand.png",
    caption = "Walking around with this will make you look more like a mage than you actually are.",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 60},
            {name = "Dream Fragment", quantity = 10},
            {name = "Radiant Eternal Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rocky", chance = "<0.00%"},
		{name = "Rokkak", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+88 - 97 Magic Attack"},
		{name = "line 2", stat = "+8 - 16% Magic Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Arcane Magic Wand"] = {
    name = "Arcane Magic Wand",
    image = "Arcane Magic Wand.png",
    caption = "Walking around with this will make you look more like a mage than you actually are.",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Magic Wand",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 65},
            {name = "Ocean Shard", quantity = 15},
            {name = "Radiant Nurturing Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "<0.00%"},
		{name = "Shroomie", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+97 - 106 Magic Attack"},
		{name = "line 2", stat = "+9 - 18% Magic Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Tear of the Fallen"] = {
    name = "Tear of the Fallen",
    image = "Tear of the Fallen.png",
    caption = "You heard a faint cry in the distance",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Tear of the Fallen",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 70},
            {name = "Moon Shard", quantity = 20},
            {name = "Radiant Life Essence", quantity = 450},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Blaze", chance = "0.01%"},
		{name = "Haowl", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+106 - 128 Magic Attack"},
		{name = "line 2", stat = "+10 - 20% Magic Attack SPD"},
		{name = "line 3", stat = "+2 - 5% Magic Damage"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Radiant Tear of the Fallen"] = {
    name = "Radiant Tear of the Fallen",
    image = "Radiant Tear of the Fallen.png",
    caption = "Will you finish what he started?",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Tear of the Fallen",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 90},
            {name = "Black Diamond", quantity = 10},
            {name = "Radiant Ghostly Essence", quantity = 680},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Blaze", chance = "<0.00%"},
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+128 - 138 Magic Attack"},
		{name = "line 2", stat = "+11 - 22% Magic Attack SPD"},
		{name = "line 3", stat = "+3 - 7% Magic Damage"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Inverse Tear of the Fallen"] = {
    name = "Inverse Tear of the Fallen",
    image = "Inverse Tear of the Fallen.png",
    caption = "You can hear her cry in your sleep",
    equipmentType = "Weapon",
    weaponType = "Magic Wand",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Tear of the Fallen",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 120},
            {name = "Bloodstone", quantity = 20},
            {name = "Radiant Nurturing Essence", quantity = 950},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+138 - 149 Magic Attack"},
		{name = "line 2", stat = "+12 - 24% Magic Attack SPD"},
		{name = "line 3", stat = "+4 - 9% Magic Damage"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF MAGIC WANDS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL KUNAI
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Kunai"] = {
    name = "Kunai",
    image = "Kunai.png",
    caption = "Kunai throwing knives, Be careful with them.",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 5,
    tier = "Unique",
    crafting = {},
	quest = {},
	purchase = {},
	drops = {
		{name = "Bubble Spirit", chance = "0.05%"},
		},
    stats = {
    	{name = "line 1", stat = "+9? - ? Range Attack"},
    	{name = "line 2", stat = "+1.1%? - ? Crit Rate"},
    	{name = "line 3", stat = "+18.4%? - ? Crit Damage"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "No"
}
data["Stone Kunai"] = {
    name = "Stone Kunai",
    image = "Stone Kunai.png",
    caption = "You're literally throwing stone at your enemy!",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 4,
            resources = {
            {name = "Cobbled Stone", quantity = 10},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {
		
	},
	purchase = {
		{name = "Smith", purchasePrice = "2,500 SC", sellPrice = ""}
	},
	drops = {
		{name = "Flows", chance = "0.17%"},
		{name = "Cloudsheep", chance = "0.39%"},
		},
    stats = {
    	{name = "line 1", stat = "+10 - 15 Range Attack"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Copper Kunai"] = {
    name = "Copper Kunai",
    image = "Copper Kunai.png",
    caption = "Now you're throwing a piece of copper, better than stone I guess?",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
            {name = "Copper Ingot", quantity = 15},
            {name = "Dull Nurturing Essence", quantity = 20},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Pin Pin", chance = "0.05%"},
		{name = "Slip", chance = "0.05%"}
		},
    stats = {
    	{name = "line 1", stat = "+15 - 20 Range Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Spiky Shell"] = {
    name = "Spiky Shell",
    image = "Spiky Shell.png",
    caption = "An interesting type of throwing knives. Due to its spiky exterior, it's stronger than normal kunais.",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 25,
    tier = "Unique",
    crafting = {},
	quest = {},
	purchase = {},
	drops = {
		{name = "Crusher", chance = "0.04%"}
		},
    stats = {
    	{name = "line 1", stat = "+19.2? - ? Range Attack"},
    	{name = "line 2", stat = "+6.5%? - ? Crit Rate"},
    	{name = "line 3", stat = "+33.9%? - ? Crit Damage"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "No"
}
data["Quartz Kunai"] = {
    name = "Quartz Kunai",
    image = "Quartz Kunai.png",
    caption = "Sparkly kunai",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 20},
            {name = "Dull Raging Essence", quantity = 30},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Droppo", chance = "0.3%"},
		{name = "Licki", chance = "0.63%"}
		},
    stats = {
    	{name = "line 1", stat = "+20 - 25 Range Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Iron Kunai"] = {
    name = "Iron Kunai",
    image = "Iron Kunai.png",
    caption = "Made to kill",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
            {name = "Iron Ingot", quantity = 25},
            {name = "Dull Raging Essence", quantity = 45},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Snapper", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+28 - 35 Range Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Petrified Kunai"] = {
    name = "Petrified Kunai",
    image = "Petrified Kunai.png",
    caption = "Made to kill",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 24,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 30},
            {name = "Dull Life Essence", quantity = 65},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Monoghoul", chance = "0.02%"},
		{name = "Stinky Sheep", chance = "0.17%"},
		},
    stats = {
    	{name = "line 1", stat = "+35 - 41 Range Attack"},
		{name = "line 2", stat = "+2 - 2% Range Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Stinky Kunai"] = {
    name = "Stinky Kunai",
    image = "Stinky Kunai.png",
    caption = "Made to kill",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Ingot", quantity = 30},
            {name = "Dull Nurturing Essence", quantity = 90},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Dark Pumpkin", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+41 - 48 Range Attack"},
		{name = "line 2", stat = "+3 - 3% Range Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Eerie Kunai"] = {
    name = "Eerie Kunai",
    image = "Eerie Kunai.png",
    caption = "This suits you",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 35},
            {name = "Historic Essence", quantity = 60},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Soulpling", chance = "0.01%"},
		{name = "Ferni", chance = "0.02%"},
		},
    stats = {
    	{name = "line 1", stat = "+48 - 56 Range Attack"},
		{name = "line 2", stat = "+3 - 6% Range Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Deep Kunai"] = {
    name = "Deep Kunai",
    image = "Deep Kunai.png",
    caption = "This item kinda look like a spiky shell doesn't it?",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 40},
            {name = "Ghostly Essence", quantity = 90},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Soultree", chance = "0.01%"},
		},
    stats = {
    	{name = "line 1", stat = "+56 - 63 Range Attack"},
		{name = "line 2", stat = "+4 - 8% Range Attack SPD"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Repressive Kunai"] = {
    name = "Repressive Kunai",
    image = "Repressive Kunai.png",
    caption = "No soul wants to be hit by this",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 45},
            {name = "Ghostly Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+63 - 72 Range Attack"},
		{name = "line 2", stat = "+5 - 10% Range Attack SPD"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Sharp Kunai"] = {
    name = "Sharp Kunai",
    image = "Sharp Kunai.png",
    caption = "So sharp it'll pierce through anything",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 50},
            {name = "Metal Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
		},
    stats = {
    	{name = "line 1", stat = "+72 - 80 Range Attack"},
		{name = "line 2", stat = "+6 - 12% Range Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Radiant Kunai"] = {
    name = "Radiant Kunai",
    image = "Radiant Kunai.png",
    caption = "Throwing gold at enemies, I with I'm as rich as you",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 66,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 55},
            {name = "Nurturing Essence", quantity = 250},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+80 - 88 Range Attack"},
		{name = "line 2", stat = "+7 - 14% Range Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Mystical Kunai"] = {
    name = "Mystical Kunai",
    image = "Mystical Kunai.png",
    caption = "Throwing gold at enemies, I with I'm as rich as you",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 60},
            {name = "Dream Fragment", quantity = 10},
            {name = "Radiant Nurturing Essence", quantity = 200},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Kiwi", chance = "0.02%"},
		{name = "Tallshroom", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+88 - 97 Range Attack"},
		{name = "line 2", stat = "+8 - 16% Range Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Arcane Kunai"] = {
    name = "Arcane Kunai",
    image = "Arcane Kunai.png",
    caption = "Throwing gold at enemies, I with I'm as rich as you",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Kunai",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 65},
            {name = "Ocean Shard", quantity = 15},
            {name = "Radiant Eternal Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "<0.00%"},
		{name = "Kiwi", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+97 - 106 Range Attack"},
		{name = "line 2", stat = "+9 - 18% Range Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Knull"] = {
    name = "Knull",
    image = "Knull.png",
    caption = "Reduce anything it hits to nothingness",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Knull",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 95},
            {name = "Moonstone", quantity = 9},
            {name = "Radiant Nurturing Essence", quantity = 450},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+106 - 128 Range Attack"},
		{name = "line 2", stat = "+10 - 20% Range Attack SPD"},
		{name = "line 3", stat = "+2 - 5% Range Damage"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Radiant Knull"] = {
    name = "Radiant Knull",
    image = "Radiant Knull.png",
    caption = "Your enemy got nothing on you",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Knull",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 120},
            {name = "Black Diamond", quantity = 15},
            {name = "Radiant Nurturing Essence", quantity = 680},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+128 - 138 Range Attack"},
		{name = "line 2", stat = "+11 - 22% Range Attack SPD"},
		{name = "line 3", stat = "+3 - 7% Range Damage"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Inverse Knull"] = {
    name = "Inverse Knull",
    image = "Inverse Knull.png",
    caption = "Nothing matters",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Knull",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 160},
            {name = "Bloodstone", quantity = 30},
            {name = "Radiant Raging Essence", quantity = 950},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+138 - 149 Range Attack"},
		{name = "line 2", stat = "+12 - 24% Range Attack SPD"},
		{name = "line 3", stat = "+4 - 9% Range Damage"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Dark Bullet-knife"] = {
    name = "Dark Bullet-knife",
    image = "Dark Bullet-knife.png",
    caption = "It emanates darkness. The strongest throwing knife... it's clearly very dangerous when thrown.",
    equipmentType = "Weapon",
    weaponType = "Kunai",
    level = 55,
    tier = "Unique",
	drops = {},
    stats = {
    	{name = "line 1", stat = "Range Attack"},
    	{name = "line 2", stat = "Crit Rate"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "No",
    mysteryTicket = "Yes",
}
	--END OF KUNAI
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL CROSSES
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Cross"] = {
    name = "Stone Cross",
    image = "Stone Cross.png",
    caption = "Token of your conviction, doesn't matter that it's just a stone.",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 4,
            resources = {
            {name = "Cobbled Stone", quantity = 10},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {
		
	},
	purchase = {
		{name = "Smith", purchasePrice = "2,500 SC", sellPrice = ""}
	},
	drops = {
		{name = "Flows", chance = "0.17%"},
		{name = "Cloudsheep", chance = "0.39%"},
		},
    stats = {
    	{name = "line 1", stat = "+10 - 15 Faith Attack"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Copper Cross"] = {
    name = "Copper Cross",
    image = "Copper Cross.png",
    caption = "Cross made of copper.",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 8,
            resources = {
            {name = "Copper Ingot", quantity = 15},
            {name = "Dull Raging Essence", quantity = 20},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Flows", chance = "0.05%"},
		{name = "Pin Pin", chance = "0.05%"}
		},
    stats = {
    	{name = "line 1", stat = "+15 - 20 Faith Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Quartz Cross"] = {
    name = "Quartz Cross",
    image = "Quartz Cross.png",
    caption = "Fancy cross but its just an ornament",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Ingot", quantity = 20},
            {name = "Dull Historic Essence", quantity = 30},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Squishling", chance = "0.05%"},
		},
    stats = {
    	{name = "line 1", stat = "+20 - 25 Faith Attack"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Iron Cross"] = {
    name = "Iron Cross",
    image = "Iron Cross.png",
    caption = "It's cold to the touch",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 19,
            resources = {
            {name = "Iron Ingot", quantity = 25},
            {name = "Dull Nurturing Essence", quantity = 45},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Crusher", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+28 - 35 Faith Attack"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Petrified Cross"] = {
    name = "Petrified Cross",
    image = "Petrified Cross.png",
    caption = "It's cold to the touch",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 24,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Ingot", quantity = 30},
            {name = "Dull Nurturing Essence", quantity = 65},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Bananek", chance = "0.02%"},
		{name = "Sadling", chance = "0.03%"},
		},
    stats = {
    	{name = "line 1", stat = "+35 - 41 Faith Attack"},
		{name = "line 2", stat = "+2 - 2% Faith Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Stinky Cross"] = {
    name = "Stinky Cross",
    image = "Stinky Cross.png",
    caption = "It's cold to the touch",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Ingot", quantity = 30},
            {name = "Dull Nurturing Essence", quantity = 90},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Stinky Sheep", chance = "0.02%"},
		{name = "Spot Slime", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+41 - 48 Faith Attack"},
		{name = "line 2", stat = "+3 - 3% Faith Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Eerie Cross"] = {
    name = "Eerie Cross",
    image = "Eerie Cross.png",
    caption = "You insist in your belief.",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Ingot", quantity = 35},
            {name = "Historic Essence", quantity = 60},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Rainbow Cloudsheep", chance = "0.01%"},
		{name = "Humblebee", chance = "0.01%"},
		},
    stats = {
    	{name = "line 1", stat = "+48 - 56 Faith Attack"},
		{name = "line 2", stat = "+3 - 6% Faith Attack SPD"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Deep Cross"] = {
    name = "Deep Cross",
    image = "Deep Cross.png",
    caption = "Does just following what people around you believe make you right?",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Ingot", quantity = 40},
            {name = "Metal Essence", quantity = 90},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Soultree", chance = "0.01%"},
		},
    stats = {
    	{name = "line 1", stat = "+56 - 63 Faith Attack"},
		{name = "line 2", stat = "+4 - 8% Faith Attack SPD"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Repressive Cross"] = {
    name = "Repressive Cross",
    image = "Repressive Cross.png",
    caption = "Your will is firm",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Ingot", quantity = 45},
            {name = "Raging Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+63 - 72 Faith Attack"},
		{name = "line 2", stat = "+5 - 10% Faith Attack SPD"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Sharp Cross"] = {
    name = "Sharp Cross",
    image = "Sharp Cross.png",
    caption = "You stick to your belief even if it hurts you",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Ingot", quantity = 50},
            {name = "Ghostly Essence", quantity = 180},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
		},
    stats = {
    	{name = "line 1", stat = "+72 - 80 Faith Attack"},
		{name = "line 2", stat = "+6 - 12% Faith Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Radiant Cross"] = {
    name = "Radiant Cross",
    image = "Radiant Cross.png",
    caption = "No matter how shiny, it's just a material possession",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 66,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 63,
            resources = {
            {name = "Gold Ingot", quantity = 55},
            {name = "Historic Essence", quantity = 250},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+80 - 88 Faith Attack"},
		{name = "line 2", stat = "+7 - 14% Faith Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Mystical Cross"] = {
    name = "Mystical Cross",
    image = "Mystical Cross.png",
    caption = "No matter how shiny, it's just a material possession",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Ingot", quantity = 60},
            {name = "Dream Fragment", quantity = 10},
            {name = "Radiant Historic Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "0.01%"},
		{name = "Rocky", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+88 - 97 Faith Attack"},
		{name = "line 2", stat = "+8 - 16% Faith Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Arcane Cross"] = {
    name = "Arcane Cross",
    image = "Arcane Cross.png",
    caption = "No matter how shiny, it's just a material possession",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Cross",
            craftingType = "Weapon Smithing",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Ingot", quantity = 65},
            {name = "Ocean Shard", quantity = 15},
            {name = "Radiant Life Essence", quantity = 320},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Kiwi", chance = "<0.00%"},
		{name = "Tallshroom", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+97 - 106 Faith Attack"},
		{name = "line 2", stat = "+9 - 18% Faith Attack SPD"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Faith"] = {
    name = "Faith",
    image = "Faith.png",
    caption = "You have faith",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 84,
    tier = "Form Change",
    crafting = {
        {
            name = "Faith",
            craftingType = "Weapon Smithing",
            craftingLevel = 81,
            resources = {
            {name = "Eternal Ingot", quantity = 70},
            {name = "Moon Shard", quantity = 20},
            {name = "Radiant Life Essence", quantity = 450},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Soulfish", chance = "<0.00%"},
		{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+106 - 128 Faith Attack"},
		{name = "line 2", stat = "+10 - 20% Faith Attack SPD"},
		{name = "line 3", stat = "+2 - 5% Faith Damage"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Radiant Faith"] = {
    name = "Radiant Faith",
    image = "Radiant Faith.png",
    caption = "Others believe in you. And you Believe in the world of good",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 90,
    tier = "Radiant Form Change",
    crafting = {
        {
            name = "Radiant Faith",
            craftingType = "Weapon Smithing",
            craftingLevel = 87,
            resources = {
            {name = "Star Ingot", quantity = 90},
            {name = "Black Diamond", quantity = 10},
            {name = "Radiant Historic Essence", quantity = 680},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {
		{name = "Blaze", chance = "<0.00%"},
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+128 - 138 Faith Attack"},
		{name = "line 2", stat = "+11 - 22% Faith Attack SPD"},
		{name = "line 3", stat = "+3 - 7% Faith Damage"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
data["Inverse Faith"] = {
    name = "Inverse Faith",
    image = "Inverse Faith.png",
    caption = "The weight of faith is crushing",
    equipmentType = "Weapon",
    weaponType = "Cross",
    level = 96,
    tier = "Inverse Form Change",
    crafting = {
        {
            name = "Inverse Faith",
            craftingType = "Weapon Smithing",
            craftingLevel = 93,
            resources = {
            {name = "Obsidium Ingot", quantity = 120},
            {name = "Bloodstone", quantity = 20},
            {name = "Radiant Raging Essence", quantity = 950},
            }
        },
    },
	quest = {
		
	},
	purchase = {},
	drops = {},
    stats = {
    	{name = "line 1", stat = "+138 - 149 Faith Attack"},
		{name = "line 2", stat = "+12 - 24% Faith Attack SPD"},
		{name = "line 3", stat = "+4 - 9% Faith Damage"},
    },
    slots = 8,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF CROSSES
-------------------------------------------------------------------------------------------------------------------------------------------------
--END OF WEAPONS
-------------------------------------------------------------------------------------------------------------------------------------------------

--ALL ARMOR
	--ALL HATS
	--ALL HELMETS
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Helmet"] = {
    name = "Stone Helmet",
    image = "Stone Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 2,
            resources = {
            {name = "Stone Slab", quantity = 5},
            {name = "Dull Life Essence", quantity = 5},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "900 SC", sellPrice = ""}
	},
	drops = {
		{name = "Slip", chance = "0.21%"},
		{name = "Bubble Spirit", chance = "0.36%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+3 - 4 Max HP"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Copper Helmet"] = {
    name = "Copper Helmet",
    image = "Copper Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 7,
            resources = {
            {name = "Copper Plate", quantity = 7},
            {name = "Dull Nurturing Essence", quantity = 8},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Jel", chance = "0.04%"},
		{name = "Flows", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+6 - 8 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Quartz Helmet"] = {
    name = "Quartz Helmet",
    image = "Quartz Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 13,
            resources = {
            {name = "Refined Quartz Plate", quantity = 9},
            {name = "Dull Metal Essence", quantity = 12},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Snapper", chance = "0.19%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
		{name = "line 2", stat = "+9 - 11 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Iron Helmet"] = {
    name = "Iron Helmet",
    image = "Iron Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 19,
            resources = {
            {name = "Iron Plate", quantity = 11},
            {name = "Dull Eternal Essence", quantity = 18},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Troppo", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 7.5 Defense"},
   		{name = "line 2", stat = "+12 - 15 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Petrified Helmet"] = {
    name = "Petrified Helmet",
    image = "Petrified Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 30,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 25,
            resources = {
            {name = "Petrified Plate", quantity = 13},
            {name = "Dull Nurturing Essence", quantity = 29},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Bananek", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 7.5 Defense"},
		{name = "line 2", stat = "+15 - 18 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Stinky Helmet"] = {
    name = "Stinky Helmet",
    image = "Stinky Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 31,
            resources = {
            {name = "Stinky Plate", quantity = 15},
            {name = "Dull Metal Essence", quantity = 42},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
		{name = "line 2", stat = "+18 - 22 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eerie Helmet"] = {
    name = "Eerie Helmet",
    image = "Eerie Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 37,
            resources = {
            {name = "Malachite Plate", quantity = 18},
            {name = "Historic Essence", quantity = 26},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soulpling", chance = "0.01%"},
		{name = "Ferni", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
		{name = "line 2", stat = "+21 - 26 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Deep Helmet"] = {
    name = "Deep Helmet",
    image = "Deep Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 43,
            resources = {
            {name = "Cobalt Plate", quantity = 21},
            {name = "Metal Essence", quantity = 39},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soultree", chance = "0.01%"},
		{name = "Sweel", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
		{name = "line 2", stat = "+24 - 29 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Repressive Helmet"] = {
    name = "Repressive Helmet",
    image = "Repressive Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 49,
            resources = {
            {name = "Bismuth Plate", quantity = 24},
            {name = "Eternal Essence", quantity = 52},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
	 	{name = "line 2", stat = "+27 - 33 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sharp Helmet"] = {
    name = "Sharp Helmet",
    image = "Sharp Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 56,
            resources = {
            {name = "Titanium Plate", quantity = 28},
            {name = "Metal Essence", quantity = 78},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+13.5 - 15 Defense"},
	 	{name = "line 2", stat = "+30 - 36 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Helmet"] = {
    name = "Radiant Helmet",
    image = "Radiant Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 66,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 61,
            resources = {
            {name = "Gold Plate", quantity = 32},
            {name = "Historic Essence", quantity = 104},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 18 Defense"},
		{name = "line 2", stat = "+33 - 40 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Mystical Helmet"] = {
    name = "Mystical Helmet",
    image = "Mystical Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 67,
            resources = {
            {name = "Mithril Plate", quantity = 35},
            {name = "Dream Fragment", quantity = 15},
            {name = "Radiant Ghostly Essence", quantity = 85},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Golem", chance = "<0.00%"},
		{name = "Kiwi", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
		{name = "line 2", stat = "+36 - 44 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Helmet"] = {
    name = "Arcane Helmet",
    image = "Arcane Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 73,
            resources = {
            {name = "Arcane Plate", quantity = 38},
            {name = "Ocean Shard", quantity = 20},
            {name = "Radiant Historic Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Kiwi", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+19.5 - 21 Defense"},
   		{name = "line 2", stat = "+39 - 47 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Star Helmet"] = {
    name = "Star Helmet",
    image = "Star Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 84,
    tier = "Star",
    crafting = {
        {
            name = "Star Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 79,
            resources = {
            {name = "Star Plate", quantity = 42},
            {name = "Black Diamond Fragment", quantity = 25},
            {name = "Radiant Raging Essence", quantity = 195},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Pyramid Guardian", chance = "0.03%"},
		{name = "Haunted Flame", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+21 - 22.5 Defense"},
   		{name = "line 2", stat = "+42 - 51 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Helmet"] = {
    name = "Eternal Helmet",
    image = "Eternal Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 85,
            resources = {
            {name = "Eternal Plate", quantity = 46},
            {name = "Moon Shard", quantity = 30},
            {name = "Radiant Nurturing Essence", quantity = 293},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Haunted Flame", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+22.5 - 24 Defense"},
   		{name = "line 2", stat = "+45 - 54 Max HP"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Obsidium Helmet"] = {
    name = "Obsidium Helmet",
    image = "Obsidium Helmet.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Helmet",
    level = 96,
    tier = "Obsidium",
    crafting = {
        {
            name = "Obsidium Helmet",
            craftingType = "Armor Crafting",
            craftingLevel = 91,
            resources = {
            {name = "Obsidium Plate", quantity = 50},
            {name = "Blood Pebble", quantity = 40},
            {name = "Radiant Metal Essence", quantity = 423},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {

	},
    stats = {
    	{name = "line 1", stat = "+24 - 25.5 Defense"},
   		{name = "line 2", stat = "+48 - 58 Max HP"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

	--END OF HELMETS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL SCHOLAR HATS
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Green Scholar Hat"] = {
    name = "Green Scholar Hat",
    image = "Green Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 2,
            resources = {
            {name = "Refined Fiber", quantity = 5},
            {name = "Dull Life Essence", quantity = 5},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "900 SC", sellPrice = ""}
	},
	drops = {
		{name = "Slime", chance = "0.04%"},
		{name = "Flows", chance = "0.17%"},
	},
    stats = {
    	{name = "line 1", stat = "+0 - 1.5 Defense"},
   		{name = "line 2", stat = "+3 - 4 Shield"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Scholar Hat"] = {
    name = "Cotton Scholar Hat",
    image = "Cotton Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 7,
            resources = {
            {name = "Cotton Fabric", quantity = 7},
            {name = "Dull Nurturing Essence", quantity = 8},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Jel", chance = "0.04%"},
		{name = "Cloudsheep", chance = "0.37%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+5 - 6 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Scholar Hat"] = {
    name = "Coconut Scholar Hat",
    image = "Coconut Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 13,
            resources = {
            {name = "Coconut Fabric", quantity = 9},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Cloudsheep", chance = "0.04%"},
		{name = "Squishling", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
		{name = "line 2", stat = "+7 - 9 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Scholar Hat"] = {
    name = "Yellow Scholar Hat",
    image = "Yellow Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 19,
            resources = {
            {name = "Yellow Fabric", quantity = 11},
            {name = "Dull Metal Essence", quantity = 18},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Snapper", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+9 - 11 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Scholar Hat"] = {
    name = "Glowing Scholar Hat",
    image = "Glowing Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 25,
            resources = {
            {name = "Glowing Fabric", quantity = 13},
            {name = "Dull Raging Essence", quantity = 29},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Bananek", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
		{name = "line 2", stat = "+11 - 14 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Scholar Hat"] = {
    name = "Silverleaf Scholar Hat",
    image = "Silverleaf Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 31,
            resources = {
            {name = "Silverleaf Fabric", quantity = 15},
            {name = "Dull Ghostly Essence", quantity = 42},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+13- 16 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Scholar Hat"] = {
    name = "Fern Scholar Hat",
    image = "Fern Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 37,
            resources = {
            {name = "Fern Fabric", quantity = 18},
            {name = "Historic Essence", quantity = 26},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soulpling", chance = "0.01%"},
		{name = "Ferni", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
   		{name = "line 2", stat = "+15 - 18 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Scholar Hat"] = {
    name = "Coral Scholar Hat",
    image = "Coral Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 43,
            resources = {
            {name = "Corals Fabric", quantity = 21},
            {name = "Eternal Essence", quantity = 39},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Soultree", chance = "0.01%"},
		{name = "Giga", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
   		{name = "line 2", stat = "+17 - 21 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Scholar Hat"] = {
    name = "Cactus Scholar Hat",
    image = "Cactus Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 49,
            resources = {
            {name = "Cactus Fabric", quantity = 24},
            {name = "Metal Essence", quantity = 52},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
   		{name = "line 2", stat = "+19 - 23 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Scholar Hat"] = {
    name = "Ice Scholar Hat",
    image = "Ice Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 55,
            resources = {
            {name = "Ice Fabric", quantity = 28},
            {name = "Eternal Essence", quantity = 78},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
   		{name = "line 2", stat = "+21 - 26 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Scholar Hat"] = {
    name = "Red Scholar Hat",
    image = "Red Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 61,
            resources = {
            {name = "Red Fabric", quantity = 32},
            {name = "Historic Essence", quantity = 104},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
   		{name = "line 2", stat = "+23 - 28 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Scholar Hat"] = {
    name = "Eon Scholar Hat",
    image = "Eon Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 67,
            resources = {
            {name = "Eon Fabric", quantity = 35},
            {name = "Dream Fragment", quantity = 15},
            {name = "Radiant Life Essence", quantity = 85},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkak", chance = "<0.00%"},
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
   		{name = "line 2", stat = "+25 - 30 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Scholar Hat"] = {
    name = "Arcane Scholar Hat",
    image = "Arcane Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 73,
            resources = {
            {name = "Arcane Fabric", quantity = 38},
            {name = "Ocean Shard", quantity = 20},
            {name = "Radiant Historic Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Kiwi", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
   		{name = "line 2", stat = "+27 - 33 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Scholar Hat"] = {
    name = "Historic Scholar Hat",
    image = "Historic Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 79,
            resources = {
            {name = "Historic Fabric", quantity = 42},
            {name = "Black Diamond Fragment", quantity = 25},
            {name = "Radiant Raging Essence", quantity = 195},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+16.5 - 18 Defense"},
   		{name = "line 2", stat = "+29 - 35 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Scholar Hat"] = {
    name = "Eternal Scholar Hat",
    image = "Eternal Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 85,
            resources = {
            {name = "Eternal Fabric", quantity = 46},
            {name = "Moon Shard", quantity = 30},
            {name = "Radiant Ghostly Essence", quantity = 293},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Blaze", chance = "<0.00%"},
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+19.5 - 21 Defense"},
   		{name = "line 2", stat = "+31 - 38 Shield"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Scholar Hat"] = {
    name = "Raging Scholar Hat",
    image = "Raging Scholar Hat.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Scholar Hat",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Scholar Hat",
            craftingType = "Armor Crafting",
            craftingLevel = 91,
            resources = {
            {name = "Raging Fabric", quantity = 50},
            {name = "Blood Pebble", quantity = 40},
            {name = "Radiant Raging Essence", quantity = 423},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {

	},
    stats = {
    	{name = "line 1", stat = "+22.5 - 28.5 Defense"},
   		{name = "line 2", stat = "+33 - 40 Shield"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF SCHOLAR HATS
	-------------------------------------------------------------------------------------------------------------------------------------------------
	
	--ALL HOODS
	-------------------------------------------------------------------------------------------------------------------------------------------------
data["Green Priest Hood"] = {
    name = "Green Priest Hood",
    image = "Green Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 2,
            resources = {
            {name = "Refined Fiber", quantity = 5},
            {name = "Dull Life Essence", quantity = 5},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "900 SC", sellPrice = ""}
	},
	drops = {
		{name = "Slime", chance = "0.04%"},
		{name = "Bubble Spirit", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+0 - 1.5 Defense"},
   		{name = "line 2", stat = "+2 - 3 Max MP"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Priest Hood"] = {
    name = "Cotton Priest Hood",
    image = "Cotton Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 7,
            resources = {
            {name = "Cotton Fabric", quantity = 7},
            {name = "Dull Nurturing Essence", quantity = 8},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Glowsnail", chance = "0.06%"},
		{name = "Squishling", chance = "0.39%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+3 - 4 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Priest Hood"] = {
    name = "Coconut Priest Hood",
    image = "Coconut Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 13,
            resources = {
            {name = "Coconut Fabric", quantity = 9},
            {name = "Dull Historic Essence", quantity = 12},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Squishling", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
		{name = "line 2", stat = "+5 - 6 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Priest Hood"] = {
    name = "Yellow Priest Hood",
    image = "Yellow Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 19,
            resources = {
            {name = "Yellow Fabric", quantity = 11},
            {name = "Dull Historic Essence", quantity = 18},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Licki", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+7 - 9 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Priest Hood"] = {
    name = "Glowing Priest Hood",
    image = "Glowing Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 25,
            resources = {
            {name = "Glowing Fabric", quantity = 13},
            {name = "Dull Eternal Essence", quantity = 29},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Citriuslime", chance = "0.02%"},
		{name = "Monoghoul", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
		{name = "line 2", stat = "+9 - 11 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Priest Hood"] = {
    name = "Silverleaf Priest Hood",
    image = "Silverleaf Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 31,
            resources = {
            {name = "Silverleaf Fabric", quantity = 15},
            {name = "Dull Ghostly Essence", quantity = 42},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+10 - 12 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Priest Hood"] = {
    name = "Fern Priest Hood",
    image = "Fern Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 37,
            resources = {
            {name = "Fern Fabric", quantity = 18},
            {name = "Historic Essence", quantity = 26},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soulpling", chance = "0.01%"},
		{name = "Ferni", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
   		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+12 - 15 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Priest Hood"] = {
    name = "Coral Priest Hood",
    image = "Coral Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 43,
            resources = {
            {name = "Corals Fabric", quantity = 21},
            {name = "Metal Essence", quantity = 39},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soultree", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
   		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+14 - 17 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Priest Hood"] = {
    name = "Cactus Priest Hood",
    image = "Cactus Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 49,
            resources = {
            {name = "Cactus Fabric", quantity = 24},
            {name = "Nurturing Essence", quantity = 52},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
   		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+15 - 18 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Priest Hood"] = {
    name = "Ice Priest Hood",
    image = "Ice Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 55,
            resources = {
            {name = "Ice Fabric", quantity = 28},
            {name = "Eternal Essence", quantity = 78},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
   		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+17 - 21 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Priest Hood"] = {
    name = "Red Priest Hood",
    image = "Red Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 61,
            resources = {
            {name = "Red Fabric", quantity = 32},
            {name = "Life Essence", quantity = 104},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
   		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+19 - 23 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Priest Hood"] = {
    name = "Eon Priest Hood",
    image = "Eon Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 67,
            resources = {
            {name = "Eon Fabric", quantity = 35},
            {name = "Dream Fragment", quantity = 15},
            {name = "Radiant Nurturing Essence", quantity = 85},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkak", chance = "<0.00%"},
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
   		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+20 - 24 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Priest Hood"] = {
    name = "Arcane Priest Hood",
    image = "Arcane Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 73,
            resources = {
            {name = "Arcane Fabric", quantity = 38},
            {name = "Ocean Shard", quantity = 20},
            {name = "Radiant Metal Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "<0.00%"},
		{name = "Kiwi", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
	 	{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+22 - 27 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Priest Hood"] = {
    name = "Historic Priest Hood",
    image = "Historic Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 79,
            resources = {
            {name = "Historic Fabric", quantity = 42},
            {name = "Black Diamond Fragment", quantity = 25},
            {name = "Radiant Life Essence", quantity = 195},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Soulfish", chance = "<0.00%"},
		{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 16.5 Defense"},
   		{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+24 - 29 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Priest Hood"] = {
    name = "Eternal Priest Hood",
    image = "Eternal Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 85,
            resources = {
            {name = "Eternal Fabric", quantity = 46},
            {name = "Moon Shard", quantity = 30},
            {name = "Radiant Historic Essence", quantity = 293},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
   		{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+25 - 30 Max MP"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Priest Hood"] = {
    name = "Raging Priest Hood",
    image = "Raging Priest Hood.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Priest Hood",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Priest Hood",
            craftingType = "Armor Crafting",
            craftingLevel = 91,
            resources = {
            {name = "Raging Fabric", quantity = 50},
            {name = "Blood Pebble", quantity = 40},
            {name = "Radiant Ghostly Essence", quantity = 423},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {

	},
    stats = {
    	{name = "line 1", stat = "+21 - 27 Defense"},
   		{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
    	{name = "line 3", stat = "+27 - 33 Max MP"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF HOODS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL CAPS
-------------------------------------------------------------------------------------------------------------------------------------------------

data["Green Hunter Cap"] = {
    name = "Green Hunter Cap",
    image = "Green Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 2,
            resources = {
            {name = "Refined Fiber", quantity = 5},
            {name = "Dull Life Essence", quantity = 5},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "900 SC", sellPrice = ""}
	},
	drops = {
		{name = "Bubble Spirit", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+0 - 1.5 Defense"},
   		{name = "line 2", stat = "+2 - 4% Damage Balance"},
   		{name = "line 3", stat = "+2 - 3% 1 HP on hit chance"},

    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Hunter Cap"] = {
    name = "Cotton Hunter Cap",
    image = "Cotton Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 7,
            resources = {
            {name = "Cotton Fabric", quantity = 7},
            {name = "Dull Historic Essence", quantity = 8},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Flows", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+2 - 4% Damage Balance"},
   		{name = "line 3", stat = "+3 - 4% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Hunter Cap"] = {
    name = "Coconut Hunter Cap",
    image = "Coconut Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 13,
            resources = {
            {name = "Coconut Fabric", quantity = 9},
            {name = "Dull Life Essence", quantity = 12},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Cloudsheep", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+2 - 4% Damage Balance"},
   		{name = "line 3", stat = "+4 - 5% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Hunter Cap"] = {
    name = "Yellow Hunter Cap",
    image = "Yellow Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 19,
            resources = {
            {name = "Yellow Fabric", quantity = 11},
            {name = "Dull Raging Essence", quantity = 18},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Snapper", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+2 - 4% Damage Balance"},
   		{name = "line 3", stat = "+6 - 8% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Hunter Cap"] = {
    name = "Glowing Hunter Cap",
    image = "Glowing Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 25,
            resources = {
            {name = "Glowing Fabric", quantity = 13},
            {name = "Dull Raging Essence", quantity = 29},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Bananek", chance = "0.02%"},
		{name = "Sadling", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+2 - 4% Damage Balance"},
   		{name = "line 3", stat = "+7 - 9% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Hunter Cap"] = {
    name = "Silverleaf Hunter Cap",
    image = "Silverleaf Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 31,
            resources = {
            {name = "Silverleaf Fabric", quantity = 15},
            {name = "Dull Raging Essence", quantity = 42},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Dark Pumpkin", chance = "0.02%"},		
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
    	{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+8 - 10% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Hunter Cap"] = {
    name = "Fern Hunter Cap",
    image = "Fern Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 37,
            resources = {
            {name = "Fern Fabric", quantity = 18},
            {name = "Nurturing Essence", quantity = 26},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Rainbow Cloudsheep", chance = "0.01%"},
		{name = "Humblebee", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
    	{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+9 - 11% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Hunter Cap"] = {
    name = "Coral Hunter Cap",
    image = "Coral Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 43,
            resources = {
            {name = "Corals Fabric", quantity = 21},
            {name = "Metal Essence", quantity = 39},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soultree", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
    	{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+11 - 14% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Hunter Cap"] = {
    name = "Cactus Hunter Cap",
    image = "Cactus Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 49,
            resources = {
            {name = "Cactus Fabric", quantity = 24},
            {name = "Historic Essence", quantity = 52},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
    	{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+12 - 15% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Hunter Cap"] = {
    name = "Ice Hunter Cap",
    image = "Ice Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 55,
            resources = {
            {name = "Ice Fabric", quantity = 28},
            {name = "Raging Essence", quantity = 78},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
    	{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+13 - 16% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Hunter Cap"] = {
    name = "Red Hunter Cap",
    image = "Red Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 61,
            resources = {
            {name = "Red Fabric", quantity = 32},
            {name = "Life Essence", quantity = 104},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
    	{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+6 - 8% Damage Balance"},
   		{name = "line 5", stat = "+15 - 18% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Hunter Cap"] = {
    name = "Eon Hunter Cap",
    image = "Eon Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 67,
            resources = {
            {name = "Eon Fabric", quantity = 35},
            {name = "Dream Fragment", quantity = 15},
            {name = "Radiant Eternal Essence", quantity = 85},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rocky", chance = "<0.00%"},
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
    	{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+6 - 8% Damage Balance"},
   		{name = "line 5", stat = "+16 - 20% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Hunter Cap"] = {
    name = "Arcane Hunter Cap",
    image = "Arcane Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 73,
            resources = {
            {name = "Arcane Fabric", quantity = 38},
            {name = "Ocean Shard", quantity = 20},
            {name = "Radiant Ghostly Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "<0.00%"},
		{name = "Kiwi", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
    	{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+6 - 8% Damage Balance"},
   		{name = "line 5", stat = "+17 - 21% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Hunter Cap"] = {
    name = "Historic Hunter Cap",
    image = "Historic Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 79,
            resources = {
            {name = "Historic Fabric", quantity = 42},
            {name = "Black Diamond Fragment", quantity = 25},
            {name = "Radiant Eternal Essence", quantity = 195},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+16.5 - 18 Defense"},
    	{name = "line 2", stat = "+12 - 18% Speed"},
    	{name = "line 3", stat = "+5 - 7% Jump"},
   		{name = "line 4", stat = "+6 - 8% Damage Balance"},
   		{name = "line 5", stat = "+18 - 22% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Hunter Cap"] = {
    name = "Eternal Hunter Cap",
    image = "Eternal Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 85,
            resources = {
            {name = "Eternal Fabric", quantity = 46},
            {name = "Moon Shard", quantity = 30},
            {name = "Radiant Historic Essence", quantity = 293},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blaze", chance = "<0.00%"},
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+19.5 - 21 Defense"},
    	{name = "line 2", stat = "+12 - 18% Speed"},
    	{name = "line 3", stat = "+5 - 7% Jump"},
   		{name = "line 4", stat = "+6 - 8% Damage Balance"},
   		{name = "line 5", stat = "+20 - 24% 1 HP on hit chance"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Hunter Cap"] = {
    name = "Raging Hunter Cap",
    image = "Raging Hunter Cap.png",
    caption = "You can wear this.",
    equipmentType = "Hat",
    armorType = "Hunter Cap",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Hunter Cap",
            craftingType = "Armor Crafting",
            craftingLevel = 91,
            resources = {
            {name = "Raging Fabric", quantity = 50},
            {name = "Blood Pebble", quantity = 40},
            {name = "Radiant Nurturing Essence", quantity = 423},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {

	},
    stats = {
    	{name = "line 1", stat = "+22.5 - 28.5 Defense"},
    	{name = "line 2", stat = "+12 - 18% Speed"},
    	{name = "line 3", stat = "+5 - 7% Jump"},
   		{name = "line 4", stat = "+8 - 10% Damage Balance"},
   		{name = "line 5", stat = "+21 - 26% 1 HP on hit chance"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF CAPS
-------------------------------------------------------------------------------------------------------------------------------------------------
	--END OF HATS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL SHOES
	--ALL ARMORED BOOTS
data["Stone Armored Boots"] = {
    name = "Stone Armored Boots",
    image = "Stone Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 3,
            resources = {
            {name = "Stone Slab", quantity = 5},
            {name = "Dull Life Essence", quantity = 4},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "800 SC", sellPrice = ""}
	},
	drops = {
		{name = "Bubble Spirit", chance = "0.05%"},
		{name = "Slip", chance = "0.21%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+2 - 3 Max HP"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Copper Armored Boots"] = {
    name = "Copper Armored Boots",
    image = "Copper Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 8,
            resources = {
            {name = "Copper Plate", quantity = 7},
            {name = "Dull Raging Essence", quantity = 7},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Flows", chance = "0.05%"},
		{name = "Pin Pin", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+5 - 6 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Quartz Armored Boots"] = {
    name = "Quartz Armored Boots",
    image = "Quartz Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 14,
            resources = {
            {name = "Refined Quartz Plate", quantity = 9},
            {name = "Dull Historic Essence", quantity = 10},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Cloudsheep", chance = "0.04%"},
		{name = "Squishling", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
		{name = "line 2", stat = "+8 - 10 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Iron Armored Boots"] = {
    name = "Iron Armored Boots",
    image = "Iron Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 20,
            resources = {
            {name = "Iron Plate", quantity = 11},
            {name = "Dull Eternal Essence", quantity = 15},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Snapper", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
   		{name = "line 2", stat = "+10 - 12 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Petrified Armored Boots"] = {
    name = "Petrified Armored Boots",
    image = "Petrified Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 30,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 26,
            resources = {
            {name = "Petrified Plate", quantity = 13},
            {name = "Dull Life Essence", quantity = 25},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Citriuslime", chance = "0.02%"},
		{name = "Monoghoul", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 7.5 Defense"},
   		{name = "line 2", stat = "+12 - 15 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Stinky Armored Boots"] = {
    name = "Stinky Armored Boots",
    image = "Stinky Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 32,
            resources = {
            {name = "Stinky Plate", quantity = 15},
            {name = "Dull Raging Essence", quantity = 36},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Stinky Sheep", chance = "0.02%"},
		{name = "Spot Slime", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 7.5 Defense"},
   		{name = "line 2", stat = "+15 - 18 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eerie Armored Boots"] = {
    name = "Eerie Armored Boots",
    image = "Eerie Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 38,
            resources = {
            {name = "Malachite Plate", quantity = 18},
            {name = "Historic Essence", quantity = 22},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Rainbow Cloudsheep", chance = "0.01%"},
		{name = "Humblebee", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
   		{name = "line 2", stat = "+18 - 22 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Deep Armored Boots"] = {
    name = "Deep Armored Boots",
    image = "Deep Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 44,
            resources = {
            {name = "Cobalt Plate", quantity = 21},
            {name = "Raging Essence", quantity = 33},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soultree", chance = "0.01%"},
		{name = "Sweel", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
   		{name = "line 2", stat = "+20 - 24 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Repressive Armored Boots"] = {
    name = "Repressive Armored Boots",
    image = "Repressive Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 50,
            resources = {
            {name = "Bismuth Plate", quantity = 24},
            {name = "Ghostly Essence", quantity = 44},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
   		{name = "line 2", stat = "+22 - 27 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sharp Armored Boots"] = {
    name = "Sharp Armored Boots",
    image = "Sharp Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 57,
            resources = {
            {name = "Titanium Plate", quantity = 28},
            {name = "Raging Essence", quantity = 66},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
   		{name = "line 2", stat = "+25 - 30 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Armored Boots"] = {
    name = "Radiant Armored Boots",
    image = "Radiant Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 66,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 62,
            resources = {
            {name = "Gold Plate", quantity = 32},
            {name = "Raging Essence", quantity = 88},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+13.5 - 15 Defense"},
   		{name = "line 2", stat = "+28 - 34 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Mystical Armored Boots"] = {
    name = "Mystical Armored Boots",
    image = "Mystical Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 68,
            resources = {
            {name = "Mithril Plate", quantity = 35},
            {name = "Dream Fragment", quantity = 15},
            {name = "Radiant Life Essence", quantity = 72},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rocky", chance = "<0.00%"},
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 18 Defense"},
   		{name = "line 2", stat = "+30 - 36 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Armored Boots"] = {
    name = "Arcane Armored Boots",
    image = "Arcane Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 74,
            resources = {
            {name = "Arcane Plate", quantity = 38},
            {name = "Ocean Shard", quantity = 20},
            {name = "Radiant Life Essence", quantity = 110},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Kiwi", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
   		{name = "line 2", stat = "+32 - 39 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Star Armored Boots"] = {
    name = "Star Armored Boots",
    image = "Star Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 84,
    tier = "Star",
    crafting = {
        {
            name = "Star Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 80,
            resources = {
            {name = "Star Plate", quantity = 42},
            {name = "Black Diamond Fragment", quantity = 25},
            {name = "Radiant Life Essence", quantity = 165},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Haowl", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+19.5 - 21 Defense"},
   		{name = "line 2", stat = "+35 - 42 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Armored Boots"] = {
    name = "Eternal Armored Boots",
    image = "Eternal Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 86,
            resources = {
            {name = "Eternal Plate", quantity = 46},
            {name = "Moon Shard", quantity = 30},
            {name = "Radiant Eternal Essence", quantity = 248},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+21.5 - 22.5 Defense"},
   		{name = "line 2", stat = "+38 - 46 Max HP"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Obsidium Armored Boots"] = {
    name = "Obsidium Armored Boots",
    image = "Obsidium Armored Boots.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Armored Boots",
    level = 96,
    tier = "Obsidium",
    crafting = {
        {
            name = "Obsidium Armored Boots",
            craftingType = "Armor Crafting",
            craftingLevel = 92,
            resources = {
            {name = "Obsidium Plate", quantity = 50},
            {name = "Blood Pebble", quantity = 40},
            {name = "Radiant Nurturing Essence", quantity = 358},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+22 - 24 Defense"},
   		{name = "line 2", stat = "+40 - 48 Max HP"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF BOOTS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL SCHOLAR SHOES
data["Green Scholar Shoes"] = {
    name = "Green Scholar Shoes",
    image = "Green Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 3,
            resources = {
            {name = "Refined Fiber", quantity = 5},
            {name = "Dull Life Essence", quantity = 4},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "800 SC", sellPrice = ""}
	},
	drops = {
		{name = "Jel", chance = "0.13%"},
		{name = "Pin Pin", chance = "0.2%"},
	},
    stats = {
    	{name = "line 1", stat = "+0 - 1.5 Defense"},
   		{name = "line 2", stat = "+2 - 3 Shield"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Scholar Shoes"] = {
    name = "Cotton Scholar Shoes",
    image = "Cotton Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 8,
            resources = {
            {name = "Cotton Fabric", quantity = 7},
            {name = "Dull Raging Essence", quantity = 7},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Slip", chance = "0.05%"},
		{name = "Hopper", chance = "0.06%"},
	},
    stats = {
    	{name = "line 1", stat = "+0 - 1.5 Defense"},
   		{name = "line 2", stat = "+4 - 5 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Scholar Shoes"] = {
    name = "Coconut Scholar Shoes",
    image = "Coconut Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 14,
            resources = {
            {name = "Coconut Fabric", quantity = 9},
            {name = "Dull Raging Essence", quantity = 10},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Cloudsheep", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
		{name = "line 2", stat = "+6 - 8 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Scholar Shoes"] = {
    name = "Yellow Scholar Shoes",
    image = "Yellow Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 20,
            resources = {
            {name = "Yellow Fabric", quantity = 11},
            {name = "Dull Historic Essence", quantity = 15},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Crusher", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+8 - 10 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Scholar Shoes"] = {
    name = "Glowing Scholar Shoes",
    image = "Glowing Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 26,
            resources = {
            {name = "Glowing Fabric", quantity = 13},
            {name = "Dull Eternal Essence", quantity = 25},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Citriuslime", chance = "0.02%"},
		{name = "Monoghoul", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+9 - 11 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Scholar Shoes"] = {
    name = "Silverleaf Scholar Shoes",
    image = "Silverleaf Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 32,
            resources = {
            {name = "Silverleaf Fabric", quantity = 15},
            {name = "Dull Historic Essence", quantity = 36},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Dark Pumpkin", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+11 - 14 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Scholar Shoes"] = {
    name = "Fern Scholar Shoes",
    image = "Fern Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 38,
            resources = {
            {name = "Fern Fabric", quantity = 18},
            {name = "Historic Essence", quantity = 22},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soulpling", chance = "0.01%"},
		{name = "Ferni", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+12 - 15 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Scholar Shoes"] = {
    name = "Coral Scholar Shoes",
    image = "Coral Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 44,
            resources = {
            {name = "Corals Fabric", quantity = 21},
            {name = "Life Essence", quantity = 33},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Giga", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
   		{name = "line 2", stat = "+14 - 17 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Scholar Shoes"] = {
    name = "Cactus Scholar Shoes",
    image = "Cactus Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 50,
            resources = {
            {name = "Cactus Fabric", quantity = 24},
            {name = "Life Essence", quantity = 44},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
   		{name = "line 2", stat = "+16 - 20 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Scholar Shoes"] = {
    name = "Ice Scholar Shoes",
    image = "Ice Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 56,
            resources = {
            {name = "Ice Fabric", quantity = 28},
            {name = "Ghostly Essence", quantity = 66},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
   		{name = "line 2", stat = "+18 - 22 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Scholar Shoes"] = {
    name = "Red Scholar Shoes",
    image = "Red Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 62,
            resources = {
            {name = "Red Fabric", quantity = 32},
            {name = "Metal Essence", quantity = 88},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
   		{name = "line 2", stat = "+19 - 23 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Scholar Shoes"] = {
    name = "Eon Scholar Shoes",
    image = "Eon Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 68,
            resources = {
            {name = "Eon Fabric", quantity = 35},
            {name = "Dream Fragment", quantity = 15},
            {name = "Radiant Ghostly Essence", quantity = 72},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkak", chance = "<0.00%"},
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
   		{name = "line 2", stat = "+21 - 26 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Scholar Shoes"] = {
    name = "Arcane Scholar Shoes",
    image = "Arcane Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 74,
            resources = {
            {name = "Arcane Fabric", quantity = 38},
            {name = "Ocean Shard", quantity = 20},
            {name = "Radiant Raging Essence", quantity = 110},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Tallshroom", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
   		{name = "line 2", stat = "+22 - 27 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Scholar Shoes"] = {
    name = "Historic Scholar Shoes",
    image = "Historic Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 80,
            resources = {
            {name = "Historic Fabric", quantity = 42},
            {name = "Black Diamond Fragment", quantity = 25},
            {name = "Radiant Raging Essence", quantity = 165},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Soulfish", chance = "<0.00%"},
		{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 16.5 Defense"},
   		{name = "line 2", stat = "+24 - 29 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Scholar Shoes"] = {
    name = "Eternal Scholar Shoes",
    image = "Eternal Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 86,
            resources = {
            {name = "Eternal Fabric", quantity = 46},
            {name = "Moon Shard", quantity = 30},
            {name = "Radiant Historic Essence", quantity = 248},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blaze", chance = "<0.00%"},
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
   		{name = "line 2", stat = "+26 - 32 Shield"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Scholar Shoes"] = {
    name = "Raging Scholar Shoes",
    image = "Raging Scholar Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Scholar Shoes",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Scholar Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 92,
            resources = {
            {name = "Raging Fabric", quantity = 50},
            {name = "Blood Pebble", quantity = 40},
            {name = "Radiant Life Essence", quantity = 358},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+21 - 27 Defense"},
   		{name = "line 2", stat = "+28 - 34 Shield"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF SCHOLAR SHOES
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL PRIEST SHOES
data["Green Priest Shoes"] = {
    name = "Green Priest Shoes",
    image = "Green Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 3,
            resources = {
            {name = "Refined Fiber", quantity = 5},
            {name = "Dull Life Essence", quantity = 4},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "800 SC", sellPrice = ""}
	},
	drops = {
		{name = "Slime", chance = "0.04%"},
		{name = "Bubble Spirit", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+0 - 1.5 Defense"},
   		{name = "line 2", stat = "+2 - 3 Max MP"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Priest Shoes"] = {
    name = "Cotton Priest Shoes",
    image = "Cotton Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 8,
            resources = {
            {name = "Cotton Fabric", quantity = 7},
            {name = "Dull Eternal Essence", quantity = 7},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Flows", chance = "0.05%"},
		{name = "Pin Pin", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+0 - 1.5 Defense"},
   		{name = "line 2", stat = "+3 - 4 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Priest Shoes"] = {
    name = "Coconut Priest Shoes",
    image = "Coconut Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 14,
            resources = {
            {name = "Coconut Fabric", quantity = 9},
            {name = "Dull Life Essence", quantity = 10},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Black Cloudsheep", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
		{name = "line 2", stat = "+4 - 5 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Priest Shoes"] = {
    name = "Yellow Priest Shoes",
    image = "Yellow Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 20,
            resources = {
            {name = "Yellow Fabric", quantity = 11},
            {name = "Dull Nurturing Essence", quantity = 15},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Crusher", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+6 - 8 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Priest Shoes"] = {
    name = "Glowing Priest Shoes",
    image = "Glowing Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 26,
            resources = {
            {name = "Glowing Fabric", quantity = 13},
            {name = "Dull Nurturing Essence", quantity = 25},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Citriuslime", chance = "0.02%"},
		{name = "Monoghoul", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+7 - 9 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Priest Shoes"] = {
    name = "Silverleaf Priest Shoes",
    image = "Silverleaf Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 32,
            resources = {
            {name = "Silverleaf Fabric", quantity = 15},
            {name = "Dull Nurturing Essence", quantity = 36},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Dark Pumpkin", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+8 - 10 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Priest Shoes"] = {
    name = "Fern Priest Shoes",
    image = "Fern Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 38,
            resources = {
            {name = "Fern Fabric", quantity = 18},
            {name = "Historic Essence", quantity = 22},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Licke", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regneration Per Tick"},
   		{name = "line 3", stat = "+10 - 12 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Priest Shoes"] = {
    name = "Coral Priest Shoes",
    image = "Coral Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 44,
            resources = {
            {name = "Corals Fabric", quantity = 21},
            {name = "Nurturing Essence", quantity = 33},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Sweel", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regneration Per Tick"},
   		{name = "line 3", stat = "+11 - 14 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Priest Shoes"] = {
    name = "Cactus Priest Shoes",
    image = "Cactus Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 50,
            resources = {
            {name = "Cactus Fabric", quantity = 24},
            {name = "Life Essence", quantity = 44},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regneration Per Tick"},
   		{name = "line 3", stat = "+13 - 16 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Priest Shoes"] = {
    name = "Ice Priest Shoes",
    image = "Ice Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 56,
            resources = {
            {name = "Ice Fabric", quantity = 28},
            {name = "Metal Essence", quantity = 66},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regneration Per Tick"},
   		{name = "line 3", stat = "+14 - 17 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Priest Shoes"] = {
    name = "Red Priest Shoes",
    image = "Red Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 62,
            resources = {
            {name = "Red Fabric", quantity = 32},
            {name = "Eternal Essence", quantity = 88},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regneration Per Tick"},
   		{name = "line 3", stat = "+16 - 20 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Priest Shoes"] = {
    name = "Eon Priest Shoes",
    image = "Eon Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 68,
            resources = {
            {name = "Eon Fabric", quantity = 35},
            {name = "Dream Fragment", quantity = 15},
            {name = "Radiant Life Essence", quantity = 72},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkak", chance = "<0.00%"},
		{name = "Rocky", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regneration Per Tick"},
   		{name = "line 3", stat = "+17 - 21 Max MP"},
   	},
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Priest Shoes"] = {
    name = "Arcane Priest Shoes",
    image = "Arcane Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 74,
            resources = {
            {name = "Arcane Fabric", quantity = 38},
            {name = "Ocean Shard", quantity = 20},
            {name = "Radiant Raging Essence", quantity = 110},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "<0.00%"},
		{name = "Tallshroom", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regneration Per Tick"},
   		{name = "line 3", stat = "+18 - 22 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Priest Shoes"] = {
    name = "Historic Priest Shoes",
    image = "Historic Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 80,
            resources = {
            {name = "Historic Fabric", quantity = 42},
            {name = "Black Diamond Fragment", quantity = 25},
            {name = "Radiant Nurturing Essence", quantity = 165},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Soulfish", chance = "<0.00%"},
		{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+13.5 - 15 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regneration Per Tick"},
   		{name = "line 3", stat = "+20 - 24 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Priest Shoes"] = {
    name = "Eternal Priest Shoes",
    image = "Eternal Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 86,
            resources = {
            {name = "Eternal Fabric", quantity = 46},
            {name = "Moon Shard", quantity = 30},
            {name = "Radiant Historic Essence", quantity = 248},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Haunted Flame", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+16.5 - 18 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regneration Per Tick"},
   		{name = "line 3", stat = "+21 - 26 Max MP"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Priest Shoes"] = {
    name = "Raging Priest Shoes",
    image = "Raging Priest Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Priest Shoes",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Priest Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 92,
            resources = {
            {name = "Raging Fabric", quantity = 50},
            {name = "Blood Pebble", quantity = 40},
            {name = "Radiant Metal Essence", quantity = 358},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {

	},
    stats = {
    	{name = "line 1", stat = "+19.5 - 25.5 Defense"},
    	{name = "line 2", stat = "+2 - 3 HP Regneration Per Tick"},
   		{name = "line 3", stat = "+22 - 27 Max MP"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
-------------------------------------------------------------------------------------------------------------------------------------------------
	--END OF PRIEST SHOES
	
	--ALL HUNTER SHOES
data["Green Hunter Shoes"] = {
    name = "Green Hunter Shoes",
    image = "Green Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 3,
            resources = {
            {name = "Refined Fiber", quantity = 5},
            {name = "Dull Life Essence", quantity = 4},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "800 SC", sellPrice = ""}
	},
	drops = {
		{name = "Slime", chance = "0.04%"},
		{name = "Bubble Spirit", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+0 - 1.5 Defense"},
   		{name = "line 2", stat = "+2 - 3% 1 HP on hit chance"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Hunter Shoes"] = {
    name = "Cotton Hunter Shoes",
    image = "Cotton Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 8,
            resources = {
            {name = "Cotton Fabric", quantity = 7},
            {name = "Dull Raging Essence", quantity = 7},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Jel", chance = "0.04%"},
		{name = "Flows", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+0 - 1.5 Defense"},
   		{name = "line 2", stat = "+2 - 4% Damage Balance"},
   		{name = "line 3", stat = "+3 - 4% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Hunter Shoes"] = {
    name = "Coconut Hunter Shoes",
    image = "Coconut Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 14,
            resources = {
            {name = "Coconut Fabric", quantity = 9},
            {name = "Dull Life Essence", quantity = 10},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Cloudsheep", chance = "0.04%"},
		{name = "Squishling", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+2 - 4% Damage Balance"},
   		{name = "line 3", stat = "+4 - 5% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Hunter Shoes"] = {
    name = "Yellow Hunter Shoes",
    image = "Yellow Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 20,
            resources = {
            {name = "Yellow Fabric", quantity = 11},
            {name = "Dull Ghostly Essence", quantity = 15},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Crusher", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+2 - 4% Damage Balance"},
   		{name = "line 3", stat = "+5 - 6% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Hunter Shoes"] = {
    name = "Glowing Hunter Shoes",
    image = "Glowing Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 26,
            resources = {
            {name = "Glowing Fabric", quantity = 13},
            {name = "Dull Ghostly Essence", quantity = 25},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Citriuslime", chance = "0.02%"},
		{name = "Monoghoul", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+2 - 4% Damage Balance"},
   		{name = "line 3", stat = "+6 - 8% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Hunter Shoes"] = {
    name = "Silverleaf Hunter Shoes",
    image = "Silverleaf Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 32,
            resources = {
            {name = "Silverleaf Fabric", quantity = 15},
            {name = "Dull Nurturing Essence", quantity = 36},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {

	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+2 - 4% Damage Balance"},
   		{name = "line 3", stat = "+7 - 9% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Hunter Shoes"] = {
    name = "Fern Hunter Shoes",
    image = "Fern Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 38,
            resources = {
            {name = "Fern Fabric", quantity = 18},
            {name = "Historic Essence", quantity = 22},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Rainbow Cloudsheep", chance = "0.01%"},
		{name = "Humblebee", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
   		{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+8 - 10% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Hunter Shoes"] = {
    name = "Coral Hunter Shoes",
    image = "Coral Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 44,
            resources = {
            {name = "Corals Fabric", quantity = 21},
            {name = "Metal Essence", quantity = 33},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Giga", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
   		{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+9 - 11% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Hunter Shoes"] = {
    name = "Cactus Hunter Shoes",
    image = "Cactus Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 50,
            resources = {
            {name = "Cactus Fabric", quantity = 24},
            {name = "Eternal Essence", quantity = 44},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
   		{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+10 - 12% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Hunter Shoes"] = {
    name = "Ice Hunter Shoes",
    image = "Ice Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 56,
            resources = {
            {name = "Ice Fabric", quantity = 28},
            {name = "Ghostly Essence", quantity = 66},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
   		{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+11 - 14% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Hunter Shoes"] = {
    name = "Red Hunter Shoes",
    image = "Red Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 62,
            resources = {
            {name = "Red Fabric", quantity = 32},
            {name = "Ghostly Essence", quantity = 88},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
   		{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+12 - 15% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Hunter Shoes"] = {
    name = "Eon Hunter Shoes",
    image = "Eon Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 68,
            resources = {
            {name = "Eon Fabric", quantity = 35},
            {name = "Dream Fragment", quantity = 15},
            {name = "Radiant Historic Essence", quantity = 72},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rocky", chance = "<0.00%"},
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
   		{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+13 - 16% 1 HP on hit chance"},
   	},
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Hunter Shoes"] = {
    name = "Arcane Hunter Shoes",
    image = "Arcane Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 74,
            resources = {
            {name = "Arcane Fabric", quantity = 38},
            {name = "Ocean Shard", quantity = 20},
            {name = "Radiant Historic Essence", quantity = 110},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Kiwi", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
   		{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+4 - 6% Damage Balance"},
   		{name = "line 5", stat = "+14 - 17% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Hunter Shoes"] = {
    name = "Historic Hunter Shoes",
    image = "Historic Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 80,
            resources = {
            {name = "Historic Fabric", quantity = 42},
            {name = "Black Diamond Fragment", quantity = 25},
            {name = "Radiant Life Essence", quantity = 165},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Soulfish", chance = "<0.00%"},
		{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 16.5 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
   		{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+6 - 8% Damage Balance"},
   		{name = "line 5", stat = "+15 - 18% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Hunter Shoes"] = {
    name = "Eternal Hunter Shoes",
    image = "Eternal Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 86,
            resources = {
            {name = "Eternal Fabric", quantity = 46},
            {name = "Moon Shard", quantity = 30},
            {name = "Radiant Raging Essence", quantity = 248},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
   		{name = "line 3", stat = "+2 - 5% Jump"},
   		{name = "line 4", stat = "+6 - 8% Damage Balance"},
   		{name = "line 5", stat = "+16 - 20% 1 HP on hit chance"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Hunter Shoes"] = {
    name = "Raging Hunter Shoes",
    image = "Raging Hunter Shoes.png",
    caption = "You can wear this.",
    equipmentType = "Shoes",
    armorType = "Hunter Shoes",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Hunter Shoes",
            craftingType = "Armor Crafting",
            craftingLevel = 92,
            resources = {
            {name = "Raging Fabric", quantity = 50},
            {name = "Blood Pebble", quantity = 40},
            {name = "Radiant Raging Essence", quantity = 358},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {

	},
    stats = {
    	{name = "line 1", stat = "+21 - 25.5 Defense"},
    	{name = "line 2", stat = "+12 - 18% Speed"},
   		{name = "line 3", stat = "+5 - 7% Jump"},
   		{name = "line 4", stat = "+6 - 8% Damage Balance"},
   		{name = "line 5", stat = "+18 - 22% 1 HP on hit chance"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

	--END OF HUNTER SHOES
-------------------------------------------------------------------------------------------------------------------------------------------------
	--END OF SHOES
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL BOTTOMWEAR
	--ALL LEG PLATES
data["Stone Leg Plate"] = {
    name = "Stone Leg Plate",
    image = "Stone Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 4,
            resources = {
            {name = "Stone Slab", quantity = 8},
            {name = "Dull Life Essence", quantity = 6},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "900 SC", sellPrice = ""}
	},
	drops = {
		{name = "Jel", chance = "0.13%"},
		{name = "Pin Pin", chance = "0.2%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+4 - 5 Max HP"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Copper Leg Plate"] = {
    name = "Copper Leg Plate",
    image = "Copper Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 12,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 9,
            resources = {
            {name = "Copper Plate", quantity = 10},
            {name = "Dull Eternal Essence", quantity = 10},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Jel", chance = "0.04%"},
		{name = "Flows", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
   		{name = "line 2", stat = "+8 - 10 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Quartz Leg Plate"] = {
    name = "Quartz Leg Plate",
    image = "Quartz Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 15,
            resources = {
            {name = "Refined Quartz Plate", quantity = 12},
            {name = "Dull Ghostly Essence", quantity = 14},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Squishling", chance = "0.05%"},
		{name = "Troppo", chance = "0.63%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
		{name = "line 2", stat = "+11 - 14 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Iron Leg Plate"] = {
    name = "Iron Leg Plate",
    image = "Iron Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 21,
            resources = {
            {name = "Iron Plate", quantity = 15},
            {name = "Dull Nurturing Essence", quantity = 22},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Troppo", chance = "0.05%"},
		{name = "Licki", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 7.5 Defense"},
   		{name = "line 2", stat = "+15 - 18 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Petrified Leg Plate"] = {
    name = "Petrified Leg Plate",
    image = "Petrified Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 30,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 27,
            resources = {
            {name = "Petrified Plate", quantity = 18},
            {name = "Dull Metal Essence", quantity = 36},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Citruslime", chance = "0.02%"},
		{name = "Spot Slime", chance = "0.18%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
   		{name = "line 2", stat = "+19 - 23 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Stinky Leg Plate"] = {
    name = "Stinky Leg Plate",
    image = "Stinky Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 33,
            resources = {
            {name = "Stinky Plate", quantity = 21},
            {name = "Dull Life Essence", quantity = 52},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Stinky Sheep", chance = "0.02%"},
		{name = "Spot Slime", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
   		{name = "line 2", stat = "+22 - 27 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eerie Leg Plate"] = {
    name = "Eerie Leg Plate",
    image = "Eerie Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 39,
            resources = {
            {name = "Malachite Plate", quantity = 26},
            {name = "Raging Essence", quantity = 32},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Rainbow Cloudsheep", chance = "0.01%"},
		{name = "Humblebee", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
   		{name = "line 2", stat = "+26 - 32 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Deep Leg Plate"] = {
    name = "Deep Leg Plate",
    image = "Deep Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 45,
            resources = {
            {name = "Cobalt Plate", quantity = 32},
            {name = "Nurturing Essence", quantity = 48},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Giga", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
		{name = "line 2", stat = "+30 - 36 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Repressive Leg Plate"] = {
    name = "Repressive Leg Plate",
    image = "Repressive Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 51,
            resources = {
            {name = "Bismuth Plate", quantity = 37},
            {name = "Ghostly Essence", quantity = 64},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+13.5 - 15 Defense"},
   		{name = "line 2", stat = "+34 - 41 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sharp Leg Plate"] = {
    name = "Sharp Leg Plate",
    image = "Sharp Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 58,
            resources = {
            {name = "Titanium Plate", quantity = 43},
            {name = "Nurturing Essence", quantity = 96},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slibbit", chance = "<0.00%"},
		{name = "Dragonfruit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 18 Defense"},
   		{name = "line 2", stat = "+38 - 46 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Leg Plate"] = {
    name = "Radiant Leg Plate",
    image = "Radiant Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 66,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 63,
            resources = {
            {name = "Gold Plate", quantity = 49},
            {name = "Raging Essence", quantity = 128},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
		{name = "line 2", stat = "+41 - 50 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Mystical Leg Plate"] = {
    name = "Mystical Leg Plate",
    image = "Mystical Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 69,
            resources = {
            {name = "Mithril Plate", quantity = 44},
            {name = "Dream Fragment", quantity = 25},
            {name = "Radiant Historic Essence", quantity = 104},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+19.5 - 21 Defense"},
   		{name = "line 2", stat = "+45 - 54 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Leg Plate"] = {
    name = "Arcane Leg Plate",
    image = "Arcane Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Plate", quantity = 49},
            {name = "Ocean Shard", quantity = 35},
            {name = "Radiant Nurturing Essence", quantity = 160},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Tallshroom", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+21 - 22.5 Defense"},
   		{name = "line 2", stat = "+49 - 59 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Star Leg Plate"] = {
    name = "Star Leg Plate",
    image = "Star Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 84,
    tier = "Star",
    crafting = {
        {
            name = "Star Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 81,
            resources = {
            {name = "Star Plate", quantity = 58},
            {name = "Black Diamond Fragment", quantity = 45},
            {name = "Radiant Historic Essence", quantity = 240},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Upsivase", chance = "<0.00%"},
		{name = "Soulfish", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+22.5 - 24 Defense"},
   		{name = "line 2", stat = "+52 - 63 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Leg Plate"] = {
    name = "Eternal Leg Plate",
    image = "Eternal Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 87,
            resources = {
            {name = "Eternal Plate", quantity = 65},
            {name = "Moon Shard", quantity = 55},
            {name = "Radiant Nurturing Essence", quantity = 360},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Pyramid Guardian", chance = "<0.00%"},
		{name = "Ancient Soulfish", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+25.5 - 27 Defense"},
		{name = "line 2", stat = "+56 - 68 Max HP"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Obsidium Leg Plate"] = {
    name = "Obsidium Leg Plate",
    image = "Obsidium Leg Plate.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Leg Plate",
    level = 96,
    tier = "Obsidium",
    crafting = {
        {
            name = "Obsidium Leg Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 93,
            resources = {
				{name= "Obsidium Plate", quantity = 75},
				{name= "Blood Pebble", quantity = 65},
				{name= "Radiant Nurturing Essence", quantity = 520},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+30 - 31.5 Defense"},
		{name = "line 2", stat = "+60 - 72 Max HP"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF LEG PLATES
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL SCHOLAR PANTS
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Green Scholar Pants"] = {
    name = "Green Scholar Pants",
    image = "Green Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 4,
            resources = {
            {name = "Refined Fiber", quantity = 8},
            {name = "Dull Life Essence", quantity = 6},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "900 SC", sellPrice = ""}
	},
	drops = {
		{name = "Bubble Spirit", chance = "0.05%"},
		{name = "Jel", chance = "0.13%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
		{name = "line 2", stat = "+4 - 5 Shield"};
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Scholar Pants"] = {
    name = "Cotton Scholar Pants",
    image = "Cotton Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 9,
            resources = {
            {name = "Cotton Fabric", quantity = 10},
            {name = "Dull Nurturing Essence", quantity = 10},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Glowsnail", chance = "0.06%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
		{name = "line 2", stat = "+6 - 8 Shield"};
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Scholar Pants"] = {
    name = "Coconut Scholar Pants",
    image = "Coconut Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 15,
            resources = {
            {name = "Coconut Fabric", quantity = 12},
            {name = "Dull Nurturing Essence", quantity = 14},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Black Cloudsheep", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
		{name = "line 2", stat = "+9 - 11 Shield"};
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Scholar Pants"] = {
    name = "Yellow Scholar Pants",
    image = "Yellow Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 21,
            resources = {
            {name = "Yellow Fabric", quantity = 15},
            {name = "Dull Nurturing Essence", quantity = 22},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Troppo", chance = "0.05%"},
		{name = "Licki", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
		{name = "line 2", stat = "+11 - 14 Shield"};
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Scholar Pants"] = {
    name = "Glowing Scholar Pants",
    image = "Glowing Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 27,
            resources = {
            {name = "Glowing Fabric", quantity = 18},
            {name = "Dull Eternal Essence", quantity = 36},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Citruslime", chance = "0.02%"},
		{name = "Monoghoul", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
		{name = "line 2", stat = "+14 - 17 Shield"};
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Scholar Pants"] = {
    name = "Silverleaf Scholar Pants",
    image = "Silverleaf Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 33,
            resources = {
            {name = "Silverleaf Fabric", quantity = 21},
            {name = "Dull Nurturing Essence", quantity = 52},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
			{name = "Spot Slime", chance = "0.03%"},	
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
		{name = "line 2", stat = "+16 - 20 Shield"};
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Scholar Pants"] = {
    name = "Fern Scholar Pants",
    image = "Fern Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 39,
            resources = {
            {name = "Fern Fabric", quantity = 26},
            {name = "Raging Essence", quantity = 32},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Rainbow Cloudsheep", chance = "0.01%"},
		{name = "Humblebee", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
		{name = "line 2", stat = "+19 - 23 Shield"};
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Scholar Pants"] = {
    name = "Coral Scholar Pants",
    image = "Coral Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 45,
            resources = {
            {name = "Corals Fabric", quantity = 32},
            {name = "Historic Essence", quantity = 48},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Sweel", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
		{name = "line 2", stat = "+21 - 26 Shield"};
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Scholar Pants"] = {
    name = "Cactus Scholar Pants",
    image = "Cactus Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 51,
            resources = {
            {name = "Cactus Fabric", quantity = 37},
            {name = "Historic Essence", quantity = 64},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
		{name = "line 2", stat = "+24 - 29 Shield"};
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Scholar Pants"] = {
    name = "Ice Scholar Pants",
    image = "Ice Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 57,
            resources = {
            {name = "Ice Fabric", quantity = 43},
            {name = "Historic Essence", quantity = 96},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
		{name = "line 2", stat = "+26 - 32 Shield"};
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Scholar Pants"] = {
    name = "Red Scholar Pants",
    image = "Red Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 63,
            resources = {
            {name = "Red Fabric", quantity = 49},
            {name = "Raging Essence", quantity = 128},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
		{name = "line 2", stat = "+29 - 35 Shield"};
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Scholar Pants"] = {
    name = "Eon Scholar Pants",
    image = "Eon Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 69,
            resources = {
            {name = "Eon Fabric", quantity = 44},
            {name = "Dream Fragment", quantity = 25},
            {name = "Radiant Raging Essence", quantity = 104},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Golem", chance = "<0.00%"},
		{name = "Rocky", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
		{name = "line 2", stat = "+31 - 38 Shield"};
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Scholar Pants"] = {
    name = "Arcane Scholar Pants",
    image = "Arcane Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Fabric", quantity = 49},
            {name = "Ocean Shard", quantity = 35},
            {name = "Radiant Nurturing Essence", quantity = 160},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Shroomie", chance = "<0.00%"},
		{name = "Tallshroom", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 16.5 Defense"},
		{name = "line 2", stat = "+34 - 41 Shield"};
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Scholar Pants"] = {
    name = "Historic Scholar Pants",
    image = "Historic Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 81,
            resources = {
            {name = "Historic Scholar Pants", quantity = 58},
            {name = "Black Diamond Fragment", quantity = 45},
            {name = "Radiant Historic Essence", quantity = 240},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Soulfish", chance = "<0.00%"},
		{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
		{name = "line 2", stat = "+34 - 41 Shield"};
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Scholar Pants"] = {
    name = "Eternal Scholar Pants",
    image = "Eternal Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 87,
            resources = {
            {name = "Eternal Fabric", quantity = 65},
            {name = "Moon Shard", quantity = 55},
            {name = "Radiant Ghostly Essence", quantity = 360},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Pyramid Guardian", chance = "<0.00%"},
		{name = "Ancient Soulfish", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+22.5 - 24 Defense"},
		{name = "line 2", stat = "+39 - 47 Shield"};
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Scholar Pants"] = {
    name = "Raging Scholar Pants",
    image = "Raging Scholar Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Scholar Pants",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Scholar Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 93,
            resources = {
				{name= "Raging Fabric", quantity = 75},
				{name= "Blood Pebble", quantity = 65},
				{name= "Radiant Life Essence", quantity = 520},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+25.5 - 30 Defense"},
		{name = "line 2", stat = "+41 - 50 Shield"};
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF SCHOLAR PANTS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL PRIEST BOTTOM
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Green Priest Bottom"] = {
    name = "Green Priest Bottom",
    image = "Green Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 4,
            resources = {
            {name = "Refined Fiber", quantity = 8},
            {name = "Dull Life Essence", quantity = 6},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "900 SC", sellPrice = ""}
	},
	drops = {
		{name = "Slime", chance = "0.04%"},
		{name = "Bubble Spirit", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+2 - 3 Max MP"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Priest Bottom"] = {
    name = "Cotton Priest Bottom",
    image = "Cotton Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 9,
            resources = {
            {name = "Cotton Fabric", quantity = 10},
            {name = "Dull Ghostly Essence", quantity = 10},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Cloudsheep", chance = "0.37%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
   		{name = "line 2", stat = "+4 - 5 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Priest Bottom"] = {
    name = "Coconut Priest Bottom",
    image = "Coconut Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 15,
            resources = {
            {name = "Coconut Fabric", quantity = 12},
            {name = "Dull Raging Essence", quantity = 14},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Black Cloudsheep", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
		{name = "line 2", stat = "+6 - 8 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Priest Bottom"] = {
    name = "Yellow Priest Bottom",
    image = "Yellow Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 21,
            resources = {
            {name = "Yellow Fabric", quantity = 15},
            {name = "Dull Nurturing Essence", quantity = 22},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Snapper", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+9 - 11 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Priest Bottom"] = {
    name = "Glowing Priest Bottom",
    image = "Glowing Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 27,
            resources = {
            {name = "Glowing Fabric", quantity = 18},
            {name = "Dull Nurturing Essence", quantity = 36},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Sadling", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+11 - 14 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Priest Bottom"] = {
    name = "Silverleaf Priest Bottom",
    image = "Silverleaf Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 33,
            resources = {
            {name = "Silverleaf Fabric", quantity = 21},
            {name = "Dull Eternal Essence", quantity = 52},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
			{name = "Stinky Sheep", chance = "0.02%"},	
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+13 - 16 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Priest Bottom"] = {
    name = "Fern Priest Bottom",
    image = "Fern Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 39,
            resources = {
            {name = "Fern Fabric", quantity = 26},
            {name = "Eternal Essence", quantity = 32},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Licke", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+15 - 18 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Priest Bottom"] = {
    name = "Coral Priest Bottom",
    image = "Coral Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 45,
            resources = {
            {name = "Corals Fabric", quantity = 32},
            {name = "Metal Essence", quantity = 48},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Sweel", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+17 - 21 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Priest Bottom"] = {
    name = "Cactus Priest Bottom",
    image = "Cactus Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 51,
            resources = {
            {name = "Cactus Fabric", quantity = 37},
            {name = "Life Essence", quantity = 64},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = { 
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+19 - 23 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Priest Bottom"] = {
    name = "Ice Priest Bottom",
    image = "Ice Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 57,
            resources = {
            {name = "Ice Fabric", quantity = 43},
            {name = "Historic Essence", quantity = 96},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
		{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+21 - 26 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Priest Bottom"] = {
    name = "Red Priest Bottom",
    image = "Red Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 63,
            resources = {
            {name = "Red Fabric", quantity = 49},
            {name = "Life Essence", quantity = 128},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
		{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+23 - 28 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Priest Bottom"] = {
    name = "Eon Priest Bottom",
    image = "Eon Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 69,
            resources = {
            {name = "Eon Fabric", quantity = 44},
            {name = "Dream Fragment", quantity = 25},
            {name = "Radiant Eternal Essence", quantity = 104},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkak", chance = "<0.00%"},
		{name = "Rocky", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
		{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+25 - 30 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Priest Bottom"] = {
    name = "Arcane Priest Bottom",
    image = "Arcane Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Fabric", quantity = 49},
            {name = "Ocean Shard", quantity = 35},
            {name = "Radiant Nurturing Essence", quantity = 160},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Shroomie", chance = "<0.00%"},
		{name = "Tallshroom", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+13.5 - 15 Defense"},
		{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+27 - 33 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Priest Bottom"] = {
    name = "Historic Priest Bottom",
    image = "Historic Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 81,
            resources = {
            {name = "Historic Priest Bottom", quantity = 58},
            {name = "Black Diamond Fragment", quantity = 45},
            {name = "Radiant Historic Essence", quantity = 240},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+16.5 - 18 Defense"},
		{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+30 - 36 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Priest Bottom"] = {
    name = "Eternal Priest Bottom",
    image = "Eternal Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 87,
            resources = {
            {name = "Eternal Fabric", quantity = 65},
            {name = "Moon Shard", quantity = 55},
            {name = "Radiant Eternal Essence", quantity = 360},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Haunted Flame", chance = "<0.00%"},
		{name = "Blaze", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+21.5 - 22.5 Defense"},
		{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+32 - 49 Max MP"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Priest Bottom"] = {
    name = "Raging Priest Bottom",
    image = "Raging Priest Bottom.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Priest Bottom",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Priest Bottom",
            craftingType = "Armor Crafting",
            craftingLevel = 93,
            resources = {
				{name= "Raging Fabric", quantity = 75},
				{name= "Blood Pebble", quantity = 65},
				{name= "Radiant Raging Essence", quantity = 520},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+22.5 - 28.5 Defense"},
		{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+34 - 41 Max MP"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF PRIEST BOTTOM
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL HUNTER PANTS
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Green Hunter Pants"] = {
    name = "Green Hunter Pants",
    image = "Green Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 4,
            resources = {
            {name = "Refined Fiber", quantity = 8},
            {name = "Dull Life Essence", quantity = 6},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "900 SC", sellPrice = ""}
	},
	drops = {
		{name = "Bubble Spirit", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
		{name = "line 2", stat = "+2 - 4% Damage Balance"};
		{name = "line 3", stat = "+2 - 3% 1 HP on hit chance"};
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Hunter Pants"] = {
    name = "Cotton Hunter Pants",
    image = "Cotton Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 9,
            resources = {
            {name = "Cotton Fabric", quantity = 10},
            {name = "Dull Life Essence", quantity = 10},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Hopper", chance = "0.06%"},
		{name = "Glowsnail", chance = "0.06%"},
	},
    stats = {
    	{name = "line 1", stat = "+1.5 - 3 Defense"},
		{name = "line 2", stat = "+2 - 4% Damage Balance"};
		{name = "line 3", stat = "+4 - 5% 1 HP on hit chance"};
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Hunter Pants"] = {
    name = "Coconut Hunter Pants",
    image = "Coconut Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 15,
            resources = {
            {name = "Coconut Fabric", quantity = 12},
            {name = "Dull Nurturing Essence", quantity = 14},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Cloudsheep", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
		{name = "line 2", stat = "+2 - 4% Damage Balance"};
		{name = "line 3", stat = "+5 - 6% 1 HP on hit chance"};
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Hunter Pants"] = {
    name = "Yellow Hunter Pants",
    image = "Yellow Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 21,
            resources = {
            {name = "Yellow Fabric", quantity = 15},
            {name = "Dull Life Essence", quantity = 22},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Troppo", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
		{name = "line 2", stat = "+4 - 6% Damage Balance"};
		{name = "line 3", stat = "+7 - 9% 1 HP on hit chance"};
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Hunter Pants"] = {
    name = "Glowing Hunter Pants",
    image = "Glowing Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 27,
            resources = {
            {name = "Glowing Fabric", quantity = 18},
            {name = "Dull Nurturing Essence", quantity = 36},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Monoghoul", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
		{name = "line 2", stat = "+6 - 12% Speed"};
		{name = "line 3", stat = "+2 - 5% Jump"};
		{name = "line 4", stat = "+4 - 6% Damage Balance"};
		{name = "line 5", stat = "+9 - 11% 1 HP on hit chance"};
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Hunter Pants"] = {
    name = "Silverleaf Hunter Pants",
    image = "Silverleaf Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 33,
            resources = {
            {name = "Silverleaf Fabric", quantity = 21},
            {name = "Dull Metal Essence", quantity = 52},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
			{name = "Stinky Sheep", chance = "0.02%"},	
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
		{name = "line 2", stat = "+6 - 12% Speed"};
		{name = "line 3", stat = "+2 - 5% Jump"};
		{name = "line 4", stat = "+4 - 6% Damage Balance"};
		{name = "line 5", stat = "+10 - 12% 1 HP on hit chance"};
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Hunter Pants"] = {
    name = "Fern Hunter Pants",
    image = "Fern Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 39,
            resources = {
            {name = "Fern Fabric", quantity = 26},
            {name = "Life Essence", quantity = 32},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Licke", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
		{name = "line 2", stat = "+6 - 12% Speed"};
		{name = "line 3", stat = "+2 - 5% Jump"};
		{name = "line 4", stat = "+4 - 6% Damage Balance"};
		{name = "line 5", stat = "+12 - 15% 1 HP on hit chance"};
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Hunter Pants"] = {
    name = "Coral Hunter Pants",
    image = "Coral Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 45,
            resources = {
            {name = "Corals Fabric", quantity = 32},
            {name = "Metal Essence", quantity = 48},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soultree", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
		{name = "line 2", stat = "+6 - 12% Speed"};
		{name = "line 3", stat = "+2 - 5% Jump"};
		{name = "line 4", stat = "+4 - 6% Damage Balance"};
		{name = "line 5", stat = "+13 - 16% 1 HP on hit chance"};
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Hunter Pants"] = {
    name = "Cactus Hunter Pants",
    image = "Cactus Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 51,
            resources = {
            {name = "Cactus Fabric", quantity = 37},
            {name = "Raging Essence", quantity = 64},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cactus", chance = "0.01%"},
		{name = "Bubble Snake", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
		{name = "line 2", stat = "+6 - 12% Speed"};
		{name = "line 3", stat = "+2 - 5% Jump"};
		{name = "line 4", stat = "+6 - 8% Damage Balance"};
		{name = "line 5", stat = "+15 - 18% 1 HP on hit chance"};
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Hunter Pants"] = {
    name = "Ice Hunter Pants",
    image = "Ice Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 57,
            resources = {
            {name = "Ice Fabric", quantity = 43},
            {name = "Nurturing Essence", quantity = 96},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Dragonfruit", chance = "<0.00%"},
		{name = "Slibbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
		{name = "line 2", stat = "+6 - 12% Speed"};
		{name = "line 3", stat = "+2 - 5% Jump"};
		{name = "line 4", stat = "+6 - 8% Damage Balance"};
		{name = "line 5", stat = "+17 - 21% 1 HP on hit chance"};
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Hunter Pants"] = {
    name = "Red Hunter Pants",
    image = "Red Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 63,
            resources = {
            {name = "Red Fabric", quantity = 49},
            {name = "Ghostly Essence", quantity = 128},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
		{name = "line 2", stat = "+12 - 18% Speed"};
		{name = "line 3", stat = "+5 - 7% Jump"};
		{name = "line 4", stat = "+6 - 8% Damage Balance"};
		{name = "line 5", stat = "+18 - 22% 1 HP on hit chance"};
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Hunter Pants"] = {
    name = "Eon Hunter Pants",
    image = "Eon Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 69,
            resources = {
            {name = "Eon Fabric", quantity = 44},
            {name = "Dream Fragment", quantity = 25},
            {name = "Radiant Life Essence", quantity = 104},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkak", chance = "<0.00%"},
		{name = "Rocky", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
		{name = "line 2", stat = "+12 - 18% Speed"};
		{name = "line 3", stat = "+5 - 7% Jump"};
		{name = "line 4", stat = "+6 - 8% Damage Balance"};
		{name = "line 5", stat = "+20 - 24% 1 HP on hit chance"};
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Hunter Pants"] = {
    name = "Arcane Hunter Pants",
    image = "Arcane Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 75,
            resources = {
            {name = "Arcane Fabric", quantity = 49},
            {name = "Ocean Shard", quantity = 35},
            {name = "Radiant Metal Essence", quantity = 160},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Tallshroom", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 16.5 Defense"},
		{name = "line 2", stat = "+12 - 18% Speed"};
		{name = "line 3", stat = "+5 - 7% Jump"};
		{name = "line 4", stat = "+8 - 10% Damage Balance"};
		{name = "line 5", stat = "+21 - 26% 1 HP on hit chance"};
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Hunter Pants"] = {
    name = "Historic Hunter Pants",
    image = "Historic Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 81,
            resources = {
            {name = "Historic Hunter Pants", quantity = 58},
            {name = "Black Diamond Fragment", quantity = 45},
            {name = "Radiant Metal Essence", quantity = 240},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soulfish", chance = "<0.00%"},
		{name = "Fernek", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
		{name = "line 2", stat = "+12 - 18% Speed"};
		{name = "line 3", stat = "+5 - 7% Jump"};
		{name = "line 4", stat = "+8 - 10% Damage Balance"};
		{name = "line 5", stat = "+23 - 28% 1 HP on hit chance"};
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Hunter Pants"] = {
    name = "Eternal Hunter Pants",
    image = "Eternal Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 87,
            resources = {
            {name = "Eternal Fabric", quantity = 65},
            {name = "Moon Shard", quantity = 55},
            {name = "Radiant Nurturing Essence", quantity = 360},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Pyramid Guardian", chance = "<0.00%"},
		{name = "Ancient Soulfish", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+22.5 - 24 Defense"},
		{name = "line 2", stat = "+12 - 18% Speed"};
		{name = "line 3", stat = "+5 - 7% Jump"};
		{name = "line 4", stat = "+8 - 10% Damage Balance"};
		{name = "line 5", stat = "+25 - 30% 1 HP on hit chance"};
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Hunter Pants"] = {
    name = "Raging Hunter Pants",
    image = "Raging Hunter Pants.png",
    caption = "You can wear this.",
    equipmentType = "Bottomwear",
    armorType = "Hunter Pants",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Hunter Pants",
            craftingType = "Armor Crafting",
            craftingLevel = 93,
            resources = {
				{name= "Raging Fabric", quantity = 75},
				{name= "Blood Pebble", quantity = 65},
				{name= "Radiant Life Essence", quantity = 520},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+25.5 - 30 Defense"},
		{name = "line 2", stat = "+12 - 18% Speed"};
		{name = "line 3", stat = "+5 - 7% Jump"};
		{name = "line 4", stat = "+8 - 10% Damage Balance"};
		{name = "line 5", stat = "+26 - 32% 1 HP on hit chance"};

    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF HUNTER PANTS
-------------------------------------------------------------------------------------------------------------------------------------------------
	--END OF BOTTOMWEAR
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL TOPWEAR
	--ALL CHEST PLATES
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Chest Plate"] = {
    name = "Stone Chest Plate",
    image = "Stone Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 6,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 5,
            resources = {
            {name = "Stone Slab", quantity = 12},
            {name = "Dull Life Essence", quantity = 8},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "1,200 SC", sellPrice = ""}
	},
	drops = {
		{name = "Slime", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 7.5 Defense"},
   		{name = "line 2", stat = "+5 - 6 Max HP"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Copper Chest Plate"] = {
    name = "Copper Chest Plate",
    image = "Copper Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 12,
    tier = "Copper",
    crafting = {
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
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Jel", chance = "0.04%"},
		{name = "Flows", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
   		{name = "line 2", stat = "+10 - 12 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Quartz Chest Plate"] = {
    name = "Quartz Chest Plate",
    image = "Quartz Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 18,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 16,
            resources = {
            {name = "Refined Quartz Plate", quantity = 18},
            {name = "Dull Metal Essence", quantity = 18},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Black Cloudsheep", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
   		{name = "line 2", stat = "+15 - 18 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Iron Chest Plate"] = {
    name = "Iron Chest Plate",
    image = "Iron Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 24,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 22,
            resources = {
            {name = "Iron Plate", quantity = 22},
            {name = "Dull Ghostly Essence", quantity = 28},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Droppo", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
   		{name = "line 2", stat = "+20 - 24 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Petrified Chest Plate"] = {
    name = "Petrified Chest Plate",
    image = "Petrified Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 30,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 28,
            resources = {
            {name = "Petrified Plate", quantity = 26},
            {name = "Dull Eternal Essence", quantity = 45},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Citruslime", chance = "0.02%"},
		{name = "Monoghoul", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
   		{name = "line 2", stat = "+25 - 30 Max HP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Stinky Chest Plate"] = {
    name = "Stinky Chest Plate",
    image = "Stinky Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 36,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 34,
            resources = {
            {name = "Stinky Plate", quantity = 30},
            {name = "Dull Life Essence", quantity = 65},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		
	},
    stats = {
    	{name = "line 1", stat = "+13.5 - 15 Defense"},
		{name = "line 2", stat = "+30 - 36 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eerie Chest Plate"] = {
    name = "Eerie Chest Plate",
    image = "Eerie Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 42,
    tier = "Eerie",
    crafting = {
        {
            name = "Eerie Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 40,
            resources = {
            {name = "Malachite Plate", quantity = 36},
            {name = "Eternal Essence", quantity = 40},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soulpling", chance = "0.01%"},
		{name = "Ferni", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 18 Defense"},
		{name = "line 2", stat = "+35 - 42 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Deep Chest Plate"] = {
    name = "Deep Chest Plate",
    image = "Deep Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 48,
    tier = "Deep",
    crafting = {
        {
            name = "Deep Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 46,
            resources = {
            {name = "Cobalt Plate", quantity = 42},
            {name = "Eternal Essence", quantity = 60},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Sweel", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
   		{name = "line 2", stat = "+40 - 48 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Repressive Chest Plate"] = {
    name = "Repressive Chest Plate",
    image = "Repressive Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 54,
    tier = "Repressive",
    crafting = {
        {
            name = "Repressive Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 52,
            resources = {
            {name = "Bismuth Plate", quantity = 48},
            {name = "Metal Essence", quantity = 80},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+19.5 - 21 Defense"},
		{name = "line 2", stat = "+45 - 54 Max HP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sharp Chest Plate"] = {
    name = "Sharp Chest Plate",
    image = "Sharp Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 60,
    tier = "Sharp",
    crafting = {
        {
            name = "Sharp Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 59,
            resources = {
            {name = "Titanium Plate", quantity = 56},
            {name = "Raging Essence", quantity = 120},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+22.5 - 24 Defense"},
   		{name = "line 2", stat = "+50 - 60 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Radiant Chest Plate"] = {
    name = "Radiant Chest Plate",
    image = "Radiant Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 66,
    tier = "Radiant",
    crafting = {
        {
            name = "Radiant Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 64,
            resources = {
            {name = "Gold Plate", quantity = 64},
            {name = "Life Essence", quantity = 160},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Blizzy", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+25.5 - 27 Defense"},
		{name = "line 2", stat = "+55 - 66 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Mystical Chest Plate"] = {
    name = "Mystical Chest Plate",
    image = "Mystical Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 72,
    tier = "Mystical",
    crafting = {
        {
            name = "Mystical Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 70,
            resources = {
            {name = "Mithril Plate", quantity = 70},
            {name = "Dream Fragment", quantity = 5},
            {name = "Radiant Eternal Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkak", chance = "<0.00%"},
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+30 - 31.5 Defense"},
		{name = "line 2", stat = "+60 - 72 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Chest Plate"] = {
    name = "Arcane Chest Plate",
    image = "Arcane Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 76,
            resources = {
            {name = "Arcane Plate", quantity = 76},
            {name = "Ocean Shard", quantity = 7},
            {name = "Radiant Eternal Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+33 - 34.5 Defense"},
   		{name = "line 2", stat = "+65 - 78 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Star Chest Plate"] = {
    name = "Star Chest Plate",
    image = "Star Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 84,
    tier = "Star",
    crafting = {
        {
            name = "Star Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 82,
            resources = {
            {name = "Star Plate", quantity = 84},
            {name = "Black Diamond Fragment", quantity = 9},
            {name = "Radiant Life Essence", quantity = 300},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Blaze", chance = "0.01%"},
		{name = "Coral", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+36 - 37.5 Defense"},
		{name = "line 2", stat = "+70 - 84 Max HP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Chest Plate"] = {
    name = "Eternal Chest Plate",
    image = "Eternal Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 88,
            resources = {
            {name = "Eternal Plate", quantity = 92},
            {name = "Moon Shard", quantity = 12},
            {name = "Radiant Metal Essence", quantity = 450},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Pyramid Guardian", chance = "<0.00%"},
		{name = "Ancient Soulfish", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+39 - 42 Defense"},
   		{name = "line 2", stat = "+75 - 90 Max HP"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Obsidium Chest Plate"] = {
    name = "Obsidium Chest Plate",
    image = "Obsidium Chest Plate.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Chest Plate",
    level = 96,
    tier = "Obsidium",
    crafting = {
        {
            name = "Obsidium Chest Plate",
            craftingType = "Armor Crafting",
            craftingLevel = 94,
            resources = {
            {name = "Obsidium Plate", quantity = 100},
            {name = "Blood Pebble", quantity = 16},
            {name = "Radiant Life Essence", quantity = 650},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {

	},
    stats = {
    	{name = "line 1", stat = "+43 - 45 Defense"},
		{name = "line 2", stat = "+80 - 96 Max HP"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF CHEST PLATES
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL SCHOLAR ROBE
data["Green Scholar Robe"] = {
    name = "Green Scholar Robe",
    image = "Green Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 5,
            resources = {
            {name = "Refined Fiber", quantity = 12},
            {name = "Dull Life Essence", quantity = 8},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "1,200 SC", sellPrice = ""}
	},
	drops = {
		{name = "Slime", chance = "0.04%"},
		{name = "Flows", chance = "0.17%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+5 - 6 Shield"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Scholar Robe"] = {
    name = "Cotton Scholar Robe",
    image = "Cotton Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 10,
            resources = {
            {name = "Cotton Fabric", quantity = 15},
            {name = "Dull Historic Essence", quantity = 13},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Squishling", chance = "0.39%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
   		{name = "line 2", stat = "+8 - 10 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Scholar Robe"] = {
    name = "Coconut Scholar Robe",
    image = "Coconut Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 16,
            resources = {
            {name = "Coconut Fabric", quantity = 18},
            {name = "Dull Nurturing Essence", quantity = 18},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Squishling", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
   		{name = "line 2", stat = "+12 - 15 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Scholar Robe"] = {
    name = "Yellow Scholar Robe",
    image = "Yellow Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 22,
            resources = {
            {name = "Yellow Fabric", quantity = 22},
            {name = "Dull Nurturing Essence", quantity = 28},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Droppo", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
   		{name = "line 2", stat = "+15 - 18 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Scholar Robe"] = {
    name = "Glowing Scholar Robe",
    image = "Glowing Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 28,
            resources = {
            {name = "Glowing Fabric", quantity = 26},
            {name = "Dull Life Essence", quantity = 45},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Bananek", chance = "0.02%"},
		{name = "Sadling", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
   		{name = "line 2", stat = "+18 - 22 Shield"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Scholar Robe"] = {
    name = "Silverleaf Scholar Robe",
    image = "Silverleaf Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 34,
            resources = {
            {name = "Silverleaf Fabric", quantity = 30},
            {name = "Dull Nurturing Essence", quantity = 65},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
		{name = "line 2", stat = "+22 - 27 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Scholar Robe"] = {
    name = "Fern Scholar Robe",
    image = "Fern Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 40,
            resources = {
            {name = "Fern Fabric", quantity = 36},
            {name = "Nurturing Essence", quantity = 40},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Licke", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
		{name = "line 2", stat = "+25 - 30 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Scholar Robe"] = {
    name = "Coral Scholar Robe",
    image = "Coral Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 46,
            resources = {
            {name = "Corals Fabric", quantity = 42},
            {name = "Nurturing Essence", quantity = 60},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soultree", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+13.5 - 15 Defense"},
   		{name = "line 2", stat = "+28 - 34 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Scholar Robe"] = {
    name = "Cactus Scholar Robe",
    image = "Cactus Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 52,
            resources = {
            {name = "Cactus Fabric", quantity = 48},
            {name = "Nurturing Essence", quantity = 80},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 16.5 Defense"},
		{name = "line 2", stat = "+32 - 39 Shield"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Scholar Robe"] = {
    name = "Ice Scholar Robe",
    image = "Ice Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 58,
            resources = {
            {name = "Ice Fabric", quantity = 56},
            {name = "Historic Essence", quantity = 120},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+16.5 - 18 Defense"},
   		{name = "line 2", stat = "+35 - 42 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Scholar Robe"] = {
    name = "Red Scholar Robe",
    image = "Red Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 64,
            resources = {
            {name = "Red Fabric", quantity = 64},
            {name = "Life Essence", quantity = 160},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rocky", chance = "0.05%"},
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
		{name = "line 2", stat = "+38 - 46 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Scholar Robe"] = {
    name = "Eon Scholar Robe",
    image = "Eon Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 70,
            resources = {
            {name = "Eon Fabric", quantity = 70},
            {name = "Dreamstone", quantity = 5},
            {name = "Radiant Ghostly Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkak", chance = "<0.00%"},
		{name = "Rocky", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+19.5 - 21 Defense"},
		{name = "line 2", stat = "+42 - 51 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Scholar Robe"] = {
    name = "Arcane Scholar Robe",
    image = "Arcane Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 76,
            resources = {
            {name = "Arcane Fabric", quantity = 76},
            {name = "Ocean Heart", quantity = 7},
            {name = "Radiant Life Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "<0.00%"},
		{name = "Kiwi", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+22.5 - 24 Defense"},
   		{name = "line 2", stat = "+45 - 54 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Scholar Robe"] = {
    name = "Historic Scholar Robe",
    image = "Historic Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 82,
            resources = {
            {name = "Historic Fabric", quantity = 84},
            {name = "Black Diamond", quantity = 9},
            {name = "Radiant Metal Essence", quantity = 300},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+28.5 - 30 Defense"},
		{name = "line 2", stat = "+48 - 58 Shield"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Scholar Robe"] = {
    name = "Eternal Scholar Robe",
    image = "Eternal Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 88,
            resources = {
            {name = "Eternal Fabric", quantity = 92},
            {name = "Moonstone", quantity = 12},
            {name = "Radiant Raging Essence", quantity = 450},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Haunted Flame", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+34.5 - 36 Defense"},
   		{name = "line 2", stat = "+52 - 63 Shield"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Scholar Robe"] = {
    name = "Raging Scholar Robe",
    image = "Raging Scholar Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Scholar Robe",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Scholar Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 94,
            resources = {
            {name = "Raging Fabric", quantity = 100},
            {name = "Bloodstone", quantity = 16},
            {name = "Radiant Metal Essence", quantity = 650},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {

	},
    stats = {
    	{name = "line 1", stat = "+37.5 - 43.5 Defense"},
		{name = "line 2", stat = "+55 - 66 Shield"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

	--END OF SCHOLAR ROBE
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL PRIEST ROBE
data["Green Priest Robe"] = {
    name = "Green Priest Robe",
    image = "Green Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 5,
            resources = {
            {name = "Refined Fiber", quantity = 12},
            {name = "Dull Life Essence", quantity = 8},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "1,200 SC", sellPrice = ""}
	},
	drops = {
		{name = "Bubble Spirit", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
   		{name = "line 2", stat = "+3 - 4 Max MP"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Priest Robe"] = {
    name = "Cotton Priest Robe",
    image = "Cotton Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 10,
            resources = {
            {name = "Cotton Fabric", quantity = 15},
            {name = "Dull Eternal Essence", quantity = 13},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Slip", chance = "0.05%"},
		{name = "Hopper", chance = "0.06%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
   		{name = "line 2", stat = "+6 - 8 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Priest Robe"] = {
    name = "Coconut Priest Robe",
    image = "Coconut Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 16,
            resources = {
            {name = "Coconut Fabric", quantity = 18},
            {name = "Dull Life Essence", quantity = 18},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Cloudsheep", chance = "0.04%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
   		{name = "line 2", stat = "+9 - 11 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Priest Robe"] = {
    name = "Yellow Priest Robe",
    image = "Yellow Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 22,
            resources = {
            {name = "Yellow Fabric", quantity = 22},
            {name = "Dull Nurturing Essence", quantity = 28},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Droppo", chance = "0.04%"},
		{name = "Troppo", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+11 - 14 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Priest Robe"] = {
    name = "Glowing Priest Robe",
    image = "Glowing Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 28,
            resources = {
            {name = "Glowing Fabric", quantity = 26},
            {name = "Dull Historic Essence", quantity = 45},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Bananek", chance = "0.02%"},
		{name = "Sadling", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+14 - 17 Max MP"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Priest Robe"] = {
    name = "Silverleaf Priest Robe",
    image = "Silverleaf Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 34,
            resources = {
            {name = "Silverleaf Fabric", quantity = 30},
            {name = "Dull Eternal Essence", quantity = 65},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Dark Pumpkin", chance = "0.02%"},
		{name = "Stinky Sheep", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+17 - 21 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Priest Robe"] = {
    name = "Fern Priest Robe",
    image = "Fern Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 40,
            resources = {
            {name = "Fern Fabric", quantity = 36},
            {name = "Metal Essence", quantity = 40},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Rainbow Cloudsheep", chance = "0.01%"},
		{name = "Humblebee", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+20 - 24 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Priest Robe"] = {
    name = "Coral Priest Robe",
    image = "Coral Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 46,
            resources = {
            {name = "Corals Fabric", quantity = 42},
            {name = "Historic Essence", quantity = 60},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Giga", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+13.5 Defense"},
    	{name = "line 2", stat = "+1 - 2 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+23 - 28 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Priest Robe"] = {
    name = "Cactus Priest Robe",
    image = "Cactus Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 52,
            resources = {
            {name = "Cactus Fabric", quantity = 48},
            {name = "Metal Essence", quantity = 80},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+13.5 - 15 Defense"},
    	{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+25 - 30 Max MP"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Priest Robe"] = {
    name = "Ice Priest Robe",
    image = "Ice Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 58,
            resources = {
            {name = "Ice Fabric", quantity = 56},
            {name = "Eternal Essence", quantity = 120},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 16.5 Defense"},
    	{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+28 - 34 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Priest Robe"] = {
    name = "Red Priest Robe",
    image = "Red Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 64,
            resources = {
            {name = "Red Fabric", quantity = 64},
            {name = "Eternal Essence", quantity = 160},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+16.5 - 18 Defense"},
    	{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+31 - 38 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Priest Robe"] = {
    name = "Eon Priest Robe",
    image = "Eon Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 70,
            resources = {
            {name = "Eon Fabric", quantity = 70},
            {name = "Dreamstone", quantity = 5},
            {name = "Radiant Ghostly Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rocky", chance = "<0.00%"},
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
    	{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+34 - 41 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Priest Robe"] = {
    name = "Arcane Priest Robe",
    image = "Arcane Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 76,
            resources = {
            {name = "Arcane Fabric", quantity = 76},
            {name = "Ocean Heart", quantity = 7},
            {name = "Radiant Ghostly Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Shroomie", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+21 - 22.5 Defense"},
    	{name = "line 2", stat = "+2 - 3 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+37 - 45 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Priest Robe"] = {
    name = "Historic Priest Robe",
    image = "Historic Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 82,
            resources = {
            {name = "Historic Fabric", quantity = 84},
            {name = "Black Diamond", quantity = 9},
            {name = "Radiant Eternal Essence", quantity = 300},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+27 Defense"},
    	{name = "line 2", stat = "+3 - 4 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+39 - 47 Max MP"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Priest Robe"] = {
    name = "Eternal Priest Robe",
    image = "Eternal Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 88,
            resources = {
            {name = "Eternal Fabric", quantity = 92},
            {name = "Moonstone", quantity = 12},
            {name = "Radiant Eternal Essence", quantity = 450},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Pyramid Guardian", chance = "<0.00%"},
		{name = "Coral", chance = "<0.00%"},
		{name = "Ancient Soulfish", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+31.5 - 33 Defense"},
    	{name = "line 2", stat = "+3 - 4 HP Regeneration Per Tick"},
   		{name = "line 3", stat = "+42 - 51 Max MP"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Priest Robe"] = {
    name = "Raging Priest Robe",
    image = "Raging Priest Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Priest Robe",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Priest Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 94,
            resources = {
            {name = "Raging Fabric", quantity = 100},
            {name = "Bloodstone", quantity = 16},
            {name = "Radiant Life Essence", quantity = 650},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Lime Slime", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+34.5 - 40.5 Defense"},
    	{name = "line 2", stat = "+3 - 4 HP Regeneration Per Tick"},
		{name = "line 3", stat = "+45 - 54 Max MP"},
    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
	--END OF PRIEST ROBE
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL HUNTER ROBE
data["Green Hunter Robe"] = {
    name = "Green Hunter Robe",
    image = "Green Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 6,
    tier = "Green",
    crafting = {
        {
            name = "Green Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 5,
            resources = {
            {name = "Refined Fiber", quantity = 12},
            {name = "Dull Life Essence", quantity = 8},
            }
        },
    },
	quest = {

	},
	purchase = {
		{name = "Tailor", purchasePrice = "1,200 SC", sellPrice = ""}
	},
	drops = {
		{name = "Slime", chance = "0.04%"},
		{name = "Bubble Spirit", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+3 - 4.5 Defense"},
    	{name = "line 2", stat = "+2 - 4% Damage Balance"},
    	{name = "line 3", stat = "+3 - 4% 1 HP on hit chance"},
    },
    slots = 2,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cotton Hunter Robe"] = {
    name = "Cotton Hunter Robe",
    image = "Cotton Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 12,
    tier = "Cotton",
    crafting = {
        {
            name = "Cotton Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 10,
            resources = {
            {name = "Cotton Fabric", quantity = 15},
            {name = "Dull Eternal Essence", quantity = 13},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Pin Pin", chance = "0.05%"},
		{name = "Slip", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+4.5 - 6 Defense"},
    	{name = "line 2", stat = "+2 - 4% Damage Balance"},
    	{name = "line 3", stat = "+5 - 6% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coconut Hunter Robe"] = {
    name = "Coconut Hunter Robe",
    image = "Coconut Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 18,
    tier = "Coconut",
    crafting = {
        {
            name = "Coconut Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 16,
            resources = {
            {name = "Coconut Fabric", quantity = 18},
            {name = "Dull Historic Essence", quantity = 18},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Black Cloudsheep", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+6 - 7.5 Defense"},
    	{name = "line 2", stat = "+4 - 6% Damage Balance"},
    	{name = "line 3", stat = "+7 - 9% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Yellow Hunter Robe"] = {
    name = "Yellow Hunter Robe",
    image = "Yellow Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 24,
    tier = "Yellow",
    crafting = {
        {
            name = "Yellow Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 22,
            resources = {
            {name = "Yellow Fabric", quantity = 22},
            {name = "Dull Raging Essence", quantity = 28},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Droppo", chance = "0.04%"},
		{name = "Licki", chance = "0.05%"},
	},
    stats = {
    	{name = "line 1", stat = "+7.5 - 9 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
		{name = "line 3", stat = "+2 - 5% Jump"},
    	{name = "line 4", stat = "+4 - 6% Damage Balance"},
    	{name = "line 5", stat = "+9 - 11% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Glowing Hunter Robe"] = {
    name = "Glowing Hunter Robe",
    image = "Glowing Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 30,
    tier = "Glowing",
    crafting = {
        {
            name = "Glowing Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 28,
            resources = {
            {name = "Glowing Fabric", quantity = 26},
            {name = "Dull Ghostly Essence", quantity = 45},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Bananek", chance = "0.02%"},
		{name = "Sadling", chance = "0.03%"},
	},
    stats = {
    	{name = "line 1", stat = "+9 - 10.5 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
		{name = "line 3", stat = "+2 - 5% Jump"},
    	{name = "line 4", stat = "+4 - 6% Damage Balance"},
    	{name = "line 5", stat = "+12 - 15% 1 HP on hit chance"},
    },
    slots = 3,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Silverleaf Hunter Robe"] = {
    name = "Silverleaf Hunter Robe",
    image = "Silverleaf Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 36,
    tier = "Silverleaf",
    crafting = {
        {
            name = "Silverleaf Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 34,
            resources = {
            {name = "Silverleaf Fabric", quantity = 30},
            {name = "Dull Metal Essence", quantity = 65},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Dark Pumpkin", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+10.5 - 12 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
		{name = "line 3", stat = "+2 - 5% Jump"},
    	{name = "line 4", stat = "+6 - 8% Damage Balance"},
    	{name = "line 5", stat = "+14 - 17% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Fern Hunter Robe"] = {
    name = "Fern Hunter Robe",
    image = "Fern Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 42,
    tier = "Fern",
    crafting = {
        {
            name = "Fern Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 40,
            resources = {
            {name = "Fern Fabric", quantity = 36},
            {name = "Life Essence", quantity = 40},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soulpling", chance = "0.01%"},
		{name = "Ferni", chance = "0.02%"},
	},
    stats = {
    	{name = "line 1", stat = "+12 - 13.5 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
		{name = "line 3", stat = "+2 - 5% Jump"},
    	{name = "line 4", stat = "+6 - 8% Damage Balance"},
    	{name = "line 5", stat = "+16 - 20% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Coral Hunter Robe"] = {
    name = "Coral Hunter Robe",
    image = "Coral Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 48,
    tier = "Coral",
    crafting = {
        {
            name = "Coral Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 46,
            resources = {
            {name = "Corals Fabric", quantity = 42},
            {name = "Metal Essence", quantity = 60},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Soultree", chance = "0.01%"},
		{name = "Sweel", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+13.5 - 15 Defense"},
    	{name = "line 2", stat = "+6 - 12% Speed"},
		{name = "line 3", stat = "+2 - 5% Jump"},
    	{name = "line 4", stat = "+6 - 8% Damage Balance"},
    	{name = "line 5", stat = "+18 - 22% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cactus Hunter Robe"] = {
    name = "Cactus Hunter Robe",
    image = "Cactus Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 54,
    tier = "Cactus",
    crafting = {
        {
            name = "Cactus Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 52,
            resources = {
            {name = "Cactus Fabric", quantity = 48},
            {name = "Nurturing Essence", quantity = 80},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkik", chance = "0.01%"},
	},
    stats = {
    	{name = "line 1", stat = "+15 - 16.5 Defense"},
    	{name = "line 2", stat = "+12 - 18% Speed"},
		{name = "line 3", stat = "+5 - 7% Jump"},
    	{name = "line 4", stat = "+8 - 10% Damage Balance"},
    	{name = "line 5", stat = "+20 - 24% 1 HP on hit chance"},
    },
    slots = 4,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ice Hunter Robe"] = {
    name = "Ice Hunter Robe",
    image = "Ice Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 60,
    tier = "Ice",
    crafting = {
        {
            name = "Ice Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 58,
            resources = {
            {name = "Ice Fabric", quantity = 56},
            {name = "Ghostly Essence", quantity = 120},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Slabbit", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+16.5 - 18 Defense"},
    	{name = "line 2", stat = "+12 - 18% Speed"},
		{name = "line 3", stat = "+5 - 7% Jump"},
    	{name = "line 4", stat = "+8 - 10% Damage Balance"},
    	{name = "line 5", stat = "+22 - 27% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Red Hunter Robe"] = {
    name = "Red Hunter Robe",
    image = "Red Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 66,
    tier = "Red",
    crafting = {
        {
            name = "Red Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 64,
            resources = {
            {name = "Red Fabric", quantity = 64},
            {name = "Metal Essence", quantity = 160},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Haowl", chance = "<0.00%"},
		{name = "Snowball", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+18 - 19.5 Defense"},
    	{name = "line 2", stat = "+12 - 18% Speed"},
		{name = "line 3", stat = "+5 - 7% Jump"},
    	{name = "line 4", stat = "+8 - 10% Damage Balance"},
    	{name = "line 5", stat = "+24 - 29% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eon Hunter Robe"] = {
    name = "Eon Hunter Robe",
    image = "Eon Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 72,
    tier = "Eon",
    crafting = {
        {
            name = "Eon Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 70,
            resources = {
            {name = "Eon Fabric", quantity = 70},
            {name = "Dreamstone", quantity = 5},
            {name = "Radiant Life Essence", quantity = 130},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Rokkak", chance = "<0.00%"},
		{name = "Cat Golem", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+19.5 - 21 Defense"},
    	{name = "line 2", stat = "+12 - 18% Speed"},
		{name = "line 3", stat = "+5 - 7% Jump"},
    	{name = "line 4", stat = "+10 - 12% Damage Balance"},
    	{name = "line 5", stat = "+26 - 32% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcane Hunter Robe"] = {
    name = "Arcane Hunter Robe",
    image = "Arcane Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 78,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcane Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 76,
            resources = {
            {name = "Arcane Fabric", quantity = 76},
            {name = "Ocean Heart", quantity = 7},
            {name = "Radiant Raging Essence", quantity = 200},
            }
        },
    },
	quest = {},
	purchase = {},
	drops = {
		{name = "Cat Guardian", chance = "<0.00%"},
		{name = "Shroomie", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+22.5 - 24.5 Defense"},
    	{name = "line 2", stat = "+12 - 18% Speed"},
		{name = "line 3", stat = "+5 - 7% Jump"},
    	{name = "line 4", stat = "+10 - 12% Damage Balance"},
    	{name = "line 5", stat = "+29 - 35% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Historic Hunter Robe"] = {
    name = "Historic Hunter Robe",
    image = "Historic Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 84,
    tier = "Historic",
    crafting = {
        {
            name = "Historic Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 82,
            resources = {
            {name = "Historic Fabric", quantity = 84},
            {name = "Black Diamond", quantity = 9},
            {name = "Radiant Life Essence", quantity = 300},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Coral", chance = "<0.00%"},
		{name = "Upsivase", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+28.5 - 30 Defense"},
    	{name = "line 2", stat = "+18 - 24% Speed"},
		{name = "line 3", stat = "+7 - 9% Jump"},
    	{name = "line 4", stat = "+10 - 12% Damage Balance"},
    	{name = "line 5", stat = "+31 - 38% 1 HP on hit chance"},
    },
    slots = 5,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Hunter Robe"] = {
    name = "Eternal Hunter Robe",
    image = "Eternal Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 90,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 88,
            resources = {
            {name = "Eternal Fabric", quantity = 92},
            {name = "Moonstone", quantity = 12},
            {name = "Radiant Metal Essence", quantity = 450},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {
		{name = "Haunted Flame", chance = "<0.00%"},
		{name = "Blaze", chance = "<0.00%"},
	},
    stats = {
    	{name = "line 1", stat = "+34.5 - 36 Defense"},
    	{name = "line 2", stat = "+18 - 24% Speed"},
		{name = "line 3", stat = "+7 - 9% Jump"},
    	{name = "line 4", stat = "+12 - 16% Damage Balance"},
    	{name = "line 5", stat = "+33 - 40% 1 HP on hit chance"},
    },
    slots = 6,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Raging Hunter Robe"] = {
    name = "Raging Hunter Robe",
    image = "Raging Hunter Robe.png",
    caption = "You can wear this.",
    equipmentType = "Topwear",
    armorType = "Hunter Robe",
    level = 96,
    tier = "Raging",
    crafting = {
        {
            name = "Raging Hunter Robe",
            craftingType = "Armor Crafting",
            craftingLevel = 94,
            resources = {
            {name = "Raging Fabric", quantity = 100},
            {name = "Bloodstone", quantity = 16},
            {name = "Radiant Eternal Essence", quantity = 650},
            }
        },
    },
	quest = {

	},
	purchase = {

	},
	drops = {

	},
    stats = {
    	{name = "line 1", stat = "+37.5 - 43.5 Defense"},
    	{name = "line 2", stat = "+18 - 24% Speed"},
		{name = "line 3", stat = "+7 - 9% Jump"},
    	{name = "line 4", stat = "+12 - 16% Damage Balance"},
    	{name = "line 5", stat = "+35 - 42% 1 HP on hit chance"},

    },
    slots = 7,
    echoes = {
    	{name = "", quantity = "", chance = ""}
    },
    tradable = "Yes",
    craftable = "Yes"
}
-------------------------------------------------------------------------------------------------------------------------------------------------
	--END OF HUNTER ROBE
-------------------------------------------------------------------------------------------------------------------------------------------------

	--END OF TOPWEAR
-------------------------------------------------------------------------------------------------------------------------------------------------
	--END OF ARMOR
-------------------------------------------------------------------------------------------------------------------------------------------------


--ALL ACCESSORIES
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL FACE ACCESSORIES
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Flower Tiara"] = {
    name = "Flower Tiara",
    image = "Flower Tiara.png",
    caption = "A beautiful, colorful ring of flowers.",
    equipmentType = "Face Accessory",
    armorType = "",
    level = 15,
    tier = "Unique",
    crafting = {
        {
            name = "Flower Tiara",
            craftingType = "general",
            craftingLevel = 0,
            resources = {
                {name = "Red Herb", quantity = 20},
				{name = "Green Herb", quantity = 20},
				{name = "Blue Herb", quantity = 20},
                {name = "Refined Fiber", quantity = 10}
            }
        },
    },
    quest = {},
	purchase = {},
    drops = {},
    stats = {
        {name = "line 1", stat = "+0 - 5 STR"},
		{name = "line 2", stat = "+0 - 5 DEX"},
		{name = "line 3", stat = "+0 - 5 INT"},
		{name = "line 4", stat = "+0 - 5 SPR"},
		{name = "line 5", stat = "+0 - 5 CON"},
		{name = "line 6", stat = "+0 - 5 LUK"},
        {name = "line 7", stat = "+0 - 12% Speed"},
        {name = "line 8", stat = "+0 - 5% Jump"},
        {name = "line 9", stat = "+2 - 12 Defense"}
    },
    slots = 5,
    echoes = {
        {quantity = 0, chance = "70%"},
        {quantity = 1, chance = "21%"},
        {quantity = 2, chance = "8.1%"},
        {quantity = 3, chance = "0.63%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Wooden Mask"] = {
    name = "Wooden Mask",
    image = "Wooden Mask.png",
    caption = "Hide your face, good for someone with social anxiety.",
    equipmentType = "Face Accessory",
    armorType = "",
    level = 15,
    tier = "Unique",
    crafting = {
        {
            name = "Wooden Mask",
            craftingType = "general",
            craftingLevel = 0,
            resources = {
                {name = "Wood", quantity = 100},
				{name = "Red Shard", quantity = 10}
            }
        },
    },
    quest = {},
	purchase = {},
    drops = {},
    stats = {
        {name = "line 1", stat = "+3 - 7 CON"},
        {name = "line 2", stat = "+8 - 18% Speed"},
        {name = "line 3", stat = "+5 - 16 Defense"}
    },
    slots = 5,
    echoes = {
        {quantity = 0, chance = "70%"},
        {quantity = 1, chance = "21%"},
        {quantity = 2, chance = "8.1%"},
        {quantity = 3, chance = "0.63%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Cross Earrings"] = {
    name = "Cross Earrings",
    image = "Cross Earrings.png",
    caption = "A tiny, intricate emblem of faith.",
    equipmentType = "Face Accessory",
    armorType = "",
    level = 25,
    tier = "Unique",
    crafting = {
        {
            name = "Cross Earrings",
            craftingType = "general",
            craftingLevel = 0,
            resources = {
                {name = "Blue Crystal", quantity = 6},
				{name = "Yellow Crystal", quantity = 3}
            }
        },
    },
    quest = {},
	purchase = {},
    drops = {},
    stats = {
        {name = "line 1", stat = "+2 - 8 SPR"},
        {name = "line 2", stat = "+1 - 5 CON"},
        {name = "line 3", stat = "+9 - 15% Elemental Chance"}
    },
    slots = 5,
    echoes = {
        {quantity = 0, chance = "71%"},
        {quantity = 1, chance = "20%"},
        {quantity = 2, chance = "7.6%"},
        {quantity = 3, chance = "0.59%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Goggles"] = {
    name = "Goggles",
    image = "Goggles.png",
    caption = "Useful for all situations, even if the world ends!",
    equipmentType = "Face Accessory",
    armorType = "",
    level = 35,
    tier = "Unique",
    crafting = {},
    quest = {},
	purchase = {
        {
            name = "Gevil",
            purchasePrice = "100,000 SC",
            sellPrice = "800 SC"
        },
    },
    drops = {},
    stats = {
        {name = "line 1", stat = "+5 - 14 Defense"},
        {name = "line 2", stat = "+6 - 12 Crit Rate"},
        {name = "line 3", stat = "+3 - 10% Skill Range"}
    },
    slots = 5,
    echoes = {
        {quantity = 0, chance = "69%"},
        {quantity = 1, chance = "21%"},
        {quantity = 2, chance = "8.3%"},
        {quantity = 3, chance = "0.65%"}
    },
    tradable = "Yes",
    craftable = "No"
}

data["Angry Face"] = {
    name = "Angry Face",
    image = "Angry Face.png",
    caption = "Makes you look like you're angry... unless you're actually angry?",
    equipmentType = "Face Accessory",
    armorType = "",
    level = 30,
    tier = "Unique",
    crafting = {},
    quest = {},
	purchase = {
        {
            name = "Gevil",
            purchasePrice = "750,000 SC",
            sellPrice = "800 SC"
        },
    },
    drops = {},
    stats = {
        {name = "line 1", stat = "+6 - 12% Global Damage"},
        {name = "line 2", stat = "+3 - 5 Global Attack SPD"}
    },
    slots = 5,
    echoes = {
        {quantity = 0, chance = "69%"},
        {quantity = 1, chance = "21%"},
        {quantity = 2, chance = "8.3%"},
        {quantity = 3, chance = "0.65%"}
    },
    tradable = "Yes",
    craftable = "No"
}
	--END OF FACE ACCESSORIES
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL CAPES
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Simple Cape"] = {
    name = "Simple Cape",
    image = "Simple Cape.png",
    caption = "A simple cape worn on your back.",
    equipmentType = "Cape",
    armorType = "",
    level = 0,
    tier = "Unique",
    crafting = {},
    quest = {},
	purchase = {},
    drops = {},
    stats = {},
    slots = 0,
    echoes = { },
    tradable = "No",
    craftable = "No"
}
	--END OF CAPES
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL BACKPACKS
-------------------------------------------------------------------------------------------------------------------------------------------------
	--END OF BACKPACKS
-------------------------------------------------------------------------------------------------------------------------------------------------

    --ALL RINGS
-------------------------------------------------------------------------------------------------------------------------------------------------
data["Stone Ring"] = {
    name = "Stone Ring",
    image = "Stone Ring.png",
    caption = "Ring made of stone.",
    equipmentType = "Accessory",
    armorType = "",
    level = 1,
    tier = "Stone",
    crafting = {
        {
            name = "Stone Ring",
            craftingType = "Jeweler",
            craftingLevel = 1,
            resources = {
                {name = "Stone", quantity = 10},
                {name = "Dull Life Essence", quantity = 1},
                {name = "Dull Raging Essence", quantity = 1},
                {name = "Dull Historic Essence", quantity = 1}
            }
        },
    },
    quest = {},
	purchase = {
		{name = "Gevil", purchasePrice = "2,500 SC", sellPrice = ""}
	},
    drops = {
    	{name = "Slime", chance = "0.04%"},
    	{name = "Slip", chance = "0.21%"},
    	},
    stats = {
        rolls = 1,
        options = {
            {stat = "+2 Defense", chance = "15%"},
            {stat = "+1 - 3% Skill Range", chance = "0.99%"},
            {stat = "+3 - 9% Speed", chance = "9.9%"},
            {stat = "+1 - 3% Jump", chance = "9.9%"},
            {stat = "+1 - 3% Crit Rate", chance = "7.4%"},
            {stat = "+3 - 5% Crit Damage", chance = "7.4%"},
            {stat = "+1 - 3% Elemental Chance", chance = "7.4%"},
            {stat = "+3 - 5% Elemental Potency", chance = "7.4%"},
            {stat = "+5 - 23 Max HP", chance = "9.9%"},
            {stat = "+1 - 3 Max MP", chance = "9.9%"},
            {stat = "+1 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+1 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+2 - 3% Echoes Find", chance = "2.5%"},
            {stat = "+1 - 3% Soul Crystal Find", chance = "2.5%"},
            {stat = "+1 - 3% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 1,
    echoes = {
        {quantity = 0, chance = "57%"},
        {quantity = 1, chance = "27%"},
        {quantity = 2, chance = "14%"},
        {quantity = 3, chance = "1.2%"},
        {quantity = 4, chance = "0.54%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Copper Ring"] = {
    name = "Copper Ring",
    image = "Copper Ring.png",
    caption = "A simple ring forged from copper.",
    equipmentType = "Accessory",
    armorType = "",
    level = 6,
    tier = "Copper",
    crafting = {
        {
            name = "Copper Ring",
            craftingType = "Jeweler",
            craftingLevel = 6,
            resources = {
                {name = "Copper Rod", quantity = 3},
                {name = "Dull Life Essence", quantity = 2},
                {name = "Dull Raging Essence", quantity = 2},
                {name = "Dull Historic Essence", quantity = 2}
            }
        },
    },
    quest = {},
	purchase = {
		{name = "Gevil", purchasePrice = "7,000 SC", sellPrice = ""}
	},
    drops = {
    	{name = "Slime", chance = "0.04%"},
    	{name = "Bubble Spirit", chance = "0.05%"},
    },
    stats = {
        rolls = 1,
        options = {
            {stat = "+2 - 5 Defense", chance = "15%"},
            {stat = "+2 - 3% Skill Range", chance = "0.99%"},
            {stat = "+3 - 9% Speed", chance = "9.9%"},
            {stat = "+1 - 3% Jump", chance = "9.9%"},
            {stat = "+2 - 3% Crit Rate", chance = "7.4%"},
            {stat = "+4 - 7% Crit Damage", chance = "7.4%"},
            {stat = "+2 - 3% Elemental Chance", chance = "7.4%"},
            {stat = "+4 - 7% Elemental Potency", chance = "7.4%"},
            {stat = "+12 - 28 Max HP", chance = "9.9%"},
            {stat = "+2 - 4 Max MP", chance = "9.9%"},
            {stat = "+1 - 2 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+1 - 2 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+3 - 5% Echoes Find", chance = "2.5%"},
            {stat = "+2 - 4% Soul Crystal Find", chance = "2.5%"},
            {stat = "+2 - 4% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 2,
    echoes = {
        {quantity = 0, chance = "59%"},
        {quantity = 1, chance = "27%"},
        {quantity = 2, chance = "13%"},
        {quantity = 3, chance = "1.1%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Quartz Ring"] = {
    name = "Quartz Ring",
    image = "Quartz Ring.png",
    caption = "A crystal ring with subtle clarity.",
    equipmentType = "Accessory",
    armorType = "",
    level = 12,
    tier = "Quartz",
    crafting = {
        {
            name = "Quartz Ring",
            craftingType = "Jeweler",
            craftingLevel = 12,
            resources = {
                {name = "Refined Quartz Rod", quantity = 4},
                {name = "Dull Life Essence", quantity = 3},
                {name = "Dull Raging Essence", quantity = 3},
                {name = "Dull Historic Essence", quantity = 3}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Black Cloudsheep", chance = "0.83%"},
    },
    stats = {
        rolls = 1,
        options = {
            {stat = "+3 - 7 Defense", chance = "15%"},
            {stat = "+3 - 5% Skill Range", chance = "0.99%"},
            {stat = "+6 - 12% Speed", chance = "9.9%"},
            {stat = "+2 - 5% Jump", chance = "9.9%"},
            {stat = "+3 - 5% Crit Rate", chance = "7.4%"},
            {stat = "+7 - 9% Crit Damage", chance = "7.4%"},
            {stat = "+3 - 5% Elemental Chance", chance = "7.4%"},
            {stat = "+7 - 9% Elemental Potency", chance = "7.4%"},
            {stat = "+20 - 37 Max HP", chance = "9.9%"},
            {stat = "+4 - 7 Max MP", chance = "9.9%"},
            {stat = "+1 - 2 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+1 - 2 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+5 - 8% Echoes Find", chance = "2.5%"},
            {stat = "+4 - 5% Soul Crystal Find", chance = "2.5%"},
            {stat = "+4 - 6% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 3,
    echoes = {
        {quantity = 0, chance = "60%"},
        {quantity = 1, chance = "26%"},
        {quantity = 2, chance = "12%"},
        {quantity = 3, chance = "1.0%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ring of Light"] = {
    name = "Ring of Light",
    image = "Ring of Light.png",
    caption = "Wearing it will light up the area around you.",
    equipmentType = "Accessory",
    armorType = "",
    level = 20,
    tier = "Unique",
    crafting = {
        {
            name = "Ring of Light",
            craftingType = "Jeweler",
            craftingLevel = 5,
            resources = {
                {name = "Yellow Shard", quantity = 20},
                {name = "Firefly", quantity = 5}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Squishling", chance = "0.05%"},
    },
    stats = {
            {name = "line 1", Stat = "+0 - 1 INT"}
    },
    slots = 5,
    echoes = {
        {quantity = 0, chance = "58%"},
        {quantity = 1, chance = "27%"},
        {quantity = 2, chance = "13%"},
        {quantity = 3, chance = "1.1%"},
        {quantity = 4, chance = "0.52%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Iron Ring"] = {
    name = "Iron Ring",
    image = "Iron Ring.png",
    caption = "Plain iron ring, simple and sturdy.",
    equipmentType = "Accessory",
    armorType = "",
    level = 18,
    tier = "Iron",
    crafting = {
        {
            name = "Iron Ring",
            craftingType = "Jeweler",
            craftingLevel = 18,
            resources = {
                {name = "Iron Rod", quantity = 5},
                {name = "Dull Life Essence", quantity = 5},
                {name = "Dull Raging Essence", quantity = 5},
                {name = "Dull Historic Essence", quantity = 5}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Black Cloudsheep", chance = "0.05%"},
    },
    stats = {
        rolls = 1,
        options = {
            {stat = "+5 - 9 Defense", chance = "15%"},
            {stat = "+5 - 6% Skill Range", chance = "0.99%"},
            {stat = "+9 - 15% Speed", chance = "9.9%"},
            {stat = "+4 - 6% Jump", chance = "9.9%"},
            {stat = "+5 - 6% Crit Rate", chance = "7.4%"},
            {stat = "+9 - 12% Crit Damage", chance = "7.4%"},
            {stat = "+5 - 6% Elemental Chance", chance = "7.4%"},
            {stat = "+9 - 12% Elemental Potency", chance = "7.4%"},
            {stat = "+22 - 44 Max HP", chance = "9.9%"},
            {stat = "+6 - 8 Max MP", chance = "9.9%"},
            {stat = "+3 - 4 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+1 - 3 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+7 - 10% Echoes Find", chance = "2.5%"},
            {stat = "+5 - 6% Soul Crystal Find", chance = "2.5%"},
            {stat = "+5 - 7% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 3,
    echoes = {
        {quantity = 0, chance = "61%"},
        {quantity = 1, chance = "25%"},
        {quantity = 2, chance = "12%"},
        {quantity = 3, chance = "1.00%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Petrified Ring"] = {
    name = "Petrified Ring",
    image = "Petrified Ring.png",
    caption = "A stone-carved ring, ancient and heavy.",
    equipmentType = "Accessory",
    armorType = "",
    level = 24,
    tier = "Petrified",
    crafting = {
        {
            name = "Petrified Ring",
            craftingType = "Jeweler",
            craftingLevel = 24,
            resources = {
                {name = "Petrified Rod", quantity = 6},
                {name = "Dull Life Essence", quantity = 7},
                {name = "Dull Raging Essence", quantity = 7},
                {name = "Dull Historic Essence", quantity = 7}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Crusher", chance = "0.04%"},
    },
    stats = {
        rolls = 1,
        options = {
            {stat = "+7 - 12 Defense", chance = "15%"},
            {stat = "+6 - 7% Skill Range", chance = "0.99%"},
            {stat = "+12 - 18% Speed", chance = "9.9%"},
            {stat = "+5 - 7% Jump", chance = "9.9%"},
            {stat = "+6 - 7% Crit Rate", chance = "7.4%"},
            {stat = "+12 - 14% Crit Damage", chance = "7.4%"},
            {stat = "+6 - 7% Elemental Chance", chance = "7.4%"},
            {stat = "+12 - 14% Elemental Potency", chance = "7.4%"},
            {stat = "+27 - 53 Max HP", chance = "9.9%"},
            {stat = "+8 - 10 Max MP", chance = "9.9%"},
            {stat = "+3 - 4 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+3 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+8 - 12% Echoes Find", chance = "2.5%"},
            {stat = "+6 - 7% Soul Crystal Find", chance = "2.5%"},
            {stat = "+5 - 7% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 4,
    echoes = {
        {quantity = 0, chance = "63%"},
        {quantity = 1, chance = "25%"},
        {quantity = 2, chance = "11%"},
        {quantity = 3, chance = "0.93%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Stinky Ring"] = {
    name = "Stinky Ring",
    image = "Stinky Ring.png",
    caption = "An odd ring with a foul scent.",
    equipmentType = "Accessory",
    armorType = "",
    level = 30,
    tier = "Stinky",
    crafting = {
        {
            name = "Stinky Ring",
            craftingType = "Jeweler",
            craftingLevel = 30,
            resources = {
                {name = "Stinky Rod", quantity = 7},
                {name = "Dull Life Essence", quantity = 11},
                {name = "Dull Raging Essence", quantity = 11},
                {name = "Dull Historic Essence", quantity = 11}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Bananek", chance = "0.02%"},
    	{name = "Rainbow Cloudsheep", chance = "0.19%"},
    },
    stats = {
        rolls = 1,
        options = {
            {stat = "+9 - 12 Defense", chance = "15%"},
            {stat = "+7% Skill Range", chance = "0.99%"},
            {stat = "+12 - 18% Speed", chance = "9.9%"},
            {stat = "+5 - 7% Jump", chance = "9.9%"},
            {stat = "+7 - 8% Crit Rate", chance = "7.4%"},
            {stat = "+14 - 17% Crit Damage", chance = "7.4%"},
            {stat = "+7 - 8% Elemental Chance", chance = "7.4%"},
            {stat = "+14 - 17% Elemental Potency", chance = "7.4%"},
            {stat = "+39 - 60 Max HP", chance = "9.9%"},
            {stat = "+10 - 12 Max MP", chance = "9.9%"},
            {stat = "+3 - 5 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+3 - 4 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+10 - 13% Echoes Find", chance = "2.5%"},
            {stat = "+7% Soul Crystal Find", chance = "2.5%"},
            {stat = "+5 - 7% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 4,
    echoes = {
        {quantity = 0, chance = "64%"},
        {quantity = 1, chance = "24%"},
        {quantity = 2, chance = "11%"},
        {quantity = 3, chance = "0.86%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Emerald Ring"] = {
    name = "Emerald Ring",
    image = "Emerald Ring.png",
    caption = "A vivid green gem ring of nature.",
    equipmentType = "Accessory",
    armorType = "",
    level = 36,
    tier = "Emerald",
    crafting = {
        {
            name = "Emerald Ring",
            craftingType = "Jeweler",
            craftingLevel = 36,
            resources = {
                {name = "Malachite Rod", quantity = 7},
                {name = "Emerald", quantity = 2},
                {name = "Life Essence", quantity = 7},
                {name = "Raging Essence", quantity = 7}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Stinky Sheep", chance = "0.02%"},
    },
    stats = {
        rolls = 1,
        options = {
            {stat = "+9 - 16 Defense", chance = "15%"},
            {stat = "+7 - 8% Skill Range", chance = "0.99%"},
            {stat = "+15 - 21% Speed", chance = "9.9%"},
            {stat = "+6 - 8% Jump", chance = "9.9%"},
            {stat = "+8 - 10% Crit Rate", chance = "7.4%"},
            {stat = "+17 - 20% Crit Damage", chance = "7.4%"},
            {stat = "+8 - 10% Elemental Chance", chance = "7.4%"},
            {stat = "+17 - 20% Elemental Potency", chance = "7.4%"},
            {stat = "+44 - 67 Max HP", chance = "9.9%"},
            {stat = "+12 - 14 Max MP", chance = "9.9%"},
            {stat = "+4 - 5 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+3 - 4 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+13 - 14% Echoes Find", chance = "2.5%"},
            {stat = "+7 - 8% Soul Crystal Find", chance = "2.5%"},
            {stat = "+6 - 8% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 4,
    echoes = {
        {quantity = 0, chance = "66%"},
        {quantity = 1, chance = "23%"},
        {quantity = 2, chance = "10.0%"},
        {quantity = 3, chance = "0.80%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Aquamarine Ring"] = {
    name = "Aquamarine Ring",
    image = "Aquamarine Ring.png",
    caption = "Clear blue stone with ocean essence.",
    equipmentType = "Accessory",
    armorType = "",
    level = 42,
    tier = "Aquamarine",
    crafting = {
        {
            name = "Aquamarine Ring",
            craftingType = "Jeweler",
            craftingLevel = 42,
            resources = {
                {name = "Cobalt Rod", quantity = 8},
                {name = "Aquamarine", quantity = 2},
                {name = "Life Essence", quantity = 11},
                {name = "Raging Essence", quantity = 11}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Ferni", chance = "0.02%"},
    },
    stats = {
        rolls = 1,
        options = {
            {stat = "+12 - 16 Defense", chance = "15%"},
            {stat = "+8 - 10% Skill Range", chance = "0.99%"},
            {stat = "+15 - 21% Speed", chance = "9.9%"},
            {stat = "+6 - 8% Jump", chance = "9.9%"},
            {stat = "+10% Crit Rate", chance = "7.4%"},
            {stat = "+20 - 21% Crit Damage", chance = "7.4%"},
            {stat = "+10% Elemental Chance", chance = "7.4%"},
            {stat = "+20 - 21% Elemental Potency", chance = "7.4%"},
            {stat = "+49 - 76 Max HP", chance = "9.9%"},
            {stat = "+14 - 16 Max MP", chance = "9.9%"},
            {stat = "+4 - 6 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+3 - 4 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+14 - 16% Echoes Find", chance = "2.5%"},
            {stat = "+8 - 9% Soul Crystal Find", chance = "2.5%"},
            {stat = "+7 - 9% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 4,
    echoes = {
        {quantity = 0, chance = "67%"},
        {quantity = 1, chance = "23%"},
        {quantity = 2, chance = "9.4%"},
        {quantity = 3, chance = "0.75%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ruby Ring"] = {
    name = "Ruby Ring",
    image = "Ruby Ring.png",
    caption = "A radiant ring with fiery energy.",
    equipmentType = "Accessory",
    armorType = "",
    level = 48,
    tier = "Ruby",
    crafting = {
        {
            name = "Ruby Ring",
            craftingType = "Jeweler",
            craftingLevel = 48,
            resources = {
                {name = "Bismuth Rod", quantity = 9},
                {name = "Ruby", quantity = 3},
                {name = "Life Essence", quantity = 15},
                {name = "Raging Essence", quantity = 15},
                {name = "Historic Essence", quantity = 15},
                {name = "Nurturing Essence", quantity = 15},
                {name = "Metal Essence", quantity = 15},
                {name = "Eternal Essence", quantity = 15},
                {name = "Ghostly Essence", quantity = 15}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Soultree", chance = "0.01%"},
    },
    stats = {
        rolls = 1,
        options = {
            {stat = "+12 - 18 Defense", chance = "15%"},
            {stat = "+10% Skill Range", chance = "0.99%"},
            {stat = "+15 - 21% Speed", chance = "9.9%"},
            {stat = "+6 - 8% Jump", chance = "9.9%"},
            {stat = "+10 - 11% Crit Rate", chance = "7.4%"},
            {stat = "+21 - 22% Crit Damage", chance = "7.4%"},
            {stat = "+10 - 11% Elemental Chance", chance = "7.4%"},
            {stat = "+21 - 22% Elemental Potency", chance = "7.4%"},
            {stat = "+56 - 83 Max HP", chance = "9.9%"},
            {stat = "+16 - 18 Max MP", chance = "9.9%"},
            {stat = "+5 - 6 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+3 - 5 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+14 - 16% Echoes Find", chance = "2.5%"},
            {stat = "+8 - 9% Soul Crystal Find", chance = "2.5%"},
            {stat = "+7 - 9% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 5,
    echoes = {
        {quantity = 0, chance = "68%"},
        {quantity = 1, chance = "22%"},
        {quantity = 2, chance = "8.8%"},
        {quantity = 3, chance = "0.70%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Sapphire Ring"] = {
    name = "Sapphire Ring",
    image = "Sapphire Ring.png",
    caption = "Blue gem ring with calming aura.",
    equipmentType = "Accessory",
    armorType = "",
    level = 54,
    tier = "Sapphire",
    crafting = {
        {
            name = "Sapphire Ring",
            craftingType = "Jeweler",
            craftingLevel = 54,
            resources = {
                {name = "Titanium Rod", quantity = 10},
                {name = "Sapphire", quantity = 3},
                {name = "Life Essence", quantity = 22},
                {name = "Raging Essence", quantity = 22},
                {name = "Historic Essence", quantity = 22},
                {name = "Nurturing Essence", quantity = 22},
                {name = "Metal Essence", quantity = 22},
                {name = "Eternal Essence", quantity = 22},
                {name = "Ghostly Essence", quantity = 22}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Dragonfruit", chance = "0.11%"},
    },
    stats = {
        rolls = 1,
        options = {
            {stat = "+14 - 21 Defense", chance = "15%"},
            {stat = "+10 - 11% Skill Range", chance = "0.99%"},
            {stat = "+15 - 21% Speed", chance = "9.9%"},
            {stat = "+6 - 8% Jump", chance = "9.9%"},
            {stat = "+11 - 12% Crit Rate", chance = "7.4%"},
            {stat = "+22 - 23% Crit Damage", chance = "7.4%"},
            {stat = "+11 - 12% Elemental Chance", chance = "7.4%"},
            {stat = "+22 - 23% Elemental Potency", chance = "7.4%"},
            {stat = "+61 - 90 Max HP", chance = "9.9%"},
            {stat = "+18 - 20 Max MP", chance = "9.9%"},
            {stat = "+5 - 7 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+4 - 5 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+16 - 17% Echoes Find", chance = "2.5%"},
            {stat = "+9 - 10% Soul Crystal Find", chance = "2.5%"},
            {stat = "+8 - 10% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 5,
    echoes = {
        {quantity = 0, chance = "69%"},
        {quantity = 1, chance = "21%"},
        {quantity = 2, chance = "8.3%"},
        {quantity = 3, chance = "0.65%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Amber Ring"] = {
    name = "Amber Ring",
    image = "Amber Ring.png",
    caption = "Glows softly like a fading ember.",
    equipmentType = "Accessory",
    armorType = "",
    level = 60,
    tier = "Amber",
    crafting = {
        {
            name = "Amber Ring",
            craftingType = "Jeweler",
            craftingLevel = 60,
            resources = {
                {name = "Gold Rod", quantity = 11},
                {name = "Amber", quantity = 4},
                {name = "Life Essence", quantity = 31},
                {name = "Raging Essence", quantity = 31},
                {name = "Historic Essence", quantity = 31},
                {name = "Nurturing Essence", quantity = 31},
                {name = "Metal Essence", quantity = 31},
                {name = "Eternal Essence", quantity = 31},
                {name = "Ghostly Essence", quantity = 31}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Slibbit", chance = "<0.00%"},
    	{name = "Dragonfruit", chance = "<0.00%"},
    },
    stats = {
        rolls = 1,
        options = {
            {stat = "+15 - 23 Defense", chance = "15%"},
            {stat = "+11 - 12% Skill Range", chance = "0.99%"},
            {stat = "+18 - 24% Speed", chance = "9.9%"},
            {stat = "+7 - 9% Jump", chance = "9.9%"},
            {stat = "+12% Crit Rate", chance = "7.4%"},
            {stat = "+23 - 25% Crit Damage", chance = "7.4%"},
            {stat = "+12% Elemental Chance", chance = "7.4%"},
            {stat = "+23 - 25% Elemental Potency", chance = "7.4%"},
            {stat = "+66 - 97 Max HP", chance = "9.9%"},
            {stat = "+20 - 21 Max MP", chance = "9.9%"},
            {stat = "+5 - 7 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+3 - 5 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+17 - 18% Echoes Find", chance = "2.5%"},
            {stat = "+10% Soul Crystal Find", chance = "2.5%"},
            {stat = "+8 - 10% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 5,
    echoes = {
        {quantity = 0, chance = "71%"},
        {quantity = 1, chance = "21%"},
        {quantity = 2, chance = "7.9%"},
        {quantity = 3, chance = "0.61%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Dreamcatcher Ring"] = {
    name = "Dreamcatcher Ring",
    image = "Dreamcatcher Ring.png",
    caption = "Wards off nightmares and bad dreams.",
    equipmentType = "Accessory",
    armorType = "",
    level = 66,
    tier = "Dreamcatcher",
    crafting = {
        {
            name = "Dreamcatcher Ring",
            craftingType = "Jeweler",
            craftingLevel = 66,
            resources = {
                {name = "Mithril Rod", quantity = 12},
                {name = "Dreamstone", quantity = 5},
                {name = "Radiant Life Essence", quantity = 22},
                {name = "Radiant Raging Essence", quantity = 22},
                {name = "Radiant Historic Essence", quantity = 22},
                {name = "Radiant Nurturing Essence", quantity = 22},
                {name = "Radiant Metal Essence", quantity = 22},
                {name = "Radiant Eternal Essence", quantity = 22},
                {name = "Radiant Ghostly Essence", quantity = 22}
            }
        },
    },
    craftingUsage = {
        {
            name = "Ring of Chaos",
            craftingType = "Jeweler",
            craftingLevel = 91,
            resources = {
                {name = "Blood Ring", quantity = 1},
                {name = "Eternal Oath", quantity = 1},
                {name = "Star Bounding Ring", quantity = 1},
                {name = "Arcana Ring", quantity = 1},
                {name = "Dreamcatcher Ring", quantity = 1},
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Haowl", chance = "<0.00%"},
    	{name = "Snowball", chance = "<0.00%"},
    },
    stats = {
        rolls = 2,
        options = {
            {stat = "+17 - 25 Defense", chance = "15%"},
            {stat = "+12 - 13% Skill Range", chance = "0.99%"},
            {stat = "+21 - 27% Speed", chance = "9.9%"},
            {stat = "+8 - 10% Jump", chance = "9.9%"},
            {stat = "+12 - 14% Crit Rate", chance = "7.4%"},
            {stat = "+25 - 27% Crit Damage", chance = "7.4%"},
            {stat = "+12 - 14% Elemental Chance", chance = "7.4%"},
            {stat = "+25 - 27% Elemental Potency", chance = "7.4%"},
            {stat = "+71 - 113 Max HP", chance = "9.9%"},
            {stat = "+21 - 25 Max MP", chance = "9.9%"},
            {stat = "+5 - 7 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+4 - 5 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+18 - 19% Echoes Find", chance = "2.5%"},
            {stat = "+10 - 12% Soul Crystal Find", chance = "2.5%"},
            {stat = "+9 - 11% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 6,
    echoes = {
        {quantity = 0, chance = "72%"},
        {quantity = 1, chance = "20%"},
        {quantity = 2, chance = "7.4%"},
        {quantity = 3, chance = "0.57%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Arcana Ring"] = {
    name = "Arcana Ring",
    image = "Arcana Ring.png",
    caption = "A ring infused with arcane power.",
    equipmentType = "Accessory",
    armorType = "",
    level = 72,
    tier = "Arcane",
    crafting = {
        {
            name = "Arcana Ring",
            craftingType = "Jeweler",
            craftingLevel = 72,
            resources = {
                {name = "Arcane Rod", quantity = 12},
                {name = "Ocean Heart", quantity = 5},
                {name = "Radiant Life Essence", quantity = 35},
                {name = "Radiant Raging Essence", quantity = 35},
                {name = "Radiant Historic Essence", quantity = 35},
                {name = "Radiant Nurturing Essence", quantity = 35},
                {name = "Radiant Metal Essence", quantity = 35},
                {name = "Radiant Eternal Essence", quantity = 35},
                {name = "Radiant Ghostly Essence", quantity = 35}
            }
        },
    },
    craftingUsage = {
        {
            name = "Ring of Chaos",
            craftingType = "Jeweler",
            craftingLevel = 91,
            resources = {
                {name = "Blood Ring", quantity = 1},
                {name = "Eternal Oath", quantity = 1},
                {name = "Star Bounding Ring", quantity = 1},
                {name = "Arcana Ring", quantity = 1},
                {name = "Dreamcatcher Ring", quantity = 1},
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Rokkak", chance = "<0.00%"},
    	{name = "Cat Golem", chance = "<0.00%"},
    },
    stats = {
        rolls = 2,
        options = {
            {stat = "+19 - 28 Defense", chance = "15%"},
            {stat = "+13 - 14% Skill Range", chance = "0.99%"},
            {stat = "+24 - 30% Speed", chance = "9.9%"},
            {stat = "+9 - 11% Jump", chance = "9.9%"},
            {stat = "+14% Crit Rate", chance = "7.4%"},
            {stat = "+27 - 29% Crit Damage", chance = "7.4%"},
            {stat = "+14% Elemental Chance", chance = "7.4%"},
            {stat = "+27 - 29% Elemental Potency", chance = "7.4%"},
            {stat = "+83 - 120 Max HP", chance = "9.9%"},
            {stat = "+25 - 27 Max MP", chance = "9.9%"},
            {stat = "+5 - 8 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+4 - 6 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+18 - 19% Echoes Find", chance = "2.5%"},
            {stat = "+12 - 13% Soul Crystal Find", chance = "2.5%"},
            {stat = "+9 - 11% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 6,
    echoes = {
        {quantity = 0, chance = "73%"},
        {quantity = 1, chance = "19%"},
        {quantity = 2, chance = "7.0%"},
        {quantity = 3, chance = "0.53%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Star Bounding Ring"] = {
    name = "Star Bounding Ring",
    image = "Star Bounding Ring.png",
    caption = "Shines with the energy of stars.",
    equipmentType = "Accessory",
    armorType = "",
    level = 78,
    tier = "",
    crafting = {
        {
            name = "Star Bounding Ring",
            craftingType = "Jeweler",
            craftingLevel = 78,
            resources = {
                {name = "Star Rod", quantity = 12},
                {name = "Black Diamond Gem", quantity = 5},
                {name = "Radiant Life Essence", quantity = 57},
                {name = "Radiant Raging Essence", quantity = 57},
                {name = "Radiant Historic Essence", quantity = 57},
                {name = "Radiant Nurturing Essence", quantity = 57},
                {name = "Radiant Metal Essence", quantity = 57},
                {name = "Radiant Eternal Essence", quantity = 57},
                {name = "Radiant Ghostly Essence", quantity = 57}
            }
        },
    },
    craftingUsage = {
        {
            name = "Ring of Chaos",
            craftingType = "Jeweler",
            craftingLevel = 91,
            resources = {
                {name = "Blood Ring", quantity = 1},
                {name = "Eternal Oath", quantity = 1},
                {name = "Star Bounding Ring", quantity = 1},
                {name = "Arcana Ring", quantity = 1},
                {name = "Dreamcatcher Ring", quantity = 1},
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Cat Guardian", chance = "<0.00%"},
    },
    stats = {
        rolls = 2,
        options = {
            {stat = "+20 - 29 Defense", chance = "15%"},
            {stat = "+14% Skill Range", chance = "0.99%"},
            {stat = "+27 - 33% Speed", chance = "9.9%"},
            {stat = "+10 - 12% Jump", chance = "9.9%"},
            {stat = "+14 - 15% Crit Rate", chance = "7.4%"},
            {stat = "+29 - 30% Crit Damage", chance = "7.4%"},
            {stat = "+14 - 15% Elemental Chance", chance = "7.4%"},
            {stat = "+29 - 30% Elemental Potency", chance = "7.4%"},
            {stat = "+88 - 126 Max HP", chance = "9.9%"},
            {stat = "+25 - 27 Max MP", chance = "9.9%"},
            {stat = "+7 - 8 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+4 - 6 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+19 - 20% Echoes Find", chance = "2.5%"},
            {stat = "+13 - 14% Soul Crystal Find", chance = "2.5%"},
            {stat = "+9 - 11% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 6,
    echoes = {
        {quantity = 0, chance = "74%"},
        {quantity = 1, chance = "19%"},
        {quantity = 2, chance = "6.7%"},
        {quantity = 3, chance = "0.50%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Eternal Oath"] = {
    name = "Eternal Oath",
    image = "Eternal Oath.png",
    caption = "A timeless ring symbolizing eternal vows.",
    equipmentType = "Accessory",
    armorType = "",
    level = 84,
    tier = "Eternal",
    crafting = {
        {
            name = "Eternal Oath",
            craftingType = "Jeweler",
            craftingLevel = 84,
            resources = {
                {name = "Eternal Rod", quantity = 12},
                {name = "Moonstone", quantity = 5},
            }
        },
    },
    craftingUsage = {
        {
            name = "Ring of Chaos",
            craftingType = "Jeweler",
            craftingLevel = 91,
            resources = {
                {name = "Blood Ring", quantity = 1},
                {name = "Eternal Oath", quantity = 1},
                {name = "Star Bounding Ring", quantity = 1},
                {name = "Arcana Ring", quantity = 1},
                {name = "Dreamcatcher Ring", quantity = 1},
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Soulfish", chance = "<0.00%"},
    	{name = "Fernek", chance = "<0.00%"},
    },
    stats = {
        rolls = 2,
        options = {
            {stat = "+20 - 32 Defense", chance = "15%"},
            {stat = "+14 - 15% Skill Range", chance = "0.99%"},
            {stat = "+27 - 33% Speed", chance = "9.9%"},
            {stat = "+10 - 12% Jump", chance = "9.9%"},
            {stat = "+15 - 16% Crit Rate", chance = "7.4%"},
            {stat = "+30 - 31% Crit Damage", chance = "7.4%"},
            {stat = "+15 - 16% Elemental Chance", chance = "7.4%"},
            {stat = "+30 - 31% Elemental Potency", chance = "7.4%"},
            {stat = "+94 - 136 Max HP", chance = "9.9%"},
            {stat = "+27 - 29 Max MP", chance = "9.9%"},
            {stat = "+7 - 9 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+5 - 6 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+20% Echoes Find", chance = "2.5%"},
            {stat = "+14% Soul Crystal Find", chance = "2.5%"},
            {stat = "+9 - 11% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 6,
    echoes = {
        {quantity = 0, chance = "75%"},
        {quantity = 1, chance = "18%"},
        {quantity = 2, chance = "6.3%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Blood Ring"] = {
    name = "Blood Ring",
    image = "Blood Ring.png",
    caption = "A crimson ring that pulses faintly.",
    equipmentType = "Accessory",
    armorType = "",
    level = 90,
    tier = "Blood",
    crafting = {
        {
            name = "Blood Ring",
            craftingType = "Jeweler",
            craftingLevel = 90,
            resources = {
                {name = "Obsidium Rod", quantity = 12},
                {name = "Bloodstone", quantity = 5},
                {name = "Radiant Life Essence", quantity = 85},
                {name = "Radiant Raging Essence", quantity = 85},
                {name = "Radiant Historic Essence", quantity = 85},
                {name = "Radiant Nurturing Essence", quantity = 85},
                {name = "Radiant Metal Essence", quantity = 85},
                {name = "Radiant Eternal Essence", quantity = 85},
                {name = "Radiant Ghostly Essence", quantity = 85}
            }
        },
    },
    craftingUsage = {
        {
            name = "Ring of Chaos",
            craftingType = "Jeweler",
            craftingLevel = 91,
            resources = {
                {name = "Blood Ring", quantity = 1},
                {name = "Eternal Oath", quantity = 1},
                {name = "Star Bounding Ring", quantity = 1},
                {name = "Arcana Ring", quantity = 1},
                {name = "Dreamcatcher Ring", quantity = 1},
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {
    	{name = "Haunted Flame", chance = "<0.00%"},
    	{name = "Blaze", chance = "<0.00%"},
    },
    stats = {
        rolls = 2,
        options = {
            {stat = "+24 - 37 Defense", chance = "15%"},
            {stat = "+15 - 17% Skill Range", chance = "0.99%"},
            {stat = "+30 - 36% Speed", chance = "9.9%"},
            {stat = "+11 - 14% Jump", chance = "9.9%"},
            {stat = "+16 - 18% Crit Rate", chance = "7.4%"},
            {stat = "+31 - 35% Crit Damage", chance = "7.4%"},
            {stat = "+16 - 18% Elemental Chance", chance = "7.4%"},
            {stat = "+31 - 35% Elemental Potency", chance = "7.4%"},
            {stat = "+100 - 150 Max HP", chance = "9.9%"},
            {stat = "+29 - 33 Max MP", chance = "9.9%"},
            {stat = "+7 - 11 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+5 - 8 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+20 - 23% Echoes Find", chance = "2.5%"},
            {stat = "+14 - 17% Soul Crystal Find", chance = "2.5%"},
            {stat = "+10 - 14% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 7,
    echoes = {
        {quantity = 0, chance = "76%"},
        {quantity = 1, chance = "18%"},
        {quantity = 2, chance = "6.0%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Ring of Chaos"] = {
    name = "Ring of Chaos",
    image = "Ring of Chaos.png",
    caption = "It's quite the wild card.",
    equipmentType = "Accessory",
    armorType = "",
    level = 90,
    tier = "Chaos",
    crafting = {
        {
            name = "Ring of Chaos",
            craftingType = "Jeweler",
            craftingLevel = 91,
            resources = {
                {name = "Blood Ring", quantity = 1},
                {name = "Eternal Oath", quantity = 1},
                {name = "Star Bounding Ring", quantity = 1},
                {name = "Arcana Ring", quantity = 1},
                {name = "Dreamcatcher Ring", quantity = 1}
            }
        },
    },
    craftingUsage = {
        {
            name = "Reaper Ring",
            craftingType = "Jeweler",
            craftingLevel = 94,
            resources = {
                {name = "Reaper Aura", quantity = 1},
                {name = "Ring of Chaos", quantity = 1},
                {name = "Darkshard", quantity = 30},
                {name = "Dark Essence", quantity = 25},
                {name = "Obsidium Ingot", quantity = 100},
                {name = "Obsidium Rod", quantity = 100},
                {name = "Obsidium Plate", quantity = 100},
                {name = "Transcendent Soul", quantity = 5},
                {name = "Elemental Shard", quantity = 5}
            }
        },
    },    
    quest = {},
    purchase = {},
    drops = {},
    stats = {
        rolls = 3,
        options = {
            {stat = "+24 - 37 Defense", chance = "15%"},
            {stat = "+15 - 17% Skill Range", chance = "0.99%"},
            {stat = "+30 - 36% Speed", chance = "9.9%"},
            {stat = "+11 - 14% Jump", chance = "9.9%"},
            {stat = "+16 - 18% Crit Rate", chance = "7.4%"},
            {stat = "+31 - 35% Crit Damage", chance = "7.4%"},
            {stat = "+16 - 18% Elemental Chance", chance = "7.4%"},
            {stat = "+31 - 35% Elemental Potency", chance = "7.4%"},
            {stat = "+100 - 150 Max HP", chance = "9.9%"},
            {stat = "+29 - 33 Max MP", chance = "9.9%"},
            {stat = "+7 - 11 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+5 - 8 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+20 - 23% Echoes Find", chance = "2.5%"},
            {stat = "+14 - 17% Soul Crystal Find", chance = "2.5%"},
            {stat = "+10 - 14% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 7,
    echoes = {
        {quantity = 0, chance = "76%"},
        {quantity = 1, chance = "18%"},
        {quantity = 2, chance = "6.0%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}

data["Reaper Ring"] = {
    name = "Reaper Ring",
    image = "Reaper Ring.png",
    caption = "A powerful ring, filled with darkness.",
    equipmentType = "Accessory",
    armorType = "",
    level = 95,
    tier = "Reaper",
    crafting = {
        {
            name = "Reaper Ring",
            craftingType = "Jeweler",
            craftingLevel = 94,
            resources = {
                {name = "Reaper Aura", quantity = 1},
                {name = "Ring of Chaos", quantity = 1},
                {name = "Darkshard", quantity = 30},
                {name = "Dark Essence", quantity = 25},
                {name = "Obsidium Ingot", quantity = 100},
                {name = "Obsidium Rod", quantity = 100},
                {name = "Obsidium Plate", quantity = 100},
                {name = "Transcendent Soul", quantity = 5},
                {name = "Elemental Shard", quantity = 5}
            }
        },
    },
    quest = {},
    purchase = {},
    drops = {},
    stats = {
        rolls = 4,
        options = {
            {stat = "+24 - 37 Defense", chance = "15%"},
            {stat = "+15 - 17% Skill Range", chance = "0.99%"},
            {stat = "+30 - 36% Speed", chance = "9.9%"},
            {stat = "+11 - 14% Jump", chance = "9.9%"},
            {stat = "+16 - 18% Crit Rate", chance = "7.4%"},
            {stat = "+31 - 35% Crit Damage", chance = "7.4%"},
            {stat = "+16 - 18% Elemental Chance", chance = "7.4%"},
            {stat = "+31 - 35% Elemental Potency", chance = "7.4%"},
            {stat = "+100 - 150 Max HP", chance = "9.9%"},
            {stat = "+29 - 33 Max MP", chance = "9.9%"},
            {stat = "+7 - 11 HP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+5 - 8 MP Regeneration Per Tick", chance = "2.5%"},
            {stat = "+20 - 23% Echoes Find", chance = "2.5%"},
            {stat = "+14 - 17% Soul Crystal Find", chance = "2.5%"},
            {stat = "+10 - 14% Damage Balance", chance = "2.5%"},
            {stat = "+2 - 10 Accuracy", chance = "2.5%"}
        }
    },
    slots = 7,
    echoes = {
        {quantity = 0, chance = "76%"},
        {quantity = 1, chance = "18%"},
        {quantity = 2, chance = "5.9%"}
    },
    tradable = "Yes",
    craftable = "Yes"
}
    --END OF RINGS
-------------------------------------------------------------------------------------------------------------------------------------------------

	--ALL AURAS
-------------------------------------------------------------------------------------------------------------------------------------------------
	--END OF AURAS
-------------------------------------------------------------------------------------------------------------------------------------------------

--END OF ACCESSORIES
-------------------------------------------------------------------------------------------------------------------------------------------------

return data