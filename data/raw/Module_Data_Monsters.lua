local data = {}

-- Data not available
data["Target Dummy"] = {
    name = "Target Dummy",
    image = "Target Dummy.png",
    maps = {},
    element = {},
    level = 1,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = 0,
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Target Dummy", quantity = 200},
            }
        },
    },
}

data["Slime"] = {
    name = "Slime",
    image1 = "Slime.png",
    image2 = "Christmas Slime.png",
    caption1 = "Just a lil guy",
    caption2 = "Just a lil guy with holly",
    maps = {
        "Outskirts Flower Field",
        "Outskirts Northwest",
        "Outskirts East",
        "Outskirts West",
        "Onward!",
        "Secret Garden",
        "Sheep Beach",
    },
    element = {
        {name = "Normal"}
    },
    level = 1,
    exp = 6,
    hp = 20,
    atk = 8,
    def = 0,
    mp = 2,
    spd = 2,
    drops = {
    	{name = "Dull Life Essence", chance = "1.25%"},
        {name = "Soul Crystal", chance = "60%", quantity = "0-2"},
        {name = "Bowtie", chance = "3.03%"},
        {name = "Banana", chance = "0.6%"},
        {name = "Green Herb", chance = "0.4%"},
        {name = "Red Herb", chance = "0.4%"},
        {name = "Copper Ring", chance = "0.04%"},
        {name = "Stone Ring", chance = "0.04%"},
        {name = "Green Hunter Pants", chance = "0.04%"},
        {name = "Green Priest Bottom", chance = "0.04%"},
        {name = "Green Hunter Cap", chance = "0.04%"},
        {name = "Green Priest Hood", chance = "0.04%"},
        {name = "Green Scholar Hat", chance = "0.04%"},
        {name = "Green Hunter Shoes", chance = "0.04%"},
        {name = "Green Priest Shoes", chance = "0.04%"},
        {name = "Green Hunter Robe", chance = "0.04%"},
        {name = "Green Scholar Robe", chance = "0.04%"},
        {name = "Stone Chest Plate", chance = "0.04%"},
        {name = "Faded Innocence", chance = "0.04%"},
        {name = "Stone Javelin", chance = "0.04%"},
        {name = "Stone Shield", chance = "0.04%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Slime", quantity = 200},
            }
        },
    },
}

data["Bubble Spirit"] = {
    name = "Bubble Spirit",
    image1 = "Bubble Spirit.png",
    image2 = "Christmas Bubble Spirit.png",
    maps = {
        "Outskirts Flower Field",
        "Outskirts Northeast",
        "Outskirts Northwest",
        "Secret Garden",
        "Cave 1",
        "Cave 2",
        "Cave 3",
        "Sheep Beach",
    },
    element = {
        {name = "Water"}
    },
    level = 3,
    exp = "",
    hp = 43,
    atk = 9,
    def = 1,
    mp = 5,
    spd = 2,
    drops = {
    	{name = "Dull Life Essence", chance = "Unknown"},
        {name = "Copper Ring", chance = "0.05%"},
        {name = "Green Hunter Pants", chance = "0.05%"},
        {name = "Green Priest Bottom", chance = "0.05%"},
        {name = "Green Scholar Pants", chance = "0.05%"},
        {name = "Green Hunter Cap", chance = "0.05%"},
        {name = "Green Priest Hood", chance = "0.05%"},
        {name = "Green Hunter Shoes", chance = "0.05%"},
        {name = "Green Priest Shoes", chance = "0.05%"},
        {name = "Stone Armored Boots", chance = "0.05%"},
        {name = "Green Hunter Robe", chance = "0.05%"},
        {name = "Green Priest Robe", chance = "0.05%"},
        {name = "Faded Innocence", chance = "0.05%"},
        {name = "Kunai", chance = "0.05%"},
        {name = "Stone Holy Arrow", chance = "0.05%"},
        {name = "Stone Orb", chance = "0.05%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Bubble Spirit", quantity = 200},
            }
        },
    },
}

data["Jel"] = {
    name = "Jel",
    image1 = "Jel.png",
    image2 = "Christmas Jel.png",
    maps = {
        "Outskirts Flower Field",
        "Outskirts Flower Field 2",
        "Outskirts North",
        "Outskirts Northeast",
        "Outskirts Northwest",
        "Outskirts South",
        "Outskirts Southeast",
        "Outskirts Southwest",
        "Outskirts East",
        "Secret Garden",
        "Cave 3",
        "Cave 2",
        "Cave 1",
    },
    element = {
        {name = "Normal"}
    },
    level = 5,
    exp = 20,
    hp = 83,
    atk = 11,
    def = 3,
    mp = 9,
    spd = 2,
    drops = {
    	{name = "Dull Life Essence", chance = "Unknown"},
        {name = "Iron Ore", chance = "0.5%"},
        {name = "Green Scholar Pants", chance = "0.13%"},
        {name = "Stone Leg Plate", chance = "0.13%"},
        {name = "Green Scholar Shoes", chance = "0.13%"},
        {name = "Stone Focus", chance = "0.13%"},
        {name = "Stone Sword", chance = "0.13%"},
        {name = "Copper Leg Plate", chance = "0.04%"},
        {name = "Copper Helmet", chance = "0.04%"},
        {name = "Cotton Hunter Cap", chance = "0.04%"},
        {name = "Cotton Scholar Hat", chance = "0.04%"},
        {name = "Cotton Hunter Shoes", chance = "0.04%"},
        {name = "Copper Bow", chance = "0.04%"},
        {name = "Copper Focus", chance = "0.04%"},
        {name = "Copper Javelin", chance = "0.04%"},
        {name = "Copper Shield", chance = "0.04%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Jel", quantity = 200},
            }
        },
    },
}

data["Flows"] = {
    name = "Flows",
    image = "Flows.png",
    maps = {
        "Outskirts Pond",
        "Outskirts Flower Field",
        "Outskirts North",
    },
    element = {
        {name = "Water"}
    },
    level = 6,
    exp = "",
    hp = 118,
    atk = 12,
    def = 3,
    mp = 12,
    spd = 2,
    drops = {
    	{name = "Dull Life Essence", chance = "Unknown"},
        {name = "Green Scholar Hat", chance = "0.17%"},
        {name = "Green Scholar Robe", chance = "0.17%"},
        {name = "Stone Cross", chance = "0.17%"},
        {name = "Stone Kunai", chance = "0.17%"},
        {name = "Stone Spellblade", chance = "0.17%"},
        {name = "Copper Leg Plate", chance = "0.05%"},
        {name = "Copper Helmet", chance = "0.05%"},
        {name = "Cotton Hunter Cap", chance = "0.05%"},
        {name = "Copper Armored Boots", chance = "0.05%"},
        {name = "Cotton Hunter Shoes", chance = "0.05%"},
        {name = "Cotton Priest Shoes", chance = "0.05%"},
        {name = "Copper Chest Plate", chance = "0.05%"},
        {name = "Copper Cross", chance = "0.05%"},
        {name = "Copper Holy Arrow", chance = "0.05%"},
        {name = "Copper Shield", chance = "0.05%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Flows", quantity = 200},
            }
        },
    },
}

data["Pin Pin"] = {
    name = "Pin Pin",
    image = "Pin Pin.png",
    maps = {
        "Outskirts South",
        "Outskirts Southwest",
        "Outskirts Southeast",
        "Outskirts East",
        "Outskirts Northeast",
    },
    element = {
        {name = "Normal"},
        {name = "Fire"}
    },
    level = 7,
    exp = "",
    hp = 161,
    atk = 13,
    def = 5,
    mp = 17,
    spd = 3,
    drops = {
    	{name = "Dull Life Essence", chance = "Unknown"},
        {name = "Dying Sands", chance = "0.5%"},
        {name = "Stone Leg Plate", chance = "0.2%"},
        {name = "Green Scholar Shoes", chance = "0.2%"},
        {name = "Stone Focus", chance = "0.2%"},
        {name = "Stone Sword", chance = "0.2%"},
        {name = "Copper Armored Boots", chance = "0.05%"},
        {name = "Cotton Priest Shoes", chance = "0.05%"},
        {name = "Cotton Hunter Robe", chance = "0.05%"},
        {name = "Copper Bow", chance = "0.05%"},
        {name = "Copper Cross", chance = "0.05%"},
        {name = "Copper Focus", chance = "0.05%"},
        {name = "Copper Holy Arrow", chance = "0.05%"},
        {name = "Copper Kunai", chance = "0.05%"},
        {name = "Copper Orb", chance = "0.05%"},
        {name = "Copper Sword", chance = "0.05%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Pin Pin", quantity = 200},
            }
        },
    },
}

data["Slip"] = {
    name = "Slip",
    image = "Slip.png",
    maps = {
        "Outskirts Pond",
    },
    element = {
        {name = "Normal"},
    },
    level = 8,
    exp = "",
    hp = 237,
    atk = 14,
    def = 3,
    mp = 24,
    spd = 2,
    drops = {
    	{name = "Dull Life Essence", chance = "Unknown"},
        {name = "Stone Ring", chance = "0.21%"},
        {name = "Stone Helmet", chance = "0.21%"},
        {name = "Stone Armored Boots", chance = "0.21%"},
        {name = "Kunai", chance = "0.21%"},
        {name = "Stone Magic Wand", chance = "0.21%"},
        {name = "Book on Head", chance = "0.05%"},
        {name = "Cat Ears", chance = "0.05%"},
        {name = "Santa Hat", chance = "0.05%"},
        {name = "Slime on Head", chance = "0.05%"},
        {name = "Tiara", chance = "0.05%"},
        {name = "Cotton Scholar Shoes", chance = "0.05%"},
        {name = "Cotton Hunter Robe", chance = "0.05%"},
        {name = "Cotton Priest Robe", chance = "0.05%"},
        {name = "Copper Kunai", chance = "0.05%"},
        {name = "Copper Orb", chance = "0.05%"},
        {name = "Copper Sword", chance = "0.05%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Slip", quantity = 200},
            }
        },
    },
}

data["Hopper"] = {
    name = "Hopper",
    image = "Hopper.png",
    maps = {
        "Outskirts South",
        "Outskirts Southeast",
        "Outskirts Southwest",
    },
    element = {
        {name = "Normal"},
    },
    level = 9,
    exp = "",
    hp = 307,
    atk = 15,
    def = 5,
    mp = 31,
    spd = 3,
    drops = {
    	{name = "Dull Life Essence", chance = "Unknown"},
        {name = "Stone Helmet", chance = "0.36%"},
        {name = "Stone Bow", chance = "0.36%"},
        {name = "Stone Magic Wand", chance = "0.36%"},
        {name = "Refined Fiber", chance = "0.26%"},
        {name = "Bush", chance = "0.21%"},
        {name = "Dye", chance = "0.19%"},
        {name = "Cotton Hunter Pants", chance = "0.06%"},
        {name = "Bandana", chance = "0.06%"},
        {name = "Cat Ears", chance = "0.06%"},
        {name = "Cat on Head", chance = "0.06%"},
        {name = "Slime on Head", chance = "0.06%"},
        {name = "Spooky Cat", chance = "0.06%"},
        {name = "Cotton Scholar Shoes", chance = "0.06%"},
        {name = "Cotton Priest Robe", chance = "0.06%"},
        {name = "Copper Javelin", chance = "0.06%"},
        {name = "Copper Magic Wand", chance = "0.06%"},
        {name = "Copper Spellblade", chance = "0.06%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Hopper", quantity = 200},
            }
        },
    },
}

data["Glowsnail"] = {
    name = "Glowsnail",
    image = "Glowsnail.png",
    maps = {
        "Glowsnail Cave",
        "Cave 1",
        "Cave 2",
        "Cave 3",
        "Outskirts Southwest",
    },
    element = {
        {name = "Ghost"},
        {name = "Lightning"},
    },
    level = 10,
    exp = "",
    hp = 443,
    atk = 17,
    def = 6,
    mp = 45,
    spd = 2,
    drops = {
        {name = "Dull Metal Essence", chance = "12.5%"},
        {name = "Yellow Shard", chance = "1.49%"},
        {name = "Stone Bow", chance = "0.37%"},
        {name = "Stone Holy Arrow", chance = "0.37%"},
        {name = "Stone Orb", chance = "0.37%"},
        {name = "Cotton Hunter Pants", chance = "0.06%"},
        {name = "Cotton Scholar Pants", chance = "0.06%"},
        {name = "Bandana", chance = "0.06%"},
        {name = "Book on Head", chance = "0.06%"},
        {name = "Cat on Head", chance = "0.06%"},
        {name = "Cotton Priest Hood", chance = "0.06%"},
        {name = "Santa Hat", chance = "0.06%"},
        {name = "Spooky Cat", chance = "0.06%"},
        {name = "Tiara", chance = "0.06%"},
        {name = "Copper Magic Wand", chance = "0.06%"},
        {name = "Copper Spellblade", chance = "0.06%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Glowsnail", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Frostmite"] = {
    name = "Frostmite",
    image = "Frostmite.png",
    maps = {},
    element = {},
    level = 11,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Frostmite", quantity = 200},
            }
        },
    },
}

data["Cloudsheep"] = {
    name = "Cloudsheep",
    image = "Cloudsheep.png",
    maps = {
        "Beach Hunting Grounds",
        "Plains 1",
        "Plains 2",
        "Sheep Beach",
    },
    element = {
        {name = "Normal"},
    },
    level = 12,
    exp = "",
    hp = 622,
    atk = 20,
    def = 3,
    mp = 63,
    spd = 2,
    drops = {
        {name = "Dull Life Essence", chance = "12.5%"},
        {name = "Stone Cross", chance = "0.39%"},
        {name = "Stone Kunai", chance = "0.39%"},
        {name = "Stone Spelllade", chance = "0.39%"},
        {name = "Cotton Priest Bottom", chance = "0.37%"},
        {name = "Cotton Scholar Hat", chance = "0.37%"},
        {name = "Golden Cloud Piece", chance = "0.2%"},
        {name = "Coconut Hunter Pants", chance = "0.04%"},
        {name = "Coconut Hunter Cap", chance = "0.04%"},
        {name = "Coconut Scholar Hat", chance = "0.04%"},
        {name = "Coconut Hunter Shoes", chance = "0.04%"},
        {name = "Coconut Scholar Shoes", chance = "0.04%"},
        {name = "Quartz Armored Boots", chance = "0.04%"},
        {name = "Coconut Priest Robe", chance = "0.04%"},
        {name = "Quartz Focus", chance = "0.04%"},
        {name = "Quartz Magic Wand", chance = "0.04%"},
        {name = "Yellow Flowers", chance = "0.02%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Cloudsheep", quantity = 200},
            }
        },
    },
}

data["Squishling"] = {
    name = "Squishling",
    image = "Squishling.png",
    maps = {
    	"Plains 2",
    	"Plains 3",
    	"Plains 4",
    },
    element = {
        {name = "Lightning"},
    },
    level = 14,
    exp = "",
    hp = 823,
    atk = 25,
    def = 5,
    mp = 83,
    spd = 3,
    drops = {
        {name = "Dull Nurturing Essence", chance = "17.5%"},
        {name = "Ring of Light", chance = "0.04%"},
        {name = "Coconut Priest Hood", chance = "0.4%"},
        {name = "Pinwheel", chance = "0.04%"},
        {name = "Coconut Hunter Shoes", chance = "0.04%"},
        {name = "Coconut Hunter	Pants", chance = "0.04%"},
        {name = "Coconut Scholar Pants", chance = "0.04%"},
        {name = "Bamboo Hat", chance = "0.04%"},
        {name = "Coconut Priest Robe", chance = "0.04%"},
        {name = "Quartz Bow", chance = "0.04%"},
        {name = "Quartz Holy Arrow", chance = "0.04%"},
        {name = "Quartz Spellblade", chance = "0.04%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Squishling", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Fish"] = {
    name = "Fish",
    image = "Fish.png",
    maps = {},
    element = {},
    level = 15,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Fish", quantity = 200},
            }
        },
    },
}

data["Black Cloudsheep"] = {
    name = "Black Cloudsheep",
    image = "Black Cloudsheep.png",
    maps = {
        "Plains 3",
        "Plains 4",
        "Crecent Cove",
    },
    element = {
        {name = "Lightning"},
    },
    level = 16,
    exp = "",
    hp = 1056,
    atk = 31,
    def = 7,
    mp = 106,
    spd = 2,
    drops = {
        {name = "Dull Raging Essence", chance = "12.5%"},
        {name = "Quartz Ring", chance = "0.83%"},
        {name = "Iron Ring", chance = "0.05%"},
        {name = "Coconut Priest Bottom", chance = "0.05%"},
        {name = "Coconut Scholar Pants", chance = "0.05%"},
        {name = "Bamboo Hat", chance = "0.05%"},
        {name = "Pinwheel", chance = "0.05%"},
        {name = "Coconut Priest Shoes", chance = "0.05%"},
        {name = "Coconut Hunter Robe", chance = "0.05%"},
        {name = "Quartz Chest Plate", chance = "0.05%"},
        {name = "Quartz Holy Arrow", chance = "0.05%"},
        {name = "Quartz Spellblade", chance = "0.05%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Black Cloudsheep", quantity = 200},
            }
        },
    },
}

data["Cursed Slime"] = {
    name = "Cursed Slime",
    image = "Cursed Slime.png",
    maps = {"Glowing Cave"},
    element = {},
    level = 17,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Cursed Slime", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Pimchy"] = {
    name = "Pimchy",
    image = "Pimchy.png",
    maps = {},
    element = {},
    level = 17,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Pimchy", quantity = 200},
            }
        },
    },
}

data["Snapper"] = {
    name = "Snapper",
    image = "Snapper.png",
    maps = {
        "Beach Hunting Grounds",
        "Around the Seashore",
        "Beach 3",
        "Sheep Beach",
    },
    element = {
        {name = "Water"},
    },
    level = 18,
    exp = "",
    hp = 1510,
    atk = 37,
    def = 4,
    mp = 151,
    spd = 2,
    drops = {
        {name = "Dull Eternal Essence", chance = "12.5%"},
        {name = "Lemon", chance = "1.37%"},
        {name = "Quartz Helmet", chance = "0.19%"},
        {name = "Quartz Bow", chance = "0.19%"},
        {name = "Quartz Orb", chance = "0.19%"},
        {name = "Yellow Priest Bottom", chance = "0.04%"},
        {name = "Yellow Hunter Cap", chance = "0.04%"},
        {name = "Yellow Scholar Hat", chance = "0.04%"},
        {name = "Iron Armored Boots", chance = "0.04%"},
        {name = "Iron Focus", chance = "0.04%"},
        {name = "Iron Kunai", chance = "0.04%"},
        {name = "Iron Shield", chance = "0.04%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Snapper", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Flowsnail"] = {
    name = "Flowsnail",
    image = "Flowsnail.png",
    maps = {},
    element = {},
    level = 19,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Flowsnail", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Angeling"] = {
    name = "Angeling",
    image = "Angeling.png",
    maps = {},
    element = {},
    level = 20,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Angeling", quantity = 200},
            }
        },
    },
}

data["Crusher"] = {
    name = "Crusher",
    image = "Crusher.png",
    maps = {
        "Beach Hunting Grounds",
        "Around the Seashore",
        "Beach 3",
        "Seashell Cove",
    },
    element = {
        {name = "Water"},
    },
    level = 20,
    exp = "",
    hp = 1927,
    atk = 43,
    def = 6,
    mp = 193,
    spd = 2,
    drops = {
    	
        {name = "Dull Eternal Essence", chance = "25%"},
        {name = "Shell Piece", chance = "14.29%"},
        {name = "Quartz Helmet", chance = "0.16%"},
        {name = "Coconut Scholar Shoes", chance = "0.16%"},
        {name = "Quartz Orb", chance = "0.16%"},
        {name = "Yellow Priest Shoes", chance = "0.04%"},
        {name = "Yellow Scholar Shoes", chance = "0.04%"},
        {name = "Iron Cross", chance = "0.04%"},
        {name = "Iron Javelin", chance = "0.04%"},
        {name = "Robin Hat", chance = "0.04%"},
        {name = "Yellow Hunter Robe", chance = "0.04%"},
        {name = "Iron Magic Wand", chance = "0.04%"},
        {name = "Iron Sword", chance = "0.04%"},
        
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Crusher", quantity = 200},
            }
        },
    },
}

data["Droppo"] = {
    name = "Droppo",
    image = "Droppo.png",
    maps = {
        "Seashell Cove",
        "Beach Cave",
    },
    element = {
        {name = "Water"},
    },
    level = 21,
    exp = "",
    hp = 1921,
    atk = 47,
    def = 12,
    mp = 193,
    spd = 1,
    drops = {
        {name = "Dull Nurturing Essence", chance = "12.5%"},
        {name = "Quartz Kunai", chance = "0.3%"},
        {name = "Quartz Sword", chance = "0.3%"},
        {name = "Robin Hat", chance = "0.04%"},
        {name = "Iron Chest Plate", chance = "0.04%"},
        {name = "Yellow Hunter Robe", chance = "0.04%"},
        {name = "Yellow Priest Robe", chance = "0.04%"},
        {name = "Yellow Scholar Robe", chance = "0.04%"},
        {name = "Iron Holy Arrow", chance = "0.04%"},
        {name = "Magic Wand", chance = "0.04%"},
        {name = "Iron Sword", chance = "0.04%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Droppo", quantity = 200},
            }
        },
    },
}

data["Troppo"] = {
    name = "Troppo",
    image = "Troppo.png",
    maps = {
        "Seashell Cove",
        "Beach Cave",
    },
    element = {
        {name = "Water"},
    },
    level = 22,
    exp = "",
    hp = 2618,
    atk = 51,
    def = 3,
    mp = 262,
    spd = 2,
    drops = {
        {name = "Dull Ghostly Essence", chance = "12.5%"},
        {name = "Quartz Leg Plate", chance = "0.63%"},
        {name = "Iron Leg Plate", chance = "0.05%"},
        {name = "Yellow Hunter Pants", chance = "0.05%"},
        {name = "Yellow Scholar Pants", chance = "0.05%"},
        {name = "Feather Hat", chance = "0.05%"},
        {name = "Iron Helmet", chance = "0.05%"},
        {name = "Yellow Priest Robe", chance = "0.05%"},
        {name = "Iron Bow", chance = "0.05%"},
        {name = "Iron Spellblade", chance = "0.05%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Troppo", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Acceptance"] = {
    name = "Acceptance",
    image = "Acceptance.png",
    maps = {},
    element = {},
    level = 22,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Acceptance", quantity = 200},
            }
        },
    },
}

data["Licki"] = {
    name = "Licki",
    image = "Licki.png",
    maps = {
        "Windy Savannah",
        "Savannah 1",
        "Savannah 2"
    },
    element = {
        {name = "Fire"},
        {name = "Lightning"},
    },
    level = 22,
    exp = "",
    hp = 2345,
    atk = 51,
    def = 8,
    mp = 235,
    spd = 2,
    drops = {
        {name = "Dull Historic Essence", chance = "12.5%"},
        {name = "Eternal Flame", chance = "1.49%"},
        {name = "Sturdy Rock", chance = "1.49%"},
        {name = "Lime", chance = "0.91%"},
        {name = "Quartz Kunai", chance = "0.63%"},
        {name = "Iron Leg Plate", chance = "0.05%"},
        {name = "Yellow Scholar Pants", chance = "0.05%"},
        {name = "Robin Hat", chance = "0.05%"},
        {name = "Yellow Priest Hood", chance = "0.05%"},
        {name = "Yellow Hunter Robe", chance = "0.05%"},
        {name = "Iron Bow", chance = "0.05%"},
        {name = "Iron Holy Arrow", chance = "0.05%"},
        {name = "Iron Spellblade", chance = "0.05%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Licki", quantity = 200},
            }
        },
    },
}

data["Bananek"] = {
    name = "Bananek",
    image = "Bananek.png",
    maps = {
        "Savannah 1",
        "Savannah 2",
        "Savannah 3",
    },
    element = {
        {name = "Normal"},
    },
    level = 23,
    exp = "",
    hp = 2702,
    atk = 54,
    def = 7,
    mp = 271,
    spd = 2,
    drops = {
        {name = "Dull Life Essence", chance = "12.5%"},
        {name = "Banana", chance = "2%"},
        {name = "Stinky Ring", chance = "0.02%"},
        {name = "Glowing Priest Bottom", chance = "0.02%"},
        {name = "Glowing Hunter Cap", chance = "0.02%"},
        {name = "Glowing Scholar Hat", chance = "0.02%"},
        {name = "Horns", chance = "0.02%"},
        {name = "Petrified Helmet", chance = "0.02%"},
        {name = "Glowing Hunter Robe", chance = "0.02%"},
        {name = "Glowing Priest Robe", chance = "0.02%"},
        {name = "Glowing Scholar Robe", chance = "0.02%"},
        {name = "Petrified Bow", chance = "0.02%"},
        {name = "Petrified Cross", chance = "0.02%"},
        {name = "Petrified Orb", chance = "0.02%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Bananek", quantity = 200},
            }
        },
    },
}

data["Banshek"] = {
    name = "Banshek",
    image = "Banshek.png",
    maps = {},
    element = {},
    level = 24,
    exp = "",
    hp = "2979",
    atk = "60",
    def = "8",
    mp = "298",
    spd = "2",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Banshek", quantity = 200},
            }
        },
    },
}

data["Citruslime"] = {
    name = "Citruslime",
    image = "Citruslime.png",
    maps = {
        "Windy Savannah",
        "Savannah 2",
        "Savannah 3",
    },
    element = {
        {name = "Normal"},
    },
    level = 25,
    exp = "",
    hp = 3425,
    atk = 65,
    def = 7,
    mp = 343,
    spd = 2,
    drops = {
        {name = "Dull Ranging Essence", chance = "12.5%"},
        {name = "Glowing Hunter Pants", chance = "0.02%"},
        {name = "Glowing Scholar Pants", chance = "0.02%"},
        {name = "Petrified Leg Plate", chance = "0.02%"},
        {name = "Cross Necklace", chance = "0.02%"},
        {name = "Glowing Priest Hood", chance = "0.02%"},
        {name = "Pretty Flower", chance = "0.02%"},
        {name = "Glowing Hunter Shoes", chance = "0.02%"},
        {name = "Glowing Priest Shoes", chance = "0.02%"},
        {name = "Glowing Scholar Shoes", chance = "0.02%"},
        {name = "Petrified Armored Boots", chance = "0.02%"},
        {name = "Petrified Chest Plate", chance = "0.02%"},
        {name = "Petrified Focus", chance = "0.02%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Citruslime", quantity = 200},
            }
        },
    },
}

-- data not available
data["Giant Slime"] = {
    name = "Giant Slime",
    image = "Giant Slime.png",
    maps = {},
    element = {},
    level = 25,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Giant Slime", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Gloopy"] = {
    name = "Gloopy",
    image = "Gloopy.png",
    maps = {},
    element = {},
    level = 27,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Gloopy", quantity = 200},
            }
        },
    },
}

data["Monoghoul"] = {
    name = "Monoghoul",
    image = "Monoghoul.png",
    maps = {
        "Misty Forest 1",
        "Misty Forest 2",
    },
    element = {
        {name = "Ghost"},
    },
    level = 27,
    exp = "",
    hp = 4541,
    atk = 72,
    def = 5,
    mp = 455,
    spd = 2,
    drops = {
        {name = "Dull Ghostly Essence", chance = "12.5%"},
        {name = "White Herb", chance = "0.56%"},
        {name = "Glowing Hunter Pants", chance = "0.02"},
        {name = "Glowing Scholar Pants", chance = "0.02%"},
        {name = "Cross Necklace", chance = "0.02%"},
        {name = "Glowing Priest Hood", chance = "0.02%"},
        {name = "Glowing Hunter Shoes", chance = "0.02%"},
        {name = "Glowing Priest Shoes", chance = "0.02%"},
        {name = "Glowing Scholar Shoes", chance = "0.02%"},
        {name = "Petrified Armored Boots", chance = "0.02%"},
        {name = "Petrified Chest Plate", chance = "0.02%"},
        {name = "Petrified Focus", chance = "0.02%"},
        {name = "Petrified Kunai", chance = "0.02%"},
        {name = "Petrified Sword", chance = "0.02%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Monoghoul", quantity = 200},
            }
        },
    },
}

data["Sadling"] = {
    name = "Sadling",
    image = "Sadling.png",
    maps = {
        "Glowsnail Cave 2",
        "Misty Forest 2",
        "Misty Forest 3",
    },
    element = {
        {name = "Ice"},
        {name = "Metal"},
    },
    level = 28,
    exp = "",
    hp = 4694,
    atk = 81,
    def = 9,
    mp = 470,
    spd = 2,
    drops = {
        {name = "Dull Metal Essence", chance = "12.5%"},
        {name = "Stone", chance = "0.83%"},
        {name = "Wolf Ears", chance = "0.12%"},
        {name = "Glowing Priest Bottom", chance = "0.03%"},
        {name = "Glowing Hunter Cap", chance = "0.03%"},
        {name = "Glowing Scholar Cap", chance = "0.03%"},
        {name = "Horns", chance = "0.03%"},
        {name = "Glowing Hunter Robe", chance = "0.03%"},
        {name = "Glowing Priest Robe", chance = "0.03%"},
        {name = "Glowing Scholar Robe", chance = "0.03%"},
        {name = "Petrified Bow", chance = "0.03%"},
        {name = "Petrified Cross", chance = "0.03%"},
        {name = "Petrified Javelin", chance = "0.03%"},
        {name = "Petrified Spellblade", chance = "0.03%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Sadling", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Minireap"] = {
    name = "Minireap",
    image = "Minireap.png",
    maps = {},
    element = {},
    level = 30,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Minireap", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Chrono Shroom"] = {
    name = "Chrono Shroom",
    image = "Chrono Shroom.png",
    maps = {},
    element = {},
    level = 30,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Chrono Shroom", quantity = 200},
            }
        },
    },
}

data["Dark Pumpkin"] = {
    name = "Dark Pumpkin",
    image = "Dark Pumpkin.png",
    maps = {
        "Misty Forest 3"
    },
    element = {
        {name = "Ghost"}
    },
    level = 30,
    exp = "",
    hp = 6070,
    atk = 92,
    def = 8,
    mp = 607,
    spd = 2,
    drops = {
        {name = "Dull Eternal Essence", chance = "12.5%"},
        {name = "Candy Corn", chance = "10%"},
        {name = "Pumpkin", chance = "6.67%"},
        {name = "Dark Essence", chance = "6.67%"},
        {name = "Straw Hat", chance = "0.1%"},
        {name = "Petrified Holy Arrow", chance = "0.1%"},
        {name = "Petrified Orb", chance = "0.1%"},
        {name = "Silverleaf Hunter Cap", chance = "0.02%"},
        {name = "Silverleaf Priest Shoes", chance = "0.02%"},
        {name = "Silverleaf Scholar Shoes", chance = "0.02%"},
        {name = "Silverleaf Hunter Robe", chance = "0.02%"},
        {name = "Silverleaf Priest Robe", chance = "0.02%"},
        {name = "Stinky Bow", chance = "0.02%"},
        {name = "Stinky Focus", chance = "0.02%"},
        {name = "Stinky Kunai", chance = "0.02%"},
        {name = "Stinky Orb", chance = "0.02%"},
        {name = "Stinky Sword", chance = "0.02%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Dark Pumpkin", quantity = 200},
            }
        },
    },
}

data["Stinky Sheep"] = {
    name = "Stinky Sheep",
    image = "Stinky Sheep.png",
    maps = {
        "Sulfiric Planes 1",
        "Sulfiric Planes 2",
    },
    element = {
        {name = "Normal"},
    },
    level = 32,
    exp = "",
    hp = 6070,
    atk = 89,
    def = 8,
    mp = 607,
    spd = 2,
    drops = {
        {name = "Dull Historic Essence", chance = "40%"},
        {name = "Petrified Shield", chance = "0.5%"},
        {name = "Emerald Ring", chance = "0.02%"},
        {name = "Stinky Cross", chance = "0.02%"},
		{name = "Silverleaf Priest Hood", chance = "0.2%"},
		{name = "Silverleaf Scholar Hat", chance = "0.2%"},
		{name = "Silverleaf Scholar Shoes", chance = "0.2%"},
		{name = "Silverleaf Hunter Robe", chance = "0.2%"},
		{name = "Stinky Javelin", chance = "0.2%"},
		{name = "Stinky Orb", chance = "0.2%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Stinky Sheep", quantity = 200},
            }
        },
    },
}

data["Spot Slime"] = {
    name = "Spot Slime",
    image = "Spot Slime.png",
    maps = {
        "Sulfuric Path",
        "Sulfuric Plains 2",
        "Sulfuric Plains 3"
    },
    element = {
        {name = "Metal"},
        {name = "Water"}
    },
    level = 34,
    exp = "",
    hp = 9702,
    atk = 120,
    def = 8,
    mp = 971,
    spd = 2,
    drops = {
        {name = "Dull Ghostly Essence", chance = "12.5%"},
        {name = "Petrified Leg Plate", chance = "0.18%"},
        {name = "Pretty Flower", chance = "0.18%"},
        {name = "Silverleaf Scholar Pants", chance = "0.03%"},
        {name = "Stinky Leg Plate", chance = "0.03%"},
        {name = "Stinky Armored Boots", chance = "0.03%"},
        {name = "Stinky Cross", chance = "0.03%"},
        {name = "Stinky Holy Arrow", chance = "0.03%"},
        {name = "Stinky Shield", chance = "0.03%"},
        {name = "Rock Pendant", chance = "0.02%"},
        {name = "Halo", chance = "0.02%"},
        {name = "Soul on Head", chance = "0.02%"},
        {name = "Witch Hat", chance = "0.02%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Spot Slime", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Dark Matter"] = {
    name = "Dark Matter",
    image = "Dark Matter.png",
    maps = {},
    element = {},
    level = 35,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Dark Matter", quantity = 200},
            }
        },
    },
}

data["Licke"] = {
    name = "Licke",
    image = "Licke.png",
    maps = {
        "Sulfuric Path",
        "Sulfuric Path 2",
        "Sulfuric Plains 3",
    },
    element = {
        {name = "Metal"},
    },
    level = 36,
    exp = "",
    hp = 12242,
    atk = 130,
    def = 8,
    mp = 1225,
    spd = 2,
    drops = {
        {name = "Dull Raging Essence", chance = "12.5%"},
        {name = "Rain Cloud", chance = "0.18%"},
        {name = "Petrified Magic Wand", chance = "0.18%"},
        {name = "Fern Hunter Pants", chance = "0.01%"},
        {name = "Fern Priest Bottom", chance = "0.01%"},
        {name = "Soul on Head", chance = "0.01%"},
        {name = "Fern Priest Shoes", chance = "0.01%"},
        {name = "Fern Scholar Robe", chance = "0.01%"},
        {name = "Eerie Bow", chance = "0.01%"},
        {name = "Eerie Focus", chance = "0.01%"},
        {name = "Eerie Javelin", chance = "0.01%"},
        {name = "Eerie Magic Wand", chance = "0.01%"},
        {name = "Eerie Spellblade", chance = "0.01%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Licke", quantity = 200},
            }
        },
    },
}

data["Rainbow Cloudsheep"] = {
    name = "Rainbow Cloudsheep",
    image = "Rainbow Cloudsheep.png",
    maps = {
        "Lost Plains"
    },
    element = {
        {name = "Normal"}
    },
    level = 37,
    exp = "",
    hp = 14044,
    atk = 144,
    def = 7,
    mp = 1405,
    spd = 2,
    drops = {
        {name = "Life Essence", chance = "8.33%"},
        {name = "Stinky Ring", chance = "0.19%"},
        {name = "Petrified Magic Wand", chance = "0.19%"},
        {name = "Shepherd's Hat", chance = "0.01%"},
        {name = "Rock Pendant", chance = "0.01%"},
        {name = "Eerie Leg Plate", chance = "0.01%"},
        {name = "Fern Scholar Pants", chance = "0.01%"},
        {name = "Fern Hunter Cap", chance = "0.01%"},
        {name = "Eerie Armored Boots", chance = "0.01%"},
        {name = "Fern Hunter Shoes", chance = "0.01%"},
        {name = "Fern Priest Robe", chance = "0.01%"},
        {name = "Eerie Cross", chance = "0.01%"},
        {name = "Eerie Holy Arrow", chance = "0.01%"},
        {name = "Eerie Shield", chance = "0.01%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Rainbow Cloudsheep", quantity = 200},
            }
        },
    },
}

data["Humblebee"] = {
    name = "Humblebee",
    image = "Humblebee.png",
    maps = {
        "Forest Seeding Grounds",
        "Forest 3",
        "Forest Pond"
    },
    element = {
        {name = "Normal"},
    },
    level = 38,
    exp = "",
    hp = 16473,
    atk = 153,
    def = 5,
    mp = 1648,
    spd = 1,
    drops = {
        {name = "Eternal Essence", chance = "8.33%"},
        {name = "Green Herb", chance = "1.0%"},
        {name = "Eerie Leg Plate", chance = "0.01%"},
        {name = "Fern Scholar Pants", chance = "0.01%"},
        {name = "Fern Hunter Cap", chance = "0.01%"},
        {name = "Halo", chance = "0.01%"},
        {name = "Eerie Armored Boots", chance = "0.01%"},
        {name = "Fern Hunter Shoes", chance = "0.01%"},
        {name = "Fern Priest Robe", chance = "0.01%"},
        {name = "Eerie Cross", chance = "0.01%"},
        {name = "Eerie Holy Arrow", chance = "0.01%"},
        {name = "Eerie Shield", chance = "0.01%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Humblebee", quantity = 200},
            }
        },
    },
}

data["Soulpling"] = {
    name = "Soulpling",
    image = "Soulpling.png",
    maps = {
        "Forest seeding ground",
        "Forest 3",
        "Forest 2",
        "Forest Pond"
    },
    element = {
        {name = "Ghost"}
    },
    level = 39,
    exp = "",
    hp = 19811,
    atk = 162,
    def = 2,
    mp = 1982,
    spd = 2,
    drops = {
        {name = "Nurturing Essence", chance = "8.33%"},
        {name = "Aquamarine Ring", chance = "0.01%"},
        {name = "Eerie Helmet", chance = "0.01%"},
        {name = "Fern Priest Hood", chance = "0.01%"},
        {name = "Fern Scholar Hat", chance = "0.01%"},
        {name = "Fern Scholar Shoes", chance = "0.01%"},
        {name = "Eerie Chest Plate", chance = "0.01%"},
        {name = "Fern Hunter Robe", chance = "0.01%"},
        {name = "Eerie Kunai", chance = "0.01%"},
        {name = "Eerie Orb", chance = "0.01%"},
        {name = "Eerie Sword", chance = "0.01%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Soulpling", quantity = 200},
            }
        },
    },
}

data["Ferni"] = {
    name = "Ferni",
    image = "Ferni.png",
    maps = {
        "Forest 1",
        "Forest 3"
    },
    element = {
        {name = "Normal"}
    },
    level = 40,
    exp = "",
    hp = 21223,
    atk = 171,
    def = 4,
    mp = 2123,
    spd = 2,
    drops = {
        {name = "Metal Essence", chance = "8.33%"},
        {name = "Aquamarine Ring", chance = "0.02%"},
        {name = "Eerie Helmet", chance = "0.02%"},
        {name = "Fern Priest Hood", chance = "0.02%"},
        {name = "Fern Scholar Hat", chance = "0.02%"},
        {name = "Fern Scholar Shoes", chance = "0.02%"},
        {name = "Eerie Chest Plate", chance = "0.02%"},
        {name = "Fern Hunter Robe", chance = "0.02%"},
        {name = "Eerie Kunai", chance = "0.02%"},
        {name = "Eerie Orb", chance = "0.02%"},
        {name = "Eerie Sword", chance = "0.02%"},
        {name = "Snowball (Weapon)", chance = "0.01%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Ferni", quantity = 200},
            }
        },
    },
}

data["Death Mist"] = {
    name = "Death Mist",
    image = "Death Mist.png",
    maps = {},
    element = {},
    level = 42,
    exp = "",
    hp = 27976,
    atk = 182,
    def = 2,
    mp = 2798,
    spd = 3,
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Death Mist", quantity = 200},
            }
        },
    },
}

data["Soultree"] = {
    name = "Soultree",
    image = "Soultree.png",
    maps = {
        "Forest 2",
        "Forest 3",
    },
    element = {
        {name = "Normal"},
        {name = "Ghost"},
    },
    level = 42,
    exp = "",
    hp = 25543,
    atk = 191,
    def = 6,
    mp = 2555,
    spd = 2,
    drops = {
        {name = "Dull Ghostly Essence", chance = "8.33%"},
        {name = "Wooden Chair", chance = "0.25%"},
        {name = "Ruby Ring", chance = "0.01%"},
        {name = "Coral Hunter Pants", chance = "0.01%"},
        {name = "Coral Hunter Cap", chance = "0.01%"},
        {name = "Coral Priest Hood", chance = "0.01%"},
        {name = "Coral Scholar Hat", chance = "0.01%"},
        {name = "Deep Helmet", chance = "0.01%"},
        {name = "Deep Armored Boots", chance = "0.01%"},
        {name = "Coral Hunter Robe", chance = "0.01%"},
        {name = "Coral Scholar Robe", chance = "0.01%"},
        {name = "Deep Cross", chance = "0.01%"},
        {name = "Deep Kunai", chance = "0.01%"},
        {name = "Deep Orb", chance = "0.01%"},
        {name = "Deep Spellblade", chance = "0.01%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Soultree", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Deerlime"] = {
    name = "Deerlime",
    image = "Deerlime.png",
    maps = {},
    element = {},
    level = 42,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Deerlime", quantity = 200},
            }
        },
    },
}

data["Sweel"] = {
    name = "Sweel",
    image = "Sweel.png",
    maps = {
        "Ocean 2",
        "Ocean 3",
        "Ocean 4"
    },
    element = {},
    level = 44,
    exp = "",
    hp = 36931,
    atk = 213,
    def = 0,
    mp = 3694,
    spd = 2,
    drops = {
        {name = "Historic Essence", chance = "8.33%"},
        {name = "Blue Herb", chance = "0.4%"},
        {name = "Ring of Magic", chance = "0.01%"},
        {name = "Ring of Power", chance = "0.01%"},
        {name = "Ruby Ring", chance = "0.01%"},
        {name = "Coral Priest Bottom", chance = "0.01%"},
        {name = "Coral Scholar Pants", chance = "0.01%"},
        {name = "Deep Helmet", chance = "0.01%"},
        {name = "Coral Priest Shoes", chance = "0.01%"},
        {name = "Deep Armored Boots", chance = "0.01%"},
        {name = "Coral Hunter Robe", chance = "0.01%"},
        {name = "Deep Chest Plate", chance = "0.01%"},
        {name = "Deep Javelin", chance = "0.01%"},
        {name = "Deep Magic Wand", chance = "0.01%"},
        {name = "Deep Shield", chance = "0.01%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Sweel", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Dark Mass"] = {
    name = "Dark Mass",
    image = "Dark Mass.png",
    maps = {},
    element = {},
    level = 45,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Dark Mass", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Big Slime"] = {
    name = "Big Slime",
    image = "Big Slime.png",
    maps = {},
    element = {},
    level = 45,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Big Slime", quantity = 200},
            }
        },
    },
}

data["Giga"] = {
    name = "Giga",
    image = "Giga.png",
    maps = {
        "Ocean 1",
        "Ocean 2",
        "Ocean 3",
        "Ocean 4"
    },
    element = {
        {name = "Water"}
    },
    level = 46,
    exp = "",
    hp = 36387,
    atk = 236,
    def = 11,
    mp = 3639,
    spd = 3,
    drops = {
        {name = "Shell Piece", chance = "20%"},
        {name = "Raging Essence", chance = "8.33%"},
        {name = "Ring of Magic", chance = "0.01%"},
        {name = "Ring of Swiftness", chance = "0.01%"},
        {name = "Deep Leg Plate", chance = "0.01%"},
        {name = "Coral Scholar Hat", chance = "0.01%"},
        {name = "Flames", chance = "0.01%"},
        {name = "Coral Hunter Shoes", chance = "0.01%"},
        {name = "Coral Scholar Shoes", chance = "0.01%"},
        {name = "Coral Priest Robe", chance = "0.01%"},
        {name = "Deep Bow", chance = "0.01%"},
        {name = "Deep Focus", chance = "0.01%"},
        {name = "Deep Holy Arrow", chance = "0.01%"},
        {name = "Deep Orb", chance = "0.01%"},
        {name = "Deep Sword", chance = "0.01%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Giga", quantity = 200},
            }
        },
    },
}

data["Bubble Snake"] = {
    name = "Bubble Snake",
    image = "Bubble Snake.png",
    maps = {
        "Ocean 2",
        "Ocean 4"
    },
    element = {
        {name = "Water"}
    },
    level = 48,
    exp = "",
    hp = 50642,
    atk = 261,
    def = 6,
    mp = 5065,
    spd = 2,
    drops = {
        {name = "Nurturing Essence", chance = "8.33%"},
        {name = "Light Essence", chance = "0.2%"},
        {name = "Cactus Hunter Pants", chance = "<0.00%"},
        {name = "Cactus Scholar Pants", chance = "<0.00%"},
        {name = "Repressive Leg Plate", chance = "<0.00%"},
        {name = "Cactus Priest Hood", chance = "<0.00%"},
        {name = "Repressive Helmet", chance = "<0.00%"},
        {name = "Cactus Hunter Shoes", chance = "<0.00%"},
        {name = "Cactus Priest Shoes", chance = "<0.00%"},
        {name = "Cactus Scholar Shoes", chance = "<0.00%"},
        {name = "Dark Bullet-knife", chance = "<0.00%"},
        {name = "Repressive Cross", chance = "<0.00%"},
        {name = "Repressive Javelin", chance = "<0.00%"},
        {name = "Repressive Orb", chance = "<0.00%"},
        {name = "Repressive Sword", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Bubble Snake", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Fallen"] = {
    name = "Fallen",
    image = "Fallen.png",
    maps = {},
    element = {},
    level = 50,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Fallen", quantity = 200},
            }
        },
    },
}

data["Cactus"] = {
    name = "Cactus",
    image = "Cactus.png",
    maps = {
        "Desert 3",
        "Desert 4",
    },
    element = {
        {name = "Normal"}
    },
    level = 50,
    exp = "",
    hp = 60882,
    atk = 287,
    def = 8,
    mp = 6089,
    spd = 3,
    drops = {
        {name = "Life Essence", chance = "8.33%"},
        {name = "Light Essence", chance = "0.91%"},
        {name = "Dye", chance = "0.02%"},
        {name = "Tropical Fish Plate", chance = "0.02%"},
        {name = "Cactus Hunter Pants", chance = "0.01%"},
        {name = "Cactus Scholar Pants", chance = "0.01%"},
        {name = "Repressive Leg Plate", chance = "0.01%"},
        {name = "Cactus Priest Hood", chance = "0.01%"},
        {name = "Repressive Helmet", chance = "0.01%"},
        {name = "Cactus Hunter Shoes", chance = "0.01%"},
        {name = "Cactus Priest Shoes", chance = "0.01%"},
        {name = "Cactus Scholar Shoes", chance = "0.01%"},
        {name = "Dark Bullet-knife", chance = "0.01%"},
        {name = "Repressive Bow", chance = "0.01%"},
        {name = "Repressive Cross", chance = "0.01%"},
        {name = "Repressive Javelin", chance = "0.01%"},
        {name = "Repressive Orb", chance = "0.01%"},
        {name = "Repressive Spellblade", chance = "0.01%"}
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Cactus", quantity = 200},
            }
        },
    },
}

data["Rokkik"] = {
    name = "Rokkik",
    image = "Rokkik.png",
    maps = {
        "Desert 2",
        "Desert 3",
        "Desert 4",
    },
    element = {
        {name = "Normal"},
        {name = "Metal"},
    },
    level = 52,
    exp = "",
    hp = 66002,
    atk = 316,
    def = 15,
    mp = 6601,
    spd = 2,
    drops = {
        {name = "Metal Essence", chance = "8.33%"},
        {name = "Sturdy Rock", chance = "6.67%"},
        {name = "Iron Ore", chance = "1.0%"},
        {name = "Red Shard", chance = "1.0%"},
        {name = "Top Hat", chance = "0.02%"},
        {name = "Dye", chance = "0.02%"},
        {name = "Cactus Priest Bottom", chance = "0.01%"},
        {name = "Battle Helmet", chance = "0.01%"},
        {name = "Cactus Hunter Cap", chance = "0.01%"},
        {name = "Cactus Scholar Hat", chance = "0.01%"},
        {name = "Repressive Armored Boots", chance = "0.01%"},
        {name = "Cactus Hunter Robe", chance = "0.01%"},
        {name = "Cactus Priest Robe", chance = "0.01%"},
        {name = "Cactus Scholar Robe", chance = "0.01%"},
        {name = "Repressive Chest Plate", chance = "0.01%"},
        {name = "Repressive Focus", chance = "0.01%"},
        {name = "Repressive Holy Arrow", chance = "0.01%"},
        {name = "Repressive Kunai", chance = "0.01%"},
        {name = "Repressive Magic Wand", chance = "0.01%"},
        {name = "Repressive Shield", chance = "0.01%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Rokkik", quantity = 200},
            }
        },
    },
}

data["Blorpghoul"] = {
    name = "Blorpghoul",
    image = "Blorpghoul.png",
    maps = {
        "Plains Dungeon Hard"
    },
    element = {},
    level = 52,
    exp = "",
    hp = "64824",
    atk = "316",
    def = "16",
    mp = "6483",
    spd = "3",
    drops = {
        {name = "Radiant Ghostly Essence", chance = "5.56%"},
        {name = "White Herb", chance = "0.56%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Blorpghoul", quantity = 200},
            }
        },
    },
}

data["Slabbit"] = {
    name = "Slabbit",
    image = "Slabbit.png",
    maps = {
        "Desert 1",
        "Desert 2",
        "Desert 3",
        "Sandy Cave",
    },
    element = {
        {name = "Normal"},
    },
    level = 54,
    exp = "",
    hp = 93880,
    atk = 346,
    def = 8,
    mp = 9388,
    spd = 2,
    drops = {
        {name = "Historic Essence", chance = "8.33%"},
        {name = "Repressive Shield", chance = "0.05%"},
        {name = "Repressive Sword", chance = "0.05%"},
        {name = "Ice Priest Bottom", chance = "<0.00%"},
        {name = "Ice Hunter Cap", chance = "<0.00%"},
        {name = "Ice Scholar Hat", chance = "<0.00%"},
        {name = "Sharp Armored Boots", chance = "<0.00%"},
        {name = "Ice Hunter Robe", chance = "<0.00%"},
        {name = "Ice Priest Robe", chance = "<0.00%"},
        {name = "Ice Scholar Robe", chance = "<0.00%"},
        {name = "Sharp Chest Plate", chance = "<0.00%"},
        {name = "Sharp Focus", chance = "<0.00%"},
        {name = "Sharp Holy Arrow", chance = "<0.00%"},
        {name = "Sharp Kunai", chance = "<0.00%"},
        {name = "Sharp Magic Wand", chance = "<0.00%"},
        {name = "Sharp Shield", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Slabbit", quantity = 200},
            }
        },
    },
}

data["Sandball"] = {
    name = "Sandball",
    image = "Sandball.png",
    maps = {
        "Plains Hard Dungeon",
    },
    element = {},
    level = 0,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {
        {name = "Raging Essence", chance = "8.33%"},
        {name = "Ice Hunter Cap", chance = "<0.00%"},
        {name = "Ice Scholar Cap", chance = "<0.00%"},
        {name = "Ice Hunter Robe", chance = "<0.00%"},
        {name = "Ice Scholar Robe", chance = "<0.00%"},
        {name = "Sharp Leg Plate", chance = "<0.00%"},
        {name = "Sharp Helmet", chance = "<0.00%"},
        {name = "Sharp Bow", chance = "<0.00%"},
        {name = "Sharp Javelin", chance = "<0.00%"},
        {name = "Sharp Orb", chance = "<0.00%"},
        {name = "Sharp Sword", chance = "<0.00%"},
        {name = "Sharp Shield", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Sandball", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Depression"] = {
    name = "Depression",
    image = "Depression.png",
    maps = {},
    element = {},
    level = 55,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Depression", quantity = 200},
            }
        },
    },
}

data["Dragonfruit"] = {
    name = "Dragonfruit",
    image = "Dragonfruit.png",
    maps = {
        "Desert 1",
        "Desert 2",
    },
    element = {
        {name = "Fire"},
    },
    level = "",
    exp = "",
    hp = 107505,
    atk = 378,
    def = 12,
    mp = 10751,
    spd = 1,
    drops = {
        {name = "Ghostly Essence", chance = "8.33%"},
        {name = "Sapphire Ring", chance = "0.11%"},
        {name = "Amber Ring", chance = "<0.00%"},
        {name = "Ice Hunter Pants", chance = "<0.00%"},
        {name = "Ice Scholar Pants", chance = "<0.00%"},
        {name = "Sharp Leg Plate", chance = "<0.00%"},
        {name = "Ice Priest Hood", chance = "<0.00%"},
        {name = "Sharp Helmet", chance = "<0.00%"},
        {name = "Ice Hunter Shoes", chance = "<0.00%"},
        {name = "Ice Priest Shoes", chance = "<0.00%"},
        {name = "Ice Scholar Shoes", chance = "<0.00%"},
        {name = "Sharp Bow", chance = "<0.00%"},
        {name = "Sharp Cross", chance = "<0.00%"},
        {name = "Sharp Javelin", chance = "<0.00%"},
        {name = "Sharp Orb", chance = "<0.00%"},
        {name = "Sharp Sword", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Dragonfruit", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Chrono"] = {
    name = "Chrono",
    image = "Chrono.png",
    maps = {},
    element = {},
    level = 55,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Chrono", quantity = 200},
            }
        },
    },
}

data["Slibbit"] = {
    name = "Slibbit",
    image = "Slibbit.png",
    maps = {
        "Frost Cave",
        "Snowy Mountain 1",
        "Snowy Mountain 2"
    },
    element = {
        {name = "Ice"}
    },
    level = 58,
    exp = "",
    hp = 147446,
    atk = 388,
    def = 7,
    mp = 14745,
    spd = 2,
    drops = {
        {name = "Eternal Essence", chance = "8.33%"},
        {name = "Ember Ring", chance = "<0.00%"},
        {name = "Ice Hunter Pants", chance = "<0.00%"},
        {name = "Ice Scholar Pants", chance = "<0.00%"},
        {name = "Ice Priest Hood", chance = "<0.00%"},
        {name = "Sharp Helmet", chance = "<0.00%"},
        {name = "Ice Hunter Shoes", chance = "<0.00%"},
        {name = "Ice Priest Shoes", chance = "<0.00%"},
        {name = "Ice Scholar Shoes", chance = "<0.00%"},
        {name = "Sharp Bow", chance = "<0.00%"},
        {name = "Sharp Cross", chance = "<0.00%"},
        {name = "Sharp Javelin", chance = "<0.00%"},
        {name = "Sharp Orb", chance = "<0.00%"},
        {name = "Sharp Spellblade", chance = "<0.00%"}
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Slibbit", quantity = 200},
            }
        },
    },
}

data["Cursed Slibbit"] = {
    name = "Cursed Slibbit",
    image = "Cursed Slibbit.png",
    maps = {
        "Plains Hard Dungeon",
    },
    element = {
        {name = "Ice"}
    },
    level = 59,
    exp = "",
    hp = 160716,
    atk = 430,
    def = 8,
    mp = 16072,
    spd = 2,
    drops = {
        {name = "Ghostly Essence", chance = "8.33%"},
        {name = "Cursed Flame", chance = "0.83%"},
        {name = "Amber Ring", chance = "<0.00%"},
        {name = "Ice Hunter Pants", chance = "<0.00%"},
        {name = "Ice Scholar Pants", chance = "<0.00%"},
        {name = "Sharp Leg Plate", chance = "<0.00%"},
        {name = "Ice Priesthood", chance = "<0.00%"},
        {name = "Sharp Helmet", chance = "<0.00%"},
        {name = "Ice Hunter Shoes", chance = "<0.00%"},
        {name = "Ice Priest Shoes", chance = "<0.00%"},
        {name = "Ice Scholar Shoes", chance = "<0.00%"},
        {name = "Sharp Bow", chance = "<0.00%"},
        {name = "Sharp Cross", chance = "<0.00%"},
        {name = "Sharp Javelin", chance = "<0.00%"},
        {name = "Sharp Orb", chance = "<0.00%"},
        {name = "Sharp Spellblade", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Cursed Slibbit", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Licku"] = {
    name = "Licku",
    image = "Licku.png",
    maps = {},
    element = {},
    level = 62,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Licku", quantity = 200},
            }
        },
    },
}

data["Haowl"] = {
    name = "Haowl",
    image = "Haowl.png",
    maps = {},
    element = {
        {name = "Ice"}
    },
    level = 63,
    exp = "",
    hp = 257118,
    atk = 651,
    def = 6,
    mp = 25712,
    spd = 2,
    drops = {
        {name = "Eternal Essence", chance = "8.33%"},
        {name = "Dreamcatcher Ring", chance = "<0.00%"},
        {name = "Radiant Leg Plate", chance = "<0.00%"},
        {name = "Red Priest Bottom", chance = "<0.00%"},
        {name = "Radiant Helmet", chance = "<0.00%"},
        {name = "Red Hunter Cap", chance = "<0.00%"},
        {name = "Red Scholar Hat", chance = "<0.00%"},
        {name = "Red Scholar Shoes", chance = "<0.00%"},
        {name = "Red Hunter Robe", chance = "<0.00%"},
        {name = "Red Priest Robe", chance = "<0.00%"},
        {name = "Radiant Bow", chance = "<0.00%"},
        {name = "Radiant Cross", chance = "<0.00%"},
        {name = "Radiant Javelin", chance = "<0.00%"},
        {name = "Radiant Orb", chance = "<0.00%"},
        {name = "Radiant Spellblade", chance = "<0.00%"}
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Haowl", quantity = 200},
            }
        },
    },
}

-- Data not available
data["Blizzy"] = {
    name = "Blizzy",
    image = "Blizzy.png",
    maps = {
        "Snowy Mountain 2",
        "Snowy Mountain 3",
        "Snowy Mountain 4"
    },
    element = {
        {name = "Ice"}
    },
    level = 63,
    exp = "",
    hp = "195004",
    atk = "590",
    def = "9",
    mp = "19501",
    spd = "2",
    drops = {
        {name = "Nurturing Essence", chance = "8.33%"},
        {name = "Sharp Spellblade", chance = "0.08%"},
        {name = "Red Hunter Pants", chance = "<0.00%"},
        {name = "Red Scholar Pants", chance = "<0.00%"},
        {name = "Red Priest Hood", chance = "<0.00%"},
        {name = "Radiant Armored Boots", chance = "<0.00%"},
        {name = "Red Hunter Shoes", chance = "<0.00%"},
        {name = "Red Priest Shoes", chance = "<0.00%"},
        {name = "Radiant Chest Plate", chance = "<0.00%"},
        {name = "Radiant Focus", chance = "<0.00%"},
        {name = "Radiant Holy Arrow", chance = "<0.00%"},
        {name = "Radiant Kunai", chance = "<0.00%"},
        {name = "Radiant Magic Wand", chance = "<0.00%"},
        {name = "Radiant Shield", chance = "<0.00%"},
        {name = "Radiant Sword", chance = "<0.00%"}
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Blizzy", quantity = 200},
            }
        },
    },
}

data["Snowball"] = {
    name = "Snowball",
    image = "Snowball.png",
    maps = {
        "Snowy Mountain 3",
        "Snowy Mountain 4"
    },
    element = {
        {name = "Ice"}
    },
    level = 66,
    exp = "",
    hp = 253002,
    atk = 683,
    def = 12,
    mp = 25301,
    spd = 2,
    drops = {
        {name = "Raging Essence", chance = "8.33%"},
        {name = "Dreamcatcher Ring", chance = "<0.00%"},
        {name = "Radiant Leg Plate", chance = "<0.00%"},
        {name = "Red Priest Bottom", chance = "<0.00%"},
        {name = "Radiant Helmet", chance = "<0.00%"},
        {name = "Red Hunter Cap", chance = "<0.00%"},
        {name = "Red Scholar Hat", chance = "<0.00%"},
        {name = "Red Hunter Robe", chance = "<0.00%"},
        {name = "Red Priest Robe", chance = "<0.00%"},
        {name = "Red Scholar Robe", chance = "<0.00%"},
        {name = "Radiant Bow", chance = "<0.00%"},
        {name = "Radiant Cross", chance = "<0.00%"},
        {name = "Radiant Javelin", chance = "<0.00%"},
        {name = "Radiant Orb", chance = "<0.00%"},
        {name = "Radiant Spellblade", chance = "<0.00%"}
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Snowball", quantity = 200},
            }
        },
    },
}

data["Rokkak"] = {
    name = "Rokkak",
    image = "Rokkak.png",
    maps = {
        "Rocky Path",
        "Rocky Path 2",
    },
    element = {},
    level = 67,
    exp = "",
    hp = "328955",
    atk = "787",
    def = "15",
    mp = "32896",
    spd = "2",
    drops = {
        {name = "Metal Essence", chance = "8.33%"},
        {name = "Arcana Ring", chance = "<0.00%"},
        {name = "Eon Hunter Pants", chance = "<0.00%"},
        {name = "Eon Priest Robe", chance = "<0.00%"},
        {name = "Eon Priest Hood", chance = "<0.00%"},
        {name = "Eon Scholar Hat", chance = "<0.00%"},
        {name = "Eon Priest Shoes", chance = "<0.00%"},
        {name = "Eon Scholar Shoes", chance = "<0.00%"},
        {name = "Eon Hunter Robe", chance = "<0.00%"},
        {name = "Eon Scholar Robe", chance = "<0.00%"},
        {name = "Mystical Chest Plate", chance = "<0.00%"},
        {name = "Mystical Bow", chance = "<0.00%"},
        {name = "Mystical Holy Arrow", chance = "<0.00%"},
        {name = "Mystical Magic Wand", chance = "<0.00%"},
        {name = "Mystical Sword", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Rokkak", quantity = 200},
            }
        },
    },
}

data["Shroomie"] = {
    name = "Shroomie",
    image = "Shroomie.png",
    maps = {},
    element = {},
    level = 68,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Shroomie", quantity = 200},
            }
        },
    },
}

data["Cat Golem"] = {
    name = "Cat Golem",
    image = "Cat Golem.png",
    maps = {
        "Rocky Path 2",
        "Rocky Path 3",
        "Cat Golem Den",
    },
    element = {},
    level = 69,
    exp = "",
    hp = "372657",
    atk = "37266",
    def = "20",
    mp = "37266",
    spd = "1",
    drops = {
        {name = "Rubble", chance = "10%"},
        {name = "Historic Essence", chance = "8.33%"},
        {name = "White Herb", chance = "0.36%"},
        {name = "Arcana Ring", chance = "<0.00%"},
        {name = "Eon Scholar Pants", chance = "<0.00%"},
        {name = "Mystical Leg Plate", chance = "<0.00%"},
        {name = "Eon Hunter Cap", chance = "<0.00%"},
        {name = "Eon Priest Hood", chance = "<0.00%"},
        {name = "Eon Scholar Hat", chance = "<0.00%"},
        {name = "Mystical Helmet", chance = "<0.00%"},
        {name = "Eon Hunter Shoes", chance = "<0.00%"},
        {name = "Eon Scholar Shoes", chance = "<0.00%"},
        {name = "Mystical Armored Boots", chance = "<0.00%"},
        {name = "Eon Hunter Robe", chance = "<0.00%"},
        {name = "Eon Priest Robe", chance = "<0.00%"},
        {name = "Mystical Chest Plate", chance = "<0.00%"},
        {name = "Mystical Spellblade", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Cat Golem", quantity = 200},
            }
        },
    },
}

data["Seeker Reaper Mini"] = {
    name = "Seeker Reaper Mini",
    image = "Seeker Reaper Mini.png",
    maps = {},
    element = {},
    level = 70,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Seeker Reaper Mini", quantity = 200},
            }
        },
    },
}

data["Tallshroom"] = {
    name = "Tallshroom",
    image = "Tallshroom.png",
    maps = {},
    element = {},
    level = 71,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Tallshroom", quantity = 200},
            }
        },
    },
}

data["Cat Guardian"] = {
    name = "Cat Guardian",
    image = "Cat Guardian.png",
    maps = {
        "Rocky Path 3",
        "Cat Golem Den",
    },
    element = {},
    level = 72,
    exp = "",
    hp = "490499",
    atk = "980",
    def = "22",
    mp = "49050",
    spd = "2",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Cat Guardian", quantity = 200},
            }
        },
    },
}

data["Desert Bandit"] = {
    name = "Desert Bandit",
    image = "Desert Bandit.png",
    maps = {},
    element = {},
    level = 75,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Desert Bandit", quantity = 200},
            }
        },
    },
}

data["Desert Bandit (Fleeing)"] = {
    name = "Desert Bandit (Fleeing)",
    image = "Desert Bandit (Fleeing).png",
    maps = {},
    element = {},
    level = 75,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Desert Bandit (Fleeing)", quantity = 200},
            }
        },
    },
}

data["Soulfish"] = {
    name = "Soulfish",
    image = "Soulfish.png",
    maps = {},
    element = {},
    level = 79,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Soulfish", quantity = 200},
            }
        },
    },
}

data["Blorp"] = {
    name = "Blorp",
    image = "Blorp.png",
    maps = {},
    element = {},
    level = 80,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Blorp", quantity = 200},
            }
        },
    },
}

data["Soul Squid"] = {
    name = "Soul Squid",
    image = "Soul Squid.png",
    maps = {},
    element = {},
    level = 80,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Soul Squid", quantity = 200},
            }
        },
    },
}

data["Cursed Cloudsheep"] = {
    name = "Cursed Cloudsheep.png",
    image = "Cursed Cloudsheep.png",
    maps = {
        "Plains Dunegon Hard"
    },
    element = {},
    level = 85,
    exp = "",
    hp = "2030979",
    atk = "1634",
    def = "15",
    mp = "203098",
    spd = "2",
    drops = {
        {name = "Radiant Ghostly Essence", chance = "5.56%"},
        {name = "Cursed Flame", chance = "1.11%"},
        {name = "Shooting Star", chance = "0.01%"},
        {name = "Star Helmet", chance = "<0.00%"},
        {name = "Star Leg Plate", chance = "<0.00%"},
        {name = "Star Chestplate", chance = "<0.00%"},
        {name = "Eternal Priest Robe", chance = "<0.00%"},
        {name = "Eternal Hunter Pants", chance = "<0.00%"},
        {name = "Eternal Scholar Pants", chance = "<0.00%"},
        {name = "Radiant Divinity", chance = "<0.00%"},
        {name = "Radiant Innocence", chance = "<0.00%"},
        {name = "Radiant Wish", chance = "<0.00%"},
        {name = "Radiant Solitude", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Cursed Cloudsheep", quantity = 200},
            }
        },
    },
}

data["Saowl"] = {
    name = "Saowl",
    image = "Saowl.png",
    maps = {},
    element = {},
    level = 86,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Saowl", quantity = 200},
            }
        },
    },
}

data["Blaze"] = {
    name = "Blaze",
    image = "Blaze.png",
    maps = {},
    element = {},
    level = 88,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Blaze", quantity = 200},
            }
        },
    },
}

data["Haunted Flame"] = {
    name = "Haunted Flame",
    image = "Haunted Flame.png",
    maps = {},
    element = {},
    level = 88,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Haunted Flame", quantity = 200},
            }
        },
    },
}

data["Phantom"] = {
    name = "Phantom",
    image = "Phantom.png",
    maps = {},
    element = {},
    level = 92,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Phantom", quantity = 200},
            }
        },
    },
}

data["Lost Bard"] = {
    name = "Lost Bard",
    image = "Lost Bard.png",
    maps = {},
    element = {},
    level = 95,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Lost Bard", quantity = 200},
            }
        },
    },
}

data["Lost Ruins"] = {
    name = "Lost Ruins",
    image = "Lost Ruins.png",
    maps = {},
    element = {},
    level = 100,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Lost Ruins", quantity = 200},
            }
        },
    },
}

data["Shadow Golem"] = {
    name = "Shadow Golem",
    image = "Shadow Golem.png",
    maps = {},
    element = {},
    level = 120,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Shadow Golem", quantity = 200},
            }
        },
    },
}

data["Puppet Reaper (Wandering)"] = {
    name = "Puppet Reaper (Wandering)",
    image = "Puppet Reaper (Wandering).png",
    maps = {},
    element = {},
    level = 130,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Puppet Reaper (Wandering)", quantity = 200},
            }
        },
    },
}

data["Puppet Reaper"] = {
    name = "Puppet Reaper",
    image = "Puppet Reaper.png",
    maps = {},
    element = {},
    level = 160,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Puppet Reaper", quantity = 200},
            }
        },
    },
}

data["Reaperfish"] = {
    name = "Reaperfish",
    image = "Reaperfish.png",
    maps = {},
    element = {},
    level = 165,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Reaperfish", quantity = 200},
            }
        },
    },
}

data["Puppet Reaper (Panic)"] = {
    name = "Puppet Reaper (Panic)",
    image = "Puppet Reaper (Panic).png",
    maps = {},
    element = {},
    level = 180,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Puppet Reaper (Panic)", quantity = 200},
            }
        },
    },
}

data["Ghost Puppet"] = {
    name = "Ghost Puppet",
    image = "Ghost Puppet.png",
    maps = {},
    element = {},
    level = 180,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Ghost Puppet", quantity = 200},
            }
        },
    },
}

data["Seeker Reaper (Wandering)"] = {
    name = "Seeker Reaper (Wandering)",
    image = "Seeker Reaper (Wandering).png",
    maps = {},
    element = {},
    level = 180,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Seeker Reaper (Wandering)", quantity = 200},
            }
        },
    },
}

data["Scythe Reaper"] = {
    name = "Scythe Reaper",
    image = "Scythe Reaper.png",
    maps = {},
    element = {},
    level = 210,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Scythe Reaper", quantity = 200},
            }
        },
    },
}

data["Seeker Reaper"] = {
    name = "Seeker Reaper",
    image = "Seeker Reaper.png",
    maps = {},
    element = {},
    level = 210,
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {},
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Seeker Reaper", quantity = 200},
            }
        },
    },
}

data["Lime Slime"] = {
    name = "Lime Slime",
    image = "Lime Slime.png",
    maps = {},
    element = {},
    level = "",
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {
        {name = "Radiant Metal Essence", chance = "5.56%"},
        {name = "Obsidium Leg Plate", chance = "<0.00%"},
        {name = "Raging Hunter Pants", chance = "<0.00%"},
        {name = "Raging Priest Bottom", chance = "<0.00%"},
        {name = "Raging Scholar Pants", chance = "<0.00%"},
        {name = "Obsidium Armored Boots", chance = "<0.00%"},
        {name = "Raging Scholar Shoes", chance = "<0.00%"},
        {name = "Raging Priest Robe", chance = "<0.00%"},
        {name = "Inverse Exchange", chance = "<0.00%"},
        {name = "Inverse Judgement", chance = "<0.00%"},
        {name = "Inverse Messenger", chance = "<0.00%"},
        {name = "Inverse Sacrifice", chance = "<0.00%"},
        {name = "Inverse Smite", chance = "<0.00%"},
        {name = "Inverse Tear of the Fallen", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Lime Slime", quantity = 200},
            }
        },
    },
}

data["Pyramid Guardian"] = {
    name = "Pyramid Guardian",
    image = "Pyramid Guardian.png",
    maps = {},
    element = {},
    level = "",
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {
        {name = "Radiant Historic Essence", chance = "5.56%"},
        {name = "Star Helmet", chance = "0.03%"},
        {name = "Eternal Hunter Pants", chance = "<0.00%"},
        {name = "Eternal Leg Plate", chance = "<0.00%"},
        {name = "Eternal Scholar Pants", chance = "<0.00%"},
        {name = "Eternal Chest Plate", chance = "<0.00%"},
        {name = "Eternal Priest Robe", chance = "<0.00%"},
        {name = "Radiant Divinity", chance = "<0.00%"},
        {name = "Radiant Innocence", chance = "<0.00%"},
        {name = "Radiant Messenger", chance = "<0.00%"},
        {name = "Radiant Sacrifice", chance = "<0.00%"},
        {name = "Radiant Solitude", chance = "<0.00%"},
        {name = "Radiant Wish", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Pyramid Guardian", quantity = 200},
            }
        },
    },
}

data["Ancient Soulfish"] = {
    name = "Ancient Soulfish",
    image = "Ancient Soulfish.png",
    maps = {},
    element = {},
    level = "82",
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {
        {name = "Radiant Eternal Essence", chance = "5.56%"},
        {name = "Sacrifice", chance = "0.01%"},
        {name = "Solitude", chance = "0.01%"},
        {name = "Sword of Heart", chance = "0.01%"},
        {name = "Eternal Hunter Pants", chance = "<0.00%"},
        {name = "Eternal Leg Plate", chance = "<0.00%"},
        {name = "Eternal Scholar Pants", chance = "<0.00%"},
        {name = "Eternal Chest Plate", chance = "<0.00%"},
        {name = "Eternal Priest Robe", chance = "<0.00%"},
        {name = "Radiant Divinity", chance = "<0.00%"},
        {name = "Radiant Innocence", chance = "<0.00%"},
        {name = "Radiant Messenger", chance = "<0.00%"},
        {name = "Radiant Sacrifice", chance = "<0.00%"},
        {name = "Radiant Solitude", chance = "<0.00%"},
        {name = "Radiant Wish", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Ancient Soulfish", quantity = 200},
            }
        },
    },
}

data["Coral"] = {
    name = "Coral",
    image = "Coral.png",
    maps = {},
    element = {},
    level = "",
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {
        {name = "Radiant Nurturing Essence", chance = "5.56%"},
        {name = "Historic Priest Bottom", chance = "<0.00%"},
        {name = "Historic Hunter Cap", chance = "<0.00%"},
        {name = "Historic Scholar Hat", chance = "<0.00%"},
        {name = "Historic Hunter Robe", chance = "<0.00%"},
        {name = "Historic Priest Robe", chance = "<0.00%"},
        {name = "Historic Scholar Robe", chance = "<0.00%"},
        {name = "Star Chest Plate", chance = "<0.00%"},
        {name = "Divinity", chance = "<0.00%"},
        {name = "Exchange", chance = "<0.00%"},
        {name = "Innocence", chance = "<0.00%"},
        {name = "Knull", chance = "<0.00%"},
        {name = "Perseverance", chance = "<0.00%"},
        {name = "Shooting Star", chance = "<0.00%"},
        {name = "Wish", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Coral", quantity = 200},
            }
        },
    },
}

data["Upsivase"] = {
    name = "Upsivase",
    image = "Upsivase.png",
    maps = {},
    element = {},
    level = "",
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {
        {name = "Radiant Metal Essence", chance = "5.56%"},
        {name = "Historic Priest Bottom", chance = "<0.00%"},
        {name = "Star Leg Plate", chance = "<0.00%"},
        {name = "Historic Hunter Cap", chance = "<0.00%"},
        {name = "Historic Scholar Hat", chance = "<0.00%"},
        {name = "Historic Hunter Robe", chance = "<0.00%"},
        {name = "Historic Priest Robe", chance = "<0.00%"},
        {name = "Historic Scholar Robe", chance = "<0.00%"},
        {name = "Divinity", chance = "<0.00%"},
        {name = "Exchange", chance = "<0.00%"},
        {name = "Innocence", chance = "<0.00%"},
        {name = "Knull", chance = "<0.00%"},
        {name = "Perseverance", chance = "<0.00%"},
        {name = "Smite", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Upsivase", quantity = 200},
            }
        },
    },
}

data["Soulfish"] = {
    name = "Soulfish",
    image = "Soulfish.png",
    maps = {},
    element = {},
    level = "",
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {
        {name = "Radiant Ghostly Essence", chance = "5.56%"},
        {name = "Blue Herb", chance = "0.83%"},
        {name = "Light Essence", chance = "0.45%"},
        {name = "Eternal Oath", chance = "<0.00%"},
        {name = "Historic Hunter Pants", chance = "<0.00%"},
        {name = "Historic Scholar Pants", chance = "<0.00%"},
        {name = "Star Leg Plate", chance = "<0.00%"},
        {name = "Historic Priest Hood", chance = "<0.00%"},
        {name = "Historic Hunter Shoes", chance = "<0.00%"},
        {name = "Historic Priest Shoes", chance = "<0.00%"},
        {name = "Historic Scholar Shoes", chance = "<0.00%"},
        {name = "Faith", chance = "<0.00%"},
        {name = "Judgement", chance = "<0.00%"},
        {name = "Messenger", chance = "<0.00%"},
        {name = "Psyche", chance = "<0.00%"},
        {name = "Smite", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Soulfish", quantity = 200},
            }
        },
    },
}

data["Fernek"] = {
    name = "Fernek",
    image = "Fernek.png",
    maps = {},
    element = {},
    level = "",
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {
        {name = "Radiant Raging Essence", chance = "5.56%"},
        {name = "Mystical Sword", chance = "0.05%"},
        {name = "Eternal Oath", chance = "<0.00%"},
        {name = "Historic Hunter Pants", chance = "<0.00%"},
        {name = "Historic Scholar Pants", chance = "<0.00%"},
        {name = "Historic Priest Hood", chance = "<0.00%"},
        {name = "Historic Hunter Shoes", chance = "<0.00%"},
        {name = "Historic Priest Shoes", chance = "<0.00%"},
        {name = "Historic Scholar Shoes", chance = "<0.00%"},
        {name = "Faith", chance = "<0.00%"},
        {name = "Judgement", chance = "<0.00%"},
        {name = "Messenger", chance = "<0.00%"},
        {name = "Psyche", chance = "<0.00%"},
        {name = "Solitude", chance = "<0.00%"},
        {name = "Sword of Heart", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Fernek", quantity = 200},
            }
        },
    },
}

data["Kiwi"] = {
    name = "Kiwi",
    image = "Kiwi.png",
    maps = {},
    element = {},
    level = "",
    exp = "",
    hp = "",
    atk = "",
    def = "",
    mp = "",
    spd = "",
    drops = {
        {name = "Radiant Ghostly Essence", chance = "5.56%"},
        {name = "Mystical Helmet", chance = "0.02%"},
        {name = "Mystical Kunai", chance = "0.02%"},
        {name = "Mystical Spellblade", chance = "0.02%"},
        {name = "Arcane Helmet", chance = "<0.00%"},
        {name = "Arcane Hunter Cap", chance = "<0.00%"},
        {name = "Arcane Priest Hood", chance = "<0.00%"},
        {name = "Arcane Scholar Hat", chance = "<0.00%"},
        {name = "Arcane Armored Boots", chance = "<0.00%"},
        {name = "Arcane Hunter Shoes", chance = "<0.00%"},
        {name = "Arcane Scholar Robe", chance = "<0.00%"},
        {name = "Arcane Cross", chance = "<0.00%"},
        {name = "Arcane Kunai", chance = "<0.00%"},
        {name = "Arcane Orb", chance = "<0.00%"},
        {name = "Arcane Spellblade", chance = "<0.00%"},
    },
    questObjective = {
        {
            name = "Daily Hunt!",
            NPC = "Quest Master",
            repeatable = "Yes",
            questLevel = 0,
            enemies = {
                {name = "Kiwi", quantity = 200},
            }
        },
    },
}

return data