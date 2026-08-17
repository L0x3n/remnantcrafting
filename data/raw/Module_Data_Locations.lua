local data = {}

data["Market Hub Entrance"] = {
    name = "Market Hub Entrance",
    image = "Market Hub Entrance.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Spawn Grounds"},
        {name = "Hub 1"},
        {name = "Hub 2"},
        {name = "Hub 3"},
        {name = "Hub 4"},
        {name = "Hub 5"},
        {name = "Hub 6"},
    },
    interactables = {
        {type = "warp", name = "Goddess Statue"},
    },
    monsters = {},
    fishing = {},
    mining = {},
    herbalism = {},
}

data["Hub 1"] = {
    name = "Hub 1",
    image = "Hub 1.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Market Hub Entrance"},
    },
    interactables = {},
    monsters = {},
    fishing = {},
    mining = {},
    herbalism = {},
}

data["Hub 2"] = {
    name = "Hub 2",
    image = "Hub 2.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Market Hub Entrance"},
    },
    interactables = {},
    monsters = {},
    fishing = {},
    mining = {},
    herbalism = {},
}

data["Hub 3"] = {
    name = "Hub 3",
    image = "Hub 3.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Market Hub Entrance"},
    },
    interactables = {},
    monsters = {},
    fishing = {},
    mining = {},
    herbalism = {},
}

data["Hub 4"] = {
    name = "Hub 4",
    image = "Hub 4.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Market Hub Entrance"},
    },
    interactables = {},
    monsters = {},
    fishing = {},
    mining = {},
    herbalism = {},
}

data["Hub 5"] = {
    name = "Hub 5",
    image = "Hub 5.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Market Hub Entrance"},
    },
    interactables = {},
    monsters = {},
    fishing = {},
    mining = {},
    herbalism = {},
}

data["Hub 6"] = {
    name = "Hub 6",
    image = "Hub 6.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Market Hub Entrance"},
    },
    interactables = {},
    monsters = {},
    fishing = {},
    mining = {},
    herbalism = {},
}

data["Spawn Grounds"] = {
    name = "Spawn Grounds",
    image = "Spawn Grounds.png",
    caption = "The Beginning",
    level = 0,
    portals = {
        {name = "Outskirts West"},
        {name = "Market Hub Entrance"},
        {name = "Outskirts East"}
    },
    interactables = {
        {type = "npc", name = "Quest Master"},
        {type = "npc", name = "Auctioneer"},
        {type = "npc", name = "Kmitty"},
        {type = "npc", name = "Gevil"},
        {type = "npc", name = "Shop Keeper"},
        {type = "npc", name = "Tailor"},
        {type = "npc", name = "Smith"},
        {type = "npc", name = "Mysterious Man"},
        {type = "npc", name = "Shepherd"},
        {type = "npc", name = "???"}
    },
    monsters = {},
    fishing = {
        {name = "Clam", chance = "62.5%"},
        {name = "Shrimp", chance = "21.9%"},
        {name = "Trout", chance = "15.6%"},
    },
    mining = {},
    herbalism = {},
}

data["Behind the Garden"] = {
    name = "Behind the Garden",
    image = "Behind the Garden.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Outskirts Northwest"},
    },
    interactables = {
        {type = "dungeon", name = "Slime Garden"},
        {type = "npc", name = "Shepherd"},
    },
    monsters = {},
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Secret Garden"] = {
    name = "Secret Garden",
    image = "Secret Garden.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Outskirts Northwest"},
    },
    interactables = {},
    monsters = {
        {name = "Bubble Spirit", essence = "Dull Life Essence"},
        {name = "Slime", essence = "Dull Life Essence"},
        {name = "Jel", essence = "Dull Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Traveler's Rest"] = {
    name = "Traveler's Rest",
    image = "Traveler's Rest.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Snowy Mountain 4"},
        {name = "Snowy Mountain 5"},
    },
    interactables = {},
    monsters = {},
    fishing = {},
    mining = {},
    herbalism = {},
}

data["Sulfuric Path 1"] = {
    name = "Sulfuric Path 1",
    image = "Sulfuric Path 1.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Sulfuric Plains 2"},
        {name = "Sulfuric Path 2"},
    },
    interactables = {
        {type = "npc", name = "Gevil"},
    },
    monsters = {},
    fishing = {},
    mining = {},
    herbalism = {},
}

data["Swamp"] = {
    name = "Swamp",
    image = "Swamp.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Forest Lake"},
        {name = "Forest 3"},
        {name = "Ocean 2"},
    },
    interactables = {},
    monsters = {
        {name = "Soultree", essence = "Dull Ghostly Essence"},
        {name = "Soulpling", essence = "Nurturing Essence"},
        {name = "Ferni", essence = "Metal Essence"},
        {name = "Humblebee", essence = "Eternal Essence"},
    },
    fishing = {
        {name = "Angel Fish", chance = "40.3%"},
        {name = "Ice Salmon", chance = "40.3%"},
        {name = "Chomper", chance = "11.3%"},
        {name = "Clownfish", chance = "8.1%"},
    },
    mining = {
        {name = "Malachite Ore", chance = "83.3%"},
        {name = "Emerald", chance = "16.7%"},
    },
    herbalism = {
        {name = "Sweet Fern", chance = "34.8%"},
        {name = "Forest Seal", chance = "34.8%"},
        {name = "Melon", chance = "30.4%"},
        {name = "Green Cherry", chance = "100%"},
        {name = "Hard Wood", chance = "100%"},
    }
}

data["Desert 6"] = {
    name = "Desert 6",
    image = "Desert 6.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Desert Coast"},
        {name = "Desert 5"},
    },
    interactables = {},
    monsters = {},
    fishing = {},
    mining = {
        {name = "Starmetal", chance = "82.2%"},
        {name = "Black Diamond Fragment", chance = "16.4%"},
        {name = "Black Diamond", chance = "1.4%"},
    },
    herbalism = {
        {name = "Memory Agave", chance = "50%"},
        {name = "Epochal Lily", chance = "50%"},
        {name = "Sculpted Cacti", chance = "100%"},
        {name = "History Fruit", chance = "100%"},
    }
}

data["Desert 8"] = {
    name = "Desert 8",
    image = "Desert 8.png",
    caption = "",
    level = 0,
    portals = {
        {name = "Desert 2"},
        {name = "Desert 7"},
    },
    interactables = {
        {type = "warp", name = "Goddess Statue"},
    },
    monsters = {},
    fishing = {},
    mining = {
        {name = "Starmetal", chance = "82.2%"},
        {name = "Black Diamond Fragment", chance = "16.4%"},
        {name = "Black Diamond", chance = "1.4%"},
    },
    herbalism = {
        {name = "Memory Agave", chance = "50%"},
        {name = "Epochal Lily", chance = "50%"},
        {name = "Sculpted Cacti", chance = "100%"},
        {name = "History Fruit", chance = "100%"},
    }
}

data["Outskirts West"] = {
    name = "Outskirts West",
    image = "Outskirts West.png",
    caption = "",
    level = 1,
    portals = {
        {name = "Spawn Grounds"},
        {name = "Outskirts Northwest"},
        {name = "Outskirts Southwest"},
    },
    interactables = {},
    monsters = {
        {name = "Slime", essence = "Dull Life Essence"},
    },
    fishing = {
        {name = "Trout", chance = "22.2%"},
        {name = "Chomper", chance = "13%"},
        {name = "Clam", chance = "37%"},
        {name = "Shrimp", chance = "27.8%"},
    },
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Outskirts Northwest"] = {
    name = "Outskirts Northwest",
    image = "Outskirts Northwest.png",
    caption = "",
    level = 2,
    portals = {
        {name = "Outskirts Flower Field"},
        {name = "Outskirts West"},
        {name = "Plains 1"},
        {name = "Secret Garden"},
        {name = "Behind the Garden"},
    },
    interactables = {
        {type = "sign", name = "???"},
        {type = "npc", name = "Shepherd"},
    },
    monsters = {
        {name = "Bubble Spirit", essence = "Dull Life Essence"},
        {name = "Slime", essence = "Dull Life Essence"},
        {name = "Jel", essence = "Dull Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Outskirts Flower Field"] = {
    name = "Outskirts Flower Field",
    image = "Outskirts Flower Field.png",
    caption = "",
    level = 3,
    portals = {
        {name = "Outskirts Northwest"},
        {name = "Outskirts North"},
        {name = "Outskirts Flower Field 2"},
    },
    interactables = {},
    monsters = {
        {name = "Bubble Spirit", essence = "Dull Life Essence"},
        {name = "Slime", essence = "Dull Life Essence"},
        {name = "Jel", essence = "Dull Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Outskirts East"] = {
    name = "Outskirts East",
    image = "Outskirts East.png",
    caption = "",
    level = 3,
    portals = {
        {name = "Spawn Grounds"},
        {name = "Outskirts Northeast"},
        {name = "Outskirts Pond"},
        {name = "Savannah 1"},
    },
    interactables = {},
    monsters = {
        {name = "Slime", essence = "Dull Life Essence"},
        {name = "Jel", essence = "Dull Life Essence"},
        {name = "Pin Pin", essence = "Dull Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Outskirts Flower Field 2"] = {
    name = "Outskirts Flower Field 2",
    image = "Outskirts Flower Field 2.png",
    caption = "",
    level = 5,
    portals = {
        {name = "Outskirts Flower Field"},
    },
    interactables = {},
    monsters = {
        {name = "Flows", essence = "Dull Life Essence"},
        {name = "Jel", essence = "Dull Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Outskirts North"] = {
    name = "Outskirts North",
    image = "Outskirts North.png",
    caption = "",
    level = 5,
    portals = {
        {name = "Outskirts Northwest"},
        {name = "Outskirts Northeast"},
        {name = "Around the Seashore"},
    },
    interactables = {
    	{type = "npc", name = "Shepherd"},
    },
    monsters = {
        {name = "Flows", essence = "Dull Life Essence"},
        {name = "Jel", essence = "Dull Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Outskirts Northeast"] = {
    name = "Outskirts Northeast",
    image = "Outskirts Northeast.png",
    caption = "",
    level = 5,
    portals = {
        {name = "Outskirts North"},
        {name = "Outskirts East"},
    },
    monsters = {
        {name = "Bubble Spirit", essence = "Dull Life Essence"},
        {name = "Jel", essence = "Dull Life Essence"},
        {name = "Pin Pin", essence = "Dull Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Outskirts Southeast"] = {
    name = "Outskirts Southeast",
    image = "Outskirts Southeast.png",
    caption = "",
    level = 6,
    portals = {
        {name = "Outskirts Pond"},
        {name = "Outskirts South"},
        {name = "Misty Forest 2"},
    },
    interactables = {},
    monsters = {
        {name = "Hopper", essence = "Dull Life Essence"},
        {name = "Jel", essence = "Dull Life Essence"},
        {name = "Pin Pin", essence = "Dull Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Outskirts Pond"] = {
    name = "Outskirts Pond",
    image = "Outskirts Pond.png",
    caption = "",
    level = 7,
    portals = {
        {name = "Outskirts East"},
        {name = "Outskirts Southeast"},
    },
    interactables = {},
    monsters = {
        {name = "Slip", essence = "Dull Life Essence"},
        {name = "Flows", essence = "Dull Life Essence"},
    },
    fishing = {
        {name = "Trout", chance = "22.2%"},
        {name = "Chomper", chance = "13%"},
        {name = "Clam", chance = "37%"},
        {name = "Shrimp", chance = "27.8%"},
    },
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Outskirts South"] = {
    name = "Outskirts South",
    image = "Outskirts South.png",
    caption = "",
    level = 7,
    portals = {
        {name = "Outskirts Southeast"},
        {name = "Outskirts Southwest"},
    },
    interactables = {},
    monsters = {
        {name = "Hopper", essence = "Dull Life Essence"},
        {name = "Jel", essence = "Dull Life Essence"},
        {name = "Pin Pin", essence = "Dull Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Outskirts Southwest"] = {
    name = "Outskirts Southwest",
    image = "Outskirts Southwest.png",
    caption = "",
    level = 7,
    portals = {
        {name = "Outskirts South"},
        {name = "Outskirts West"},
        {name = "Sulfuric Plains 3"},
    },
    interactables = {},
    monsters = {
        {name = "Hopper", essence = "Dull Life Essence"},
        {name = "Jel", essence = "Dull Life Essence"},
        {name = "Pin Pin", essence = "Dull Life Essence"},
        {name = "Glowsnail", essence = "Dull Metal Essence"},
    },
    fishing = {},
    mining = {
        {name = "Stone", chance = "65.2%"},
        {name = "Salt", chance = "34.8%"},
    },
    herbalism = {
        {name = "Wheat", chance = "33.3%"},
        {name = "Green Herb", chance = "22.2%"},
        {name = "Red Herb", chance = "22.2%"},
        {name = "Blue Herb", chance = "22.2%"},
        {name = "Wood", chance = "100%"},
    }
}

data["Plains 1"] = {
    name = "Plains 1",
    image = "Plains 1.png",
    caption = "",
    level = 11,
    portals = {
        {name = "Outskirts East"},
        {name = "Forest 1"},
        {name = "Plains 2"},
    },
    interactables = {
        {type = "npc", name = "Shepherd"},
        {type = "sign", name = "???"},
    },
    monsters = {
        {name = "Cloudsheep", essence = "Dull Life Essence"},
        {name = "Glowsnail", essence = "Dull Metal Essence"},
    },
    fishing = {
        {name = "Shrimp", chance = "43.8%"},
        {name = "Clam", chance = "31.3%"},
        {name = "Trout", chance = "25%"},
    },
    mining = {
        {name = "Copper Ore", chance = "100%"},
    },
    herbalism = {
        {name = "Cotton Ball", chance = "100%"},
        {name = "Oak Wood", chance = "100%"},
        {name = "Apple", chance = "100%"},
    }
}

data["Plains 2"] = {
    name = "Plains 2",
    image = "Plains 2.png",
    caption = "",
    level = 12,
    portals = {
        {name = "Plains 1"},
        {name = "Plains 3"},
    },
    interactables = {
        {type = "npc", name = "Shepherd"},
    },
    monsters = {
        {name = "Squishling", essence = "Dull Nurturing Essence"},
        {name = "Cloudsheep", essence = "Dull Life Essence"},
        {name = "Angeling", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Copper Ore", chance = "100%"},
    },
    herbalism = {
        {name = "Cotton Ball", chance = "100%"},
        {name = "Oak Wood", chance = "100%"},
        {name = "Apple", chance = "100%"},
    }
}

data["Plains 3"] = {
    name = "Plains 3",
    image = "Plains 3.png",
    caption = "",
    level = 14,
    portals = {
        {name = "Plains 2"},
        {name = "Plains 4"},
    },
    interactables = {
        {type = "npc", name = "Shepherd"},
        {type = "warp", name = "Goddess Statue"},
        {type = "dungeon", name = "Plains Dungeon"},
    },
    monsters = {
        {name = "Squishling", essence = "Dull Nurturing Essence"},
        {name = "Black Cloudsheep", essence = "Dull Raging Essence"},
    },
    fishing = {},
    mining = {
        {name = "Copper Ore", chance = "100%"},
    },
    herbalism = {
        {name = "Cotton Ball", chance = "100%"},
        {name = "Oak Wood", chance = "100%"},
        {name = "Apple", chance = "100%"},
    }
}

data["Plains 4"] = {
    name = "Plains 4",
    image = "Plains 4.png",
    caption = "",
    level = 15,
    portals = {
        {name = "Plains 3"},
        {name = "Snapper Shore"},
    },
    interactables = {},
    monsters = {
        {name = "Squishling", essence = "Dull Nurturing Essence"},
        {name = "Cloudsheep", essence = "Dull Life Essence"},
        {name = "Angeling", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Copper Ore", chance = "100%"},
    },
    herbalism = {
        {name = "Cotton Ball", chance = "100%"},
        {name = "Oak Wood", chance = "100%"},
        {name = "Apple", chance = "100%"},
    }
}

data["Around the Seashore"] = {
    name = "Around the Seashore",
    image = "Around the Seashore.png",
    caption = "",
    level = 16,
    portals = {},
    interactables = {
        {type = "npc", name = "Shepherd"},
    },
    monsters = {
        {name = "Cloudsheep", essence = "Dull Life Essence"},
        {name = "Snapper", essence = "Dull Eternal Essence"},
        {name = "Crusher", essence = "Dull Eternal Essence"},
    },
    fishing = {
        {name = "Glowfish", chance = "22%"},
        {name = "Electray", chance = "15.6%"},
        {name = "Starfish", chance = "13.7%"},
        {name = "Clownfish", chance = "13.7%"},
        {name = "Ice Salmon", chance = "10.7%"},
        {name = "Exotic Tuna", chance = "7.8%"},
        {name = "Seaweed", chance = "5.9%"},
        {name = "Clam", chance = "4.9%"},
        {name = "Shrimp", chance = "3.4%"},
    },
    mining = {
        {name = "Quartz", chance = "88.2%"},
        {name = "Stone", chance = "11.8%"},
    },
    herbalism = {
        {name = "Sea Grapes", chance = "100%"},
        {name = "Coconut", chance = "100%"},
        {name = "Coconut Wood", chance = "100%"},
    }
}

data["Snapper Shore"] = {
    name = "Snapper Shore",
    image = "Snapper Shore.png",
    caption = "",
    level = 18,
    portals = {
        {name = "Plains 4"},
        {name = "Around the Seashore"},
    },
    interactables = {
        {type = "npc", name = "Gevil"},
    },
    monsters = {
        {name = "Snapper", essence = "Dull Eternal Essence"},
        {name = "Crusher", essence = "Dull Eternal Essence"},
    },
    fishing = {
        {name = "Glowfish", chance = "22%"},
        {name = "Electray", chance = "15.6%"},
        {name = "Starfish", chance = "13.7%"},
        {name = "Clownfish", chance = "13.7%"},
        {name = "Ice Salmon", chance = "10.7%"},
        {name = "Exotic Tuna", chance = "7.8%"},
        {name = "Seaweed", chance = "5.9%"},
        {name = "Clam", chance = "4.9%"},
        {name = "Shrimp", chance = "3.4%"},
    },
    mining = {
        {name = "Quartz", chance = "88.2%"},
        {name = "Stone", chance = "11.8%"},
    },
    herbalism = {
        {name = "Sea Grapes", chance = "100%"},
        {name = "Coconut", chance = "100%"},
        {name = "Coconut Wood", chance = "100%"},
    }
}

data["Seashell Cove"] = {
    name = "Seashell Cove",
    image = "Seashell Cove.png",
    caption = "",
    level = 20,
    portals = {
        {name = "Around the Seashore"},
        {name = "Savannahs 1"},
        {name = "Beach Cave"},
    },
    interactables = {},
    monsters = {
        {name = "Snapper", essence = "Dull Eternal Essence"},
        {name = "Crusher", essence = "Dull Eternal Essence"},
    },
    fishing = {
        {name = "Glowfish", chance = "22%"},
        {name = "Electray", chance = "15.6%"},
        {name = "Starfish", chance = "13.7%"},
        {name = "Clownfish", chance = "13.7%"},
        {name = "Ice Salmon", chance = "10.7%"},
        {name = "Exotic Tuna", chance = "7.8%"},
        {name = "Seaweed", chance = "5.9%"},
        {name = "Clam", chance = "4.9%"},
        {name = "Shrimp", chance = "3.4%"},
    },
    mining = {
        {name = "Quartz", chance = "88.2%"},
        {name = "Stone", chance = "11.8%"},
    },
    herbalism = {
        {name = "Sea Grapes", chance = "100%"},
        {name = "Coconut", chance = "100%"},
        {name = "Coconut Wood", chance = "100%"},
    }
}

data["Beach Cave"] = {
    name = "Beach Cave",
    image = "Beach Cave.png",
    caption = "",
    level = 21,
    portals = {
        {name = "Seashell Cove"},
    },
    interactables = {},
    monsters = {
        {name = "Troppo", essence = "Dull Ghostly Essence"},
        {name = "Droppo", essence = "Dull Nurturing Essence"},
    },
    fishing = {},
    mining = {
        {name = "Blue Shard", chance = "20.5%"},
        {name = "Red Shard", chance = "20.5%"},
        {name = "Yellow Shard", chance = "20.5%"},
        {name = "Blue Crystal", chance = "12.8%"},
        {name = "Red Crystal", chance = "12.8%"},
        {name = "Yellow Crystal", chance = "12.8%"},
    },
    herbalism = {}
}

data["Savanna 1"] = {
    name = "Savanna 1",
    image = "Savanna 1.png",
    caption = "",
    level = 22,
    portals = {
        {name = "Outskirts East"},
        {name = "Seashell Cove"},
        {name = "Savanna 2"},
        {name = "Desert 1"},
    },
    interactables = {
        {type = "npc", name = "Kmitty"},
    },
    monsters = {
        {name = "Licki", essence = "Dull Historic Essence"},
        {name = "Bananek", essence = "Dull Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Iron Ore", chance = "100%"},
    },
    herbalism = {
        {name = "Aloe Vera", chance = "53.8%"},
        {name = "Pineapple", chance = "46.2%"},
        {name = "Acacia Wood", chance = "100%"},
    }
}

data["Windy Savannah"] = {
    name = "Windy Savannah",
    image = "Windy Savannah.png",
    caption = "",
    level = 22,
    portals = {
        {name = "Desert 1"},
        {name = "Snowy Mountain 3"},
    },
    interactables = {},
    monsters = {
        {name = "Licki", essence = "Dull Historic Essence"},
        {name = "Citruslime", essence = "Dull Ranging Essence"},
    },
    fishing = {
        {name = "Moss Snail", chance = "73.5%"},
        {name = "Electray", chance = "17.6%"},
        {name = "Glowfish", chance = "8.8%"},
    },
    mining = {
        {name = "Iron Ore", chance = "100%"},
    },
    herbalism = {
        {name = "Aloe Vera", chance = "53.8%"},
        {name = "Pineapple", chance = "48.2%"},
        {name = "Acacia Wood", chance = "100%"},
    }
}

data["Savanna 2"] = {
    name = "Savanna 2",
    image = "Savanna 2.png",
    caption = "",
    level = 23,
    portals = {
        {name = "Savanna 1"},
        {name = "Savanna 3"},
    },
    interactables = {},
    monsters = {
        {name = "Licki", essence = "Dull Historic Essence"},
        {name = "Bananek", essence = "Doll Life Essence"},
        {name = "Citruslime", essence = "Dull Ranging Essence"},
    },
    fishing = {},
    mining = {
        {name = "Iron Ore", chance = "100%"},
    },
    herbalism = {
        {name = "Aloe Vera", chance = "53.8%"},
        {name = "Pineapple", chance = "46.2%"},
        {name = "Acacia Wood", chance = "100%"},
    }
}

data["Savanna 3"] = {
    name = "Savanna 3",
    image = "Savanna 3.png",
    caption = "",
    level = 24,
    portals = {
        {name = "Savanna 2"},
        {name = "Banana Farm"},
        {name = "Misty Forest 1"},
    },
    interactables = {
        {type = "warp", name = "Goddess Statue"},
    },
    monsters = {
        {name = "Citruslime", essence = "Dull Ranging Essence"},
        {name = "Bananek", essence = "Doll Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Iron Ore", chance = "100%"},
    },
    herbalism = {
        {name = "Aloe Vera", chance = "53.8%"},
        {name = "Pineapple", chance = "48.2%"},
        {name = "Acacia Wood", chance = "100%"},
    }
}

data["Banana Farm"] = {
    name = "Banana Farm",
    image = "Banana Farm.png",
    caption = "",
    level = 25,
    portals = {
        {name = "Savanna 3"},
        {name = "Savanna 2"},
    },
    interactables = {},
    monsters = {
        {name = "Bananek", essence = "Doll Life Essence"},
        {name = "Overripe Bananek", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Iron Ore", chance = "100%"},
    },
    herbalism = {
        {name = "Aloe Vera", chance = "53.8%"},
        {name = "Pineapple", chance = "46.2%"},
        {name = "Acacia Wood", chance = "100%"},
    }
}

data["Glowing Cave"] = {
    name = "Glowing Cave",
    image = "Glowing Cave.png",
    caption = "",
    level = 25,
    portals = {
        {name = "Plains 3"},
        {name = "Plains 2"},
    },
    interactables = {},
    monsters = {
        {name = "Cursed Slime", essence = ""},
        {name = "Glided Slime", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Blue Shard", chance = "20.5%"},
        {name = "Red Shard", chance = "20.5%"},
        {name = "Yellow Shard", chance = "20.5%"},
        {name = "Blue Crystal", chance = "12.8%"},
        {name = "Red Crystal", chance = "12.8%"},
        {name = "Yellow Crystal", chance = "12.8%"},
    },
    herbalism = {}
}

data["Misty Forest 1"] = {
    name = "Misty Forest 1",
    image = "Misty Forest 1.png",
    caption = "",
    level = 27,
    portals = {
        {name = "Savanna 3"},
        {name = "Misty Forest 2"},
    },
    interactables = {
        {type = "npc", name = "Ferryman"},
    },
    monsters = {
        {name = "Monoghoul", essence = "Dull Ghostly Essence"},
    },
    fishing = {},
    mining = {
        {name = "Petrified Wood", chance = "100%"},
    },
    herbalism = {
        {name = "Lantern Bulb", chance = "100%"},
        {name = "Misty Fruit", chance = "100%"},
        {name = "Misty Wood", chance = "100%"},
    }
}

data["Misty Forest 2"] = {
    name = "Misty Forest 2",
    image = "Misty Forest 2.png",
    caption = "",
    level = 27,
    portals = {
        {name = "Outskirts Southeast"},
        {name = "Misty Forest 1"},
        {name = "Misty Forest 3"},
        {name = "Snowy Mountain 1"},
        {name = "Lost Forest"},
    },
    interactables = {},
    monsters = {
        {name = "Monoghoul", essence = "Dull Ghostly Essence"},
        {name = "Sadling", essence = "Dull Metal Essence"},
    },
    fishing = {
        {name = "Clownfish", chance = "67.6%"},
        {name = "Seaweed", chance = "18.9%"},
        {name = "Starfish", chance = "13.5%"},
    },
    mining = {
        {name = "Petrified Wood", chance = "100%"},
    },
    herbalism = {
        {name = "Lantern Bulb", chance = "100%"},
        {name = "Misty Fruit", chance = "100%"},
        {name = "Misty Wood", chance = "100%"},
    }
}

data["Misty Forest 3"] = {
    name = "Misty Forest 3",
    image = "Misty Forest 3.png",
    caption = "",
    level = 27,
    portals = {
        {name = "Misty Forest 2"},
        {name = "Sulfuric Plains 1"},
        {name = "Lost Forest"},
    },
    interactables = {},
    monsters = {
        {name = "Sadling", essence = "Dull Metal Essence"},
        {name = "Dark Pumpkin", essence = "Dull Eternal Essence"},
    },
    fishing = {},
    mining = {
        {name = "Petrified Wood", chance = "100%"},
    },
    herbalism = {
        {name = "Lantern Bulb", chance = "100%"},
        {name = "Misty Fruit", chance = "100%"},
        {name = "Misty Wood", chance = "100%"},
    }
}

data["Lost Forest"] = {
    name = "Lost Forest",
    image = "Lost Forest.png",
    caption = "",
    level = 30,
    portals = {
        {name = "Misty Forest 2"},
        {name = "Misty Forest 3"},
    },
    interactables = {},
    monsters = {},
    fishing = {
        {name = "Clownfish", chance = "67.6%"},
        {name = "Seaweed", chance = "18.9%"},
        {name = "Starfish", chance = "13.5%"},
    },
    mining = {
        {name = "Petrified Wood", chance = "100%"},
    },
    herbalism = {
        {name = "Lantern Bulb", chance = "100%"},
        {name = "Misty Fruit", chance = "100%"},
        {name = "Misty Wood", chance = "100%"},
    }
}

data["Sulfuric Plains 1"] = {
    name = "Sulfuric Plains 1",
    image = "Sulfuric Plains 1.png",
    caption = "",
    level = 32,
    portals = {
        {name = "Misty Forest 3"},
        {name = "Sulfuric Plains 2"},
    },
    interactables = {
        {type = "warp", name = "Goddess Statue"},
    },
    monsters = {
        {name = "Stinky Sheep", essence = "Dull Historic Essence"},
    },
    fishing = {},
    mining = {
        {name = "Sulfuric Powder", chance = "100%"},
    },
    herbalism = {
        {name = "Silver Leaf", chance = "54.5%"},
        {name = "Yellow Garlic", chance = "45.5%"},
        {name = "Sulfuric Wood", chance = "100%"},
        {name = "Spot Tomato", chance = "100%"},
    }
}

data["Sulfuric Plains 2"] = {
    name = "Sulfuric Plains 2",
    image = "Sulfuric Plains 2.png",
    caption = "",
    level = 33,
    portals = {
        {name = "Sulfuric Plains 1"},
        {name = "Sulfuric Plains 3"},
    },
    interactables = {},
    monsters = {
        {name = "Stinky Sheep", essence = "Dull Historic Essence"},
        {name = "Spot Slime", essence = "Dull Ghostly Essence"},
    },
    fishing = {
        {name = "Sulfur Brine", chance = "47.6%"},
        {name = "Sulfur", chance = "23.8%"},
        {name = "Clownfish", chance = "16.7%"},
        {name = "Seaweed", chance = "11.9%"},
    },
    mining = {
        {name = "Sulfuric Powder", chance = "100%"},
    },
    herbalism = {
        {name = "Silver Leaf", chance = "54.5%"},
        {name = "Yellow Garlic", chance = "45.5%"},
        {name = "Sulfuric Wood", chance = "100%"},
        {name = "Spot Tomato", chance = "100%"},
    }
}

data["Sulfuric Path 2"] = {
    name = "Sulfuric Path 2",
    image = "Sulfuric Path 2.png",
    caption = "",
    level = 33,
    portals = {
        {name = "Sulfuric Path 1"},
        {name = "Rocky Path 2"},
    },
    interactables = {},
    monsters = {
        {name = "Anger Licke", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Sulfuric Powder", chance = "100%"},
    },
    herbalism = {
        {name = "Silver Leaf", chance = "54.5%"},
        {name = "Yellow Garlic", chance = "45.5%"},
        {name = "Sulfuric Wood", chance = "100%"},
        {name = "Spot Tomato", chance = "100%"},
    }
}

data["Sulfuric Plains 3"] = {
    name = "Sulfuric Plains 3",
    image = "Sulfuric Plains 3.png",
    caption = "",
    level = 33,
    portals = {
        {name = "Outskirts Southwest"},
        {name = "Sulfuric Plains 2"},
        {name = "Lost Plains"},
    },
    interactables = {},
    monsters = {
        {name = "Licke", essence = "Dull Raging Essence"},
        {name = "Spot Slime", essence = "Dull Ghostly Essence"},
    },
    fishing = {},
    mining = {
        {name = "Sulfuric Powder", chance = "100%"},
    },
    herbalism = {
        {name = "Silver Leaf", chance = "54.5%"},
        {name = "Yellow Garlic", chance = "45.5%"},
        {name = "Sulfuric Wood", chance = "100%"},
        {name = "Spot Tomato", chance = "100%"},
    }
}

data["Lost Plains"] = {
    name = "Lost Plains",
    image = "Lost Plains.png",
    caption = "",
    level = 37,
    portals = {
        {name = "Sulfuric Plains 3"},
        {name = "Forest Pond"},
    },
    interactables = {
        {type = "npc", name = "Shepherd"},
    },
    monsters = {
        {name = "Rainbow Cloudsheep", essence = "Life Essence"},
    },
    fishing = {},
    mining = {
        {name = "Copper Ore", chance = "100%"},
    },
    herbalism = {
        {name = "Cotton Ball", chance = "100%"},
        {name = "Oak Wood", chance = "100%"},
        {name = "Apple", chance = "100%"},
    }
}

data["Forest Seeding Ground"] = {
    name = "Forest Seeding Ground",
    image = "Forest Seeding Ground.png",
    caption = "",
    level = 38,
    portals = {
        {name = "Forest Lake"},
        {name = "Forest Pond"},
    },
    interactables = {},
    monsters = {
        {name = "Soulpling", essence = "Nurturing Essence"},
        {name = "Humblebee", essence = "Eternal Essence"},
    },
    fishing = {
        {name = "Angel Fish", chance = "40.3%"},
        {name = "Ice Salmon", chance = "40.3%"},
        {name = "Chomper", chance = "11.3%"},
        {name = "Clownfish", chance = "8.1%"},
    },
    mining = {
        {name = "Malachite Ore", chance = "83.3%"},
        {name = "Emerald", chance = "16.7%"},
    },
    herbalism = {
        {name = "Sweet Fern", chance = "34.8%"},
        {name = "Forest Seal", chance = "34.8%"},
        {name = "Melon", chance = "30.4%"},
        {name = "Green Cherry", chance = "100%"},
        {name = "Hard Wood", chance = "100%"},
    }
}

data["Forest Pond"] = {
    name = "Forest Pond",
    image = "Forest Pond.png",
    caption = "",
    level = 38,
    portals = {
        {name = "Forest Lake"},
        {name = "Forest 1"},
        {name = "Lost Plains"},
    },
    interactables = {},
    monsters = {
        {name = "Soulpling", essence = "Nurturing Essence"},
        {name = "Humblebee", essence = "Eternal Essence"},
    },
    fishing = {
        {name = "Angel Fish", chance = "40.3%"},
        {name = "Ice Salmon", chance = "40.3%"},
        {name = "Chomper", chance = "11.3%"},
        {name = "Clownfish", chance = "8.1%"},
    },
    mining = {
        {name = "Malachite Ore", chance = "83.3%"},
        {name = "Emerald", chance = "16.7%"},
    },
    herbalism = {
        {name = "Sweet Fern", chance = "34.8%"},
        {name = "Forest Seal", chance = "34.8%"},
        {name = "Melon", chance = "30.4%"},
        {name = "Green Cherry", chance = "100%"},
        {name = "Hard Wood", chance = "100%"},
    }
}

data["Forest 2"] = {
    name = "Forest 2",
    image = "Forest 2.png",
    caption = "",
    level = 39,
    portals = {
        {name = "Forest Lake"},
        {name = "Forest 1"},
        {name = "Forest 3"},
    },
    interactables = {},
    monsters = {
        {name = "Soultree", essence = "Dull Ghostly Essence"},
        {name = "Soulpling", essence = "Nurturing Essence"},
        {name = "Ferni", essence = "Metal Essence"},
        {name = "Humblebee", essence = "Eternal Essence"},
    },
    fishing = {
        {name = "Angel Fish", chance = "40.3%"},
        {name = "Ice Salmon", chance = "40.3%"},
        {name = "Chomper", chance = "11.3%"},
        {name = "Clownfish", chance = "8.1%"},
    },
    mining = {
        {name = "Malachite Ore", chance = "83.3%"},
        {name = "Emerald", chance = "16.7%"},
    },
    herbalism = {
        {name = "Sweet Fern", chance = "34.8%"},
        {name = "Forest Seal", chance = "34.8%"},
        {name = "Melon", chance = "30.4%"},
        {name = "Green Cherry", chance = "100%"},
        {name = "Hard Wood", chance = "100%"},
    }
}

data["Forest 3"] = {
    name = "Forest 3",
    image = "Forest 3.png",
    caption = "",
    level = 39,
    portals = {
        {name = "Swamp"},
        {name = "Forest 2"},
    },
    interactables = {},
    monsters = {
        {name = "Soultree", essence = "Dull Ghostly Essence"},
        {name = "Soulpling", essence = "Nurturing Essence"},
        {name = "Ferni", essence = "Metal Essence"},
        {name = "Humblebee", essence = "Eternal Essence"},
    },
    fishing = {
        {name = "Angel Fish", chance = "40.3%"},
        {name = "Ice Salmon", chance = "40.3%"},
        {name = "Chomper", chance = "11.3%"},
        {name = "Clownfish", chance = "8.1%"},
    },
    mining = {
        {name = "Malachite Ore", chance = "83.3%"},
        {name = "Emerald", chance = "16.7%"},
    },
    herbalism = {
        {name = "Sweet Fern", chance = "34.8%"},
        {name = "Forest Seal", chance = "34.8%"},
        {name = "Melon", chance = "30.4%"},
        {name = "Green Cherry", chance = "100%"},
        {name = "Hard Wood", chance = "100%"},
    }
}

data["Forest Lake"] = {
    name = "Forest Lake",
    image = "Forest Lake.png",
    caption = "",
    level = 40,
    portals = {
        {name = "Forest 1"},
        {name = "Forest Seeding Ground"},
    },
    interactables = {},
    monsters = {
        {name = "Soublind", essence = ""},
        {name = "Soultree", essence = "Dull Ghostly Essence"},
        {name = "Humblebee", essence = "Eternal Essence"},
        {name = "Water Spot", essence = ""},
    },
    fishing = {
        {name = "Angel Fish", chance = "40.3%"},
        {name = "Ice Salmon", chance = "40.3%"},
        {name = "Chomper", chance = "11.3%"},
        {name = "Clownfish", chance = "8.1%"},
    },
    mining = {
        {name = "Malachite Ore", chance = "83.3%"},
        {name = "Emerald", chance = "16.7%"},
    },
    herbalism = {
        {name = "Sweet Fern", chance = "34.8%"},
        {name = "Forest Seal", chance = "34.8%"},
        {name = "Melon", chance = "30.4%"},
        {name = "Green Cherry", chance = "100%"},
        {name = "Hard Wood", chance = "100%"},
    }
}

data["Forest 1"] = {
    name = "Forest 1",
    image = "Forest 1.png",
    caption = "",
    level = 40,
    portals = {
        {name = "Forest Lake"},
        {name = "Forest Pond"},
        {name = "Forest 2"},
        {name = "Plains 1"},
        {name = "Deep Forest 1"},
    },
    interactables = {
        {type = "npc", name = "Shop Keeper"},
        {type = "warp", name = "Goddess Statue"},
    },
    monsters = {
        {name = "Ferni", essence = "Metal Essence"},
        {name = "Big Slime", essence = ""},
    },
    fishing = {
        {name = "Angel Fish", chance = "40.3%"},
        {name = "Ice Salmon", chance = "40.3%"},
        {name = "Chomper", chance = "11.3%"},
        {name = "Clownfish", chance = "8.1%"},
    },
    mining = {
        {name = "Malachite Ore", chance = "83.3%"},
        {name = "Emerald", chance = "16.7%"},
    },
    herbalism = {
        {name = "Sweet Fern", chance = "34.8%"},
        {name = "Forest Seal", chance = "34.8%"},
        {name = "Melon", chance = "30.4%"},
        {name = "Green Cherry", chance = "100%"},
        {name = "Hard Wood", chance = "100%"},
    }
}

data["Ocean 2"] = {
    name = "Ocean 2",
    image = "Ocean 2.png",
    caption = "",
    level = 44,
    portals = {
        {name = "Swamp"},
        {name = "Ocean 3"},
    },
    interactables = {
        {type = "warp", name = "Goddess Statue"},
        {type = "npc", name = "Tailor"},
    },
    monsters = {
        {name = "Sweel", essence = "Historic Essence"},
        {name = "Giga", essence = "Raging Essence"},
        {name = "Bubble Snake", essence = "Nurturing Essence"},
    },
    fishing = {
        {name = "Exotic Tuna", chance = "35.2%"},
        {name = "Wolf Fish", chance = "35.2%"},
        {name = "Seaweed", chance = "16.9%"},
        {name = "Electray", chance = "8.5%"},
        {name = "Angel Fish", chance = "4.2%"},
    },
    mining = {
        {name = "Cobalt Ore", chance = "83.3%"},
        {name = "Aquamarine", chance = "16.7%"},
    },
    herbalism = {
        {name = "Poceanto", chance = "100%"},
        {name = "Corals", chance = "100%"},
    }
}

data["Cold Ocean Cave"] = {
    name = "Cold Ocean Cave",
    image = "Cold Ocean Cave.png",
    caption = "",
    level = 44,
    portals = {
        {name = "Ocean 1"},
        {name = "Ocean 4"},
    },
    interactables = {},
    monsters = {
        {name = "Froni", essence = ""},
        {name = "Sweel", essence = "Historic Essence"},
    },
    fishing = {},
    mining = {
        {name = "Blue Shard", chance = "20.5%"},
        {name = "Red Shard", chance = "20.5%"},
        {name = "Yellow Shard", chance = "20.5%"},
        {name = "Blue Crystal", chance = "12.8%"},
        {name = "Red Crystal", chance = "12.8%"},
        {name = "Yellow Crystal", chance = "12.8%"},
    },
    herbalism = {}
}

data["Ocean 4"] = {
    name = "Ocean 4",
    image = "Ocean 4.png",
    caption = "",
    level = 44,
    portals = {
        {name = "Ocean 1"},
        {name = "Desert 4"},
    },
    interactables = {},
    monsters = {
        {name = "Sweel", essence = "Historic Essence"},
        {name = "Giga", essence = "Raging Essence"},
        {name = "Bubble Snake", essence = "Nurturing Essence"},
    },
    fishing = {
        {name = "Exotic Tuna", chance = "35.2%"},
        {name = "Wolf Fish", chance = "35.2%"},
        {name = "Seaweed", chance = "16.9%"},
        {name = "Electray", chance = "8.5%"},
        {name = "Angel Fish", chance = "4.2%"},
    },
    mining = {
        {name = "Cobalt Ore", chance = "83.3%"},
        {name = "Aquamarine", chance = "16.7%"},
    },
    herbalism = {
        {name = "Poceanto", chance = "100%"},
        {name = "Corals", chance = "100%"},
    }
}

data["Ocean 3"] = {
    name = "Ocean 3",
    image = "Ocean 3.png",
    caption = "",
    level = 45,
    portals = {
        {name = "Ocean 1"},
        {name = "Ocean 2"},
    },
    interactables = {},
    monsters = {
        {name = "Sweel", essence = "Historic Essence"},
        {name = "Giga", essence = "Raging Essence"},
        {name = "Bubble Snake", essence = "Nurturing Essence"},
    },
    fishing = {
        {name = "Exotic Tuna", chance = "35.2%"},
        {name = "Wolf Fish", chance = "35.2%"},
        {name = "Seaweed", chance = "16.9%"},
        {name = "Electray", chance = "8.5%"},
        {name = "Angel Fish", chance = "4.2%"},
    },
    mining = {
        {name = "Cobalt Ore", chance = "83.3%"},
        {name = "Aquamarine", chance = "16.7%"},
    },
    herbalism = {
        {name = "Poceanto", chance = "100%"},
        {name = "Corals", chance = "100%"},
    }
}

data["Ocean 1"] = {
    name = "Ocean 1",
    image = "Ocean 1.png",
    caption = "",
    level = 46,
    portals = {
        {name = "Around the Seashore"},
        {name = "Ocean 3"},
        {name = "Ocean 4"},
        {name = "Deep Ocean 1"},
    },
    interactables = {},
    monsters = {
        {name = "Giga", essence = "Raging Essence"},
    },
    fishing = {
        {name = "Exotic Tuna", chance = "35.2%"},
        {name = "Wolf Fish", chance = "35.2%"},
        {name = "Seaweed", chance = "16.9%"},
        {name = "Electray", chance = "8.5%"},
        {name = "Angel Fish", chance = "4.2%"},
    },
    mining = {
        {name = "Cobalt Ore", chance = "83.3%"},
        {name = "Aquamarine", chance = "16.7%"},
    },
    herbalism = {
        {name = "Poceanto", chance = "100%"},
        {name = "Corals", chance = "100%"},
    }
}

data["Desert 4"] = {
    name = "Desert 4",
    image = "Desert 4.png",
    caption = "",
    level = 50,
    portals = {
        {name = "Desert 3"},
        {name = "Ocean 4"},
    },
    interactables = {},
    monsters = {
        {name = "Dragonfruit", essence = "Ghostly Essence"},
        {name = "Slabbit", essence = "Historic Essence"},
        {name = "Desert Bandit", essence = ""},
        {name = "Rokkik", essence = "Metal Essence"},
    },
    fishing = {
        {name = "Glowfish", chance = "80.6%"},
        {name = "Angel Fish", chance = "12.9%"},
        {name = "Chomper", chance = "6.5%"},
    },
    mining = {
        {name = "Bismuth", chance = "83.3%"},
        {name = "Ruby", chance = "16.7%"},
    },
    herbalism = {
        {name = "Desert Sage", chance = "41.2%"},
        {name = "Desert Flower", chance = "35.3%"},
        {name = "Desert Rose", chance = "23.5%"},
        {name = "Cactus Fruit", chance = "100%"},
        {name = "Cactus", chance = "100%"},
    }
}

data["Desert 3"] = {
    name = "Desert 3",
    image = "Desert 3.png",
    caption = "",
    level = 51,
    portals = {
        {name = "Desert 2"},
        {name = "Desert 4"},
    },
    interactables = {},
    monsters = {
        {name = "Dragonfruit", essence = "Ghostly Essence"},
        {name = "Slabbit", essence = "Historic Essence"},
        {name = "Desert Bandit", essence = ""},
        {name = "Rokkik", essence = "Metal Essence"},
    },
    fishing = {},
    mining = {
        {name = "Bismuth", chance = "83.3%"},
        {name = "Ruby", chance = "16.7%"},
    },
    herbalism = {
        {name = "Desert Sage", chance = "41.2%"},
        {name = "Desert Flower", chance = "35.3%"},
        {name = "Desert Rose", chance = "23.5%"},
        {name = "Cactus Fruit", chance = "100%"},
        {name = "Cactus", chance = "100%"},
    }
}

data["Desert 2"] = {
    name = "Desert 2",
    image = "Desert 2.png",
    caption = "",
    level = 54,
    portals = {
        {name = "Desert 1"},
        {name = "Desert 3"},
        {name = "Desert 8"},
        {name = "Desert Hideout"},
    },
    interactables = {},
    monsters = {
        {name = "Dragonfruit", essence = "Ghostly Essence"},
        {name = "Slabbit", essence = "Historic Essence"},
        {name = "Desert Bandit", essence = ""},
        {name = "Rokkik", essence = "Metal Essence"},
    },
    fishing = {},
    mining = {
        {name = "Bismuth", chance = "83.3%"},
        {name = "Ruby", chance = "16.7%"},
    },
    herbalism = {
        {name = "Desert Sage", chance = "41.2%"},
        {name = "Desert Flower", chance = "35.3%"},
        {name = "Desert Rose", chance = "23.5%"},
        {name = "Cactus Fruit", chance = "100%"},
        {name = "Cactus", chance = "100%"},
    }
}

data["Desert 1"] = {
    name = "Desert 1",
    image = "Desert 1.png",
    caption = "",
    level = 55,
    portals = {
        {name = "Savanna 1"},
        {name = "Desert 2"},
        {name = "Windy Savannah"},
    },
    interactables = {},
    monsters = {
        {name = "Dragonfruit", essence = "Ghostly Essence"},
        {name = "Slabbit", essence = "Historic Essence"},
        {name = "Desert Bandit", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Bismuth", chance = "83.3%"},
        {name = "Ruby", chance = "16.7%"},
    },
    herbalism = {
        {name = "Desert Sage", chance = "41.2%"},
        {name = "Desert Flower", chance = "35.3%"},
        {name = "Desert Rose", chance = "23.5%"},
        {name = "Cactus Fruit", chance = "100%"},
        {name = "Cactus", chance = "100%"},
    }
}

data["Snowy Mountain 1"] = {
    name = "Snowy Mountain 1",
    image = "Snowy Mountain 1.png",
    caption = "",
    level = 59,
    portals = {
        {name = "Misty Forest 2"},
        {name = "Snowy Mountain 2"},
        {name = "Snowy Mountain 4"},
    },
    interactables = {
        {type = "warp", name = "Goddess Statue"},
        {type = "npc", name = "Ferryman"},
    },
    monsters = {
        {name = "Snowball", essence = "Raging Essence"},
        {name = "Blizzy", essence = "Nurturing Essence"},
    },
    fishing = {
        {name = "Ice Jelly", chance = "42.4%"},
        {name = "Electray", chance = "42.4%"},
        {name = "Ice Salmon", chance = "10.2%"},
        {name = "Glowfish", chance = "5.1%"},
    },
    mining = {
        {name = "Titanium Ore", chance = "83.3%"},
        {name = "Sapphire", chance = "16.7%"},
    },
    herbalism = {
        {name = "Dew Bloom", chance = "33.3%"},
        {name = "Blue Ginseng", chance = "33.3%"},
        {name = "Ice Flax Seed", chance = "33.3%"},
        {name = "Blue Cinnamon", chance = "100%"},
    }
}

data["Snowy Mountain 2"] = {
    name = "Snowy Mountain 2",
    image = "Snowy Mountain 2.png",
    caption = "",
    level = 59,
    portals = {
        {name = "Snowy Mountain 1"},
        {name = "Snowy Mountain 3"},
    },
    interactables = {},
    monsters = {
        {name = "Snowball", essence = "Raging Essence"},
        {name = "Blizzy", essence = "Nurturing Essence"},
    },
    fishing = {},
    mining = {
        {name = "Titanium Ore", chance = "83.3%"},
        {name = "Sapphire", chance = "16.7%"},
    },
    herbalism = {
        {name = "Dew Bloom", chance = "33.3%"},
        {name = "Blue Ginseng", chance = "33.3%"},
        {name = "Ice Flax Seed", chance = "33.3%"},
        {name = "Blue Cinnamon", chance = "100%"},
    }
}

data["Snowy Mountain 4"] = {
    name = "Snowy Mountain 4",
    image = "Snowy Mountain 4.png",
    caption = "",
    level = 61,
    portals = {
        {name = "Snowy Mountain 1"},
        {name = "Rocky Path 2"},
    },
    interactables = {},
    monsters = {
        {name = "Snowball", essence = "Raging Essence"},
        {name = "Blizzy", essence = "Nurturing Essence"},
    },
    fishing = {},
    mining = {
        {name = "Titanium Ore", chance = "83.3%"},
        {name = "Sapphire", chance = "16.7%"},
    },
    herbalism = {
        {name = "Dew Bloom", chance = "33.3%"},
        {name = "Blue Ginseng", chance = "33.3%"},
        {name = "Ice Flax Seed", chance = "33.3%"},
        {name = "Blue Cinnamon", chance = "100%"},
    }
}

data["Snowy Mountain 3"] = {
    name = "Snowy Mountain 3",
    image = "Snowy Mountain 3.png",
    caption = "",
    level = 63,
    portals = {
        {name = "Windy Savannah"},
        {name = "Snowy Mountain 2"},
    },
    interactables = {},
    monsters = {
        {name = "Snowball", essence = "Raging Essence"},
        {name = "Blizzy", essence = "Nurturing Essence"},
    },
    fishing = {
        {name = "Ice Jelly", chance = "42.4%"},
        {name = "Electray", chance = "42.4%"},
        {name = "Ice Salmon", chance = "10.2%"},
        {name = "Glowfish", chance = "5.1%"},
    },
    mining = {
        {name = "Titanium Ore", chance = "83.3%"},
        {name = "Sapphire", chance = "16.7%"},
    },
    herbalism = {
        {name = "Dew Bloom", chance = "33.3%"},
        {name = "Blue Ginseng", chance = "33.3%"},
        {name = "Ice Flax Seed", chance = "33.3%"},
        {name = "Blue Cinnamon", chance = "100%"},
    }
}

data["Rocky Path 1"] = {
    name = "Rocky Path 1",
    image = "Rocky Path 1.png",
    caption = "",
    level = 65,
    portals = {
        {name = "Sulfuric Plains 3"},
        {name = "Rocky Path 2"},
        {name = "Rocky Path 3"},
    },
    interactables = {},
    monsters = {
        {name = "Cat Golem", essence = "Historic Essence"},
        {name = "Rokkak", essence = "Metal Essence"},
        {name = "Rocky", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Gold Ore", chance = "83.3%"},
        {name = "Amber", chance = "16.7%"},
    },
    herbalism = {
        {name = "Ashen Onion", chance = "35.3%"},
        {name = "Red Soy", chance = "35.3%"},
        {name = "Red Dandelion", chance = "29.4%"},
        {name = "Rocky Wood", chance = "100%"},
    }
}

data["Rocky Path 2"] = {
    name = "Rocky Path 2",
    image = "Rocky Path 2.png",
    caption = "",
    level = 67,
    portals = {
        {name = "Snowy Mountain 4"},
        {name = "Rocky Path 1"},
    },
    interactables = {},
    monsters = {
        {name = "Rokkak", essence = "Metal Essence"},
        {name = "Rocky", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Gold Ore", chance = "83.3%"},
        {name = "Amber", chance = "16.7%"},
    },
    herbalism = {
        {name = "Ashen Onion", chance = "35.3%"},
        {name = "Red Soy", chance = "35.3%"},
        {name = "Red Dandelion", chance = "29.4%"},
        {name = "Rocky Wood", chance = "100%"},
    }
}

data["Rocky Path Den"] = {
    name = "Rocky Path Den",
    image = "Rocky Path Den.png",
    caption = "",
    level = 69,
    portals = {
        {name = "Rocky Path 2"},
    },
    interactables = {},
    monsters = {
        {name = "Cat Golem", essence = "Historic Essence"},
        {name = "Cat Guardian", essence = ""},
    },
    fishing = {
        {name = "Fire Fish", chance = "38.5%"},
        {name = "Lava Octopus", chance = "38.5%"},
        {name = "Wolf Fish", chance = "9.2%"},
        {name = "Spookee", chance = "9.2%"},
        {name = "Moss Snail", chance = "4.6%"},
    },
    mining = {
        {name = "Gold Ore", chance = "83.3%"},
        {name = "Amber", chance = "16.7%"},
    },
    herbalism = {
        {name = "Ashen Onion", chance = "35.3%"},
        {name = "Red Soy", chance = "35.3%"},
        {name = "Red Dandelion", chance = "29.4%"},
        {name = "Rocky Wood", chance = "100%"},
    }
}

data["Detour"] = {
    name = "Detour",
    image = "Detour.png",
    caption = "",
    level = 70,
    portals = {
        {name = "Rocky Path 3"},
    },
    interactables = {},
    monsters = {
        {name = "Ashball", essence = ""},
        {name = "Cat Guardian", essence = ""},
    },
    fishing = {
        {name = "Fire Fish", chance = "38.5%"},
        {name = "Lava Octopus", chance = "38.5%"},
        {name = "Wolf Fish", chance = "9.2%"},
        {name = "Spookee", chance = "9.2%"},
        {name = "Moss Snail", chance = "4.6%"},
    },
    mining = {
        {name = "Gold Ore", chance = "83.3%"},
        {name = "Amber", chance = "16.7%"},
    },
    herbalism = {
        {name = "Ashen Onion", chance = "35.3%"},
        {name = "Red Soy", chance = "35.3%"},
        {name = "Red Dandelion", chance = "29.4%"},
        {name = "Rocky Wood", chance = "100%"},
    }
}

data["Rocky Path 3"] = {
    name = "Rocky Path 3",
    image = "Rocky Path 3.png",
    caption = "",
    level = 70,
    portals = {
        {name = "Deep Tree Way"},
        {name = "Rocky Path 1"},
    },
    interactables = {
        {type = "warp", name = "Goddess Statue"},
    },
    monsters = {
        {name = "Cat Golem", essence = "Historic Essence"},
        {name = "Rokkak", essence = "Metal Essence"},
        {name = "Rocky", essence = ""},
    },
    fishing = {
        {name = "Fire Fish", chance = "38.5%"},
        {name = "Lava Octopus", chance = "38.5%"},
        {name = "Wolf Fish", chance = "9.2%"},
        {name = "Spookee", chance = "9.2%"},
        {name = "Moss Snail", chance = "4.6%"},
    },
    mining = {
        {name = "Gold Ore", chance = "83.3%"},
        {name = "Amber", chance = "16.7%"},
    },
    herbalism = {
        {name = "Ashen Onion", chance = "35.3%"},
        {name = "Red Soy", chance = "35.3%"},
        {name = "Red Dandelion", chance = "29.4%"},
        {name = "Rocky Wood", chance = "100%"},
    }
}

data["Deep Tree Way"] = {
    name = "Deep Tree Way",
    image = "Deep Tree Way.png",
    caption = "",
    level = 73,
    portals = {
        {name = "Rocky Path 3"},
        {name = "Deep Forest 1"},
    },
    interactables = {
        {type = "npc", name = "Kmitty"},
    },
    monsters = {
        {name = "Shroomie", essence = ""},
        {name = "Tallshroom", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Mithril Ore", chance = "82.2%"},
        {name = "Dream Fragment", chance = "16.4%"},
        {name = "Dreamstone", chance = "1.4%"},
    },
    herbalism = {
        {name = "Mithril Ore", chance = "53.8%"},
        {name = "Censhroom", chance = "46.2%"},
        {name = "Eon Fruit", chance = "100%"},
        {name = "Eon Wood", chance = "100%"},
    }
}

data["Deep Forest 1"] = {
    name = "Deep Forest 1",
    image = "Deep Forest 1.png",
    caption = "",
    level = 73,
    portals = {
        {name = "Rocky Path 3"},
        {name = "Deep Forest 2"},
        {name = "Giant Tree"},
        {name = "Deep Forest Threshold"},
    },
    interactables = {
        {type = "npc", name = "Jeweler"},
    },
    monsters = {
        {name = "Shroomie", essence = ""},
        {name = "Tallshroom", essence = ""},
    },
    fishing = {
        {name = "Spookee", chance = "29.8%"},
        {name = "Abyssal Leech", chance = "29.8%"},
        {name = "Abyssal Urchin", chance = "29.8%"},
        {name = "Abyssal Octopus", chance = "7.1%"},
        {name = "Wolf Fish", chance = "3.6%"},
    },
    mining = {
        {name = "Mithril Ore", chance = "82.2%"},
        {name = "Dream Fragment", chance = "16.4%"},
        {name = "Dreamstone", chance = "1.4%"},
    },
    herbalism = {
        {name = "Mithril Ore", chance = "53.8%"},
        {name = "Censhroom", chance = "46.2%"},
        {name = "Eon Fruit", chance = "100%"},
        {name = "Eon Wood", chance = "100%"},
    }
}

data["Deep Forest 2"] = {
    name = "Deep Forest 2",
    image = "Deep Forest 2.png",
    caption = "",
    level = 75,
    portals = {
        {name = "Deep Forest 1"},
        {name = "Deep Forest 3"},
    },
    interactables = {
        {type = "npc", name = "Shopkeeper"},
    },
    monsters = {
        {name = "Shroomie", essence = ""},
        {name = "Tallshroom", essence = ""},
        {name = "Fernek", essence = "Radiant Raging Essence"},
    },
    fishing = {
        {name = "Spookee", chance = "29.8%"},
        {name = "Abyssal Leech", chance = "29.8%"},
        {name = "Abyssal Urchin", chance = "29.8%"},
        {name = "Abyssal Octopus", chance = "7.1%"},
        {name = "Wolf Fish", chance = "3.6%"},
    },
    mining = {
        {name = "Mithril Ore", chance = "82.2%"},
        {name = "Dream Fragment", chance = "16.4%"},
        {name = "Dreamstone", chance = "1.4%"},
    },
    herbalism = {
        {name = "Mithril Ore", chance = "53.8%"},
        {name = "Censhroom", chance = "46.2%"},
        {name = "Eon Fruit", chance = "100%"},
        {name = "Eon Wood", chance = "100%"},
    }
}

data["Deep Forest 3"] = {
    name = "Deep Forest 3",
    image = "Deep Forest 3.png",
    caption = "",
    level = 75,
    portals = {
        {name = "Rocky Path 3"},
        {name = "Deep Forest 1"},
    },
    interactables = {},
    monsters = {
        {name = "Shroomie", essence = ""},
        {name = "Tallshroom", essence = ""},
        {name = "Fernek", essence = "Radiant Raging Essence"},
        {name = "Kiwi", essence = "Radiant Ghostly Essence"},
    },
    fishing = {},
    mining = {
        {name = "Mithril Ore", chance = "82.2%"},
        {name = "Dream Fragment", chance = "16.4%"},
        {name = "Dreamstone", chance = "1.4%"},
    },
    herbalism = {
        {name = "Mithril Ore", chance = "53.8%"},
        {name = "Censhroom", chance = "46.2%"},
        {name = "Eon Fruit", chance = "100%"},
        {name = "Eon Wood", chance = "100%"},
    }
}

data["Lost Peak"] = {
    name = "Lost Peak",
    image = "Lost Peak.png",
    caption = "",
    level = 76,
    portals = {
        {name = "Deep Forest 3"},
        {name = "Deep Ocean 4"},
    },
    interactables = {
        {type = "sign", name = "???"},
    },
    monsters = {
        {name = "Shroomie", essence = ""},
        {name = "Tallshroom", essence = ""},
    },
    fishing = {
        {name = "Spookee", chance = "29.8%"},
        {name = "Abyssal Leech", chance = "29.8%"},
        {name = "Abyssal Urchin", chance = "29.8%"},
        {name = "Abyssal Octopus", chance = "7.1%"},
        {name = "Wolf Fish", chance = "3.6%"},
    },
    mining = {
        {name = "Mithril Ore", chance = "82.2%"},
        {name = "Dream Fragment", chance = "16.4%"},
        {name = "Dreamstone", chance = "1.4%"},
    },
    herbalism = {
        {name = "Mithril Ore", chance = "53.8%"},
        {name = "Censhroom", chance = "46.2%"},
        {name = "Eon Fruit", chance = "100%"},
        {name = "Eon Wood", chance = "100%"},
    }
}

data["Deep Forest Den"] = {
    name = "Deep Forest Den",
    image = "Deep Forest Den.png",
    caption = "",
    level = 76,
    portals = {
        {name = "Deep Forest 3"},
    },
    interactables = {},
    monsters = {
        {name = "Blossnek", essence = ""},
        {name = "Fernek", essence = "Radiant Raging Essence"},
    },
    fishing = {},
    mining = {
        {name = "Mithril Ore", chance = "82.2%"},
        {name = "Dream Fragment", chance = "16.4%"},
        {name = "Dreamstone", chance = "1.4%"},
    },
    herbalism = {
        {name = "Ancient Fern", chance = "53.8%"},
        {name = "Censhroom", chance = "46.2%"},
        {name = "Eon Fruit", chance = "100%"},
        {name = "Eon Wood", chance = "100%"},
    }
}

data["Deep Forest Threshold"] = {
    name = "Deep Forest Threshold",
    image = "Deep Forest Threshold.png",
    caption = "",
    level = 78,
    portals = {
        {name = "Deep Forest 1"},
    },
    interactables = {},
    monsters = {},
    fishing = {
        {name = "Spookee", chance = "29.8%"},
        {name = "Abyssal Leech", chance = "29.8%"},
        {name = "Abyssal Urchin", chance = "29.8%"},
        {name = "Abyssal Octopus", chance = "7.1%"},
        {name = "Wolf Fish", chance = "3.6%"},
    },
    mining = {
        {name = "Mithril Ore", chance = "82.2%"},
        {name = "Dream Fragment", chance = "16.4%"},
        {name = "Dreamstone", chance = "1.4%"},
    },
    herbalism = {
        {name = "Mithril Ore", chance = "53.8%"},
        {name = "Censhroom", chance = "46.2%"},
        {name = "Eon Fruit", chance = "100%"},
        {name = "Eon Wood", chance = "100%"},
    }
}

data["Deep Ocean 2"] = {
    name = "Deep Ocean 2",
    image = "Deep Ocean 2.png",
    caption = "",
    level = 79,
    portals = {
        {name = "Deep Ocean 3"},
        {name = "Desert Coast"},
    },
    interactables = {},
    monsters = {
        {name = "Soulfish", essence = "Radiant Ghostly Essence"},
        {name = "Upsivase", essence = "Radiant Metal Essence"},
        {name = "Coral", essence = "Radiant Nurturing Essence"},
        {name = "Ancient Soul", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Arcane Crystal", chance = "82.2%"},
        {name = "Ocean Shard", chance = "16.4%"},
        {name = "Ocean Heart", chance = "1.4%"},
    },
    herbalism = {
        {name = "Arcane Pearl", chance = "50%"},
        {name = "Angelic Algae", chance = "50%"},
        {name = "Forbidden Fruit", chance = "100%"},
        {name = "Depth Vine", chance = "100%"},
    }
}

data["Deep Ocean 3"] = {
    name = "Deep Ocean 3",
    image = "Deep Ocean 3.png",
    caption = "",
    level = 79,
    portals = {
        {name = "Deep Ocean 1"},
        {name = "Deep Ocean 4"},
    },
    interactables = {},
    monsters = {
        {name = "Soulfish", essence = "Radiant Ghostly Essence"},
        {name = "Upsivase", essence = "Radiant Metal Essence"},
    },
    fishing = {},
    mining = {
        {name = "Arcane Crystal", chance = "82.2%"},
        {name = "Ocean Shard", chance = "16.4%"},
        {name = "Ocean Heart", chance = "1.4%"},
    },
    herbalism = {
        {name = "Arcane Pearl", chance = "50%"},
        {name = "Angelic Algae", chance = "50%"},
        {name = "Forbidden Fruit", chance = "100%"},
        {name = "Depth Vine", chance = "100%"},
    }
}

data["Deep Ocean 4"] = {
    name = "Deep Ocean 4",
    image = "Deep Ocean 4.png",
    caption = "",
    level = 79,
    portals = {
        {name = "Lost Peak"},
        {name = "Deep Ocean 3"},
    },
    interactables = {},
    monsters = {
        {name = "Soulfish", essence = "Radiant Ghostly Essence"},
        {name = "Upsivase", essence = "Radiant Metal Essence"},
    },
    fishing = {},
    mining = {
        {name = "Arcane Crystal", chance = "82.2%"},
        {name = "Ocean Shard", chance = "16.4%"},
        {name = "Ocean Heart", chance = "1.4%"},
    },
    herbalism = {
        {name = "Arcane Pearl", chance = "50%"},
        {name = "Angelic Algae", chance = "50%"},
        {name = "Forbidden Fruit", chance = "100%"},
        {name = "Depth Vine", chance = "100%"},
    }
}

data["Deep Ocean 1"] = {
    name = "Deep Ocean 1",
    image = "Deep Ocean 1.png",
    caption = "",
    level = 81,
    portals = {
        {name = "Ocean 1"},
        {name = "Deep Ocean 3"},
        {name = "Deep Ocean 2"},
        {name = "Great Trench"},
    },
    interactables = {},
    monsters = {
        {name = "Soulfish", essence = "Radiant Ghostly Essence"},
        {name = "Upsivase", essence = "Radiant Metal Essence"},
        {name = "Coral", essence = "Radiant Nurturing Essence"},
        {name = "Ancient Soul", essence = ""},
    },
    fishing = {},
    mining = {
        {name = "Arcane Crystal", chance = "82.2%"},
        {name = "Ocean Shard", chance = "16.4%"},
        {name = "Ocean Heart", chance = "1.4%"},
    },
    herbalism = {
        {name = "Arcane Pearl", chance = "50%"},
        {name = "Angelic Algae", chance = "50%"},
        {name = "Forbidden Fruit", chance = "100%"},
        {name = "Depth Vine", chance = "100%"},
    }
}

data["Desert Coast"] = {
    name = "Desert Coast",
    image = "Desert Coast.png",
    caption = "",
    level = 85,
    portals = {
        {name = "Deep Ocean 2"},
        {name = "Desert 6"},
    },
    interactables = {
        {type = "warp", name = "Goddess Statue"},
    },
    monsters = {
        {name = "Saowl", essence = ""},
        {name = "Pyramid Guardian", essence = "Radiant Historic Essence"},
    },
    fishing = {
        {name = "Abyssal Octopus", chance = "73.5%"},
        {name = "Spookee", chance = "17.6%"},
        {name = "Abyssal Urchin", chance = "8.8%"},
    },
    mining = {
        {name = "Starmetal", chance = "82.2%"},
        {name = "Black Diamond Fragment", chance = "16.4%"},
        {name = "Black Diamond", chance = "1.4%"},
    },
    herbalism = {
        {name = "Memory Agave", chance = "50%"},
        {name = "Epochal Lily", chance = "50%"},
        {name = "Sculpted Cacti", chance = "100%"},
        {name = "History Fruit", chance = "100%"},
    }
}

data["Desert 5"] = {
    name = "Desert 5",
    image = "Desert 5.png",
    caption = "",
    level = 86,
    portals = {
        {name = "Desert 7"},
        {name = "Pyramid"},
    },
    interactables = {},
    monsters = {
        {name = "Blaze", essence = ""},
        {name = "Haunted Flame", essence = ""},
        {name = "Lost Bard", essence = ""},
        {name = "Saowl", essence = ""},
        {name = "Pyramid Guardian", essence = "Radiant Historic Essence"},
        {name = "Lime Slime", essence = "Radiant Metal Essence"},
    },
    fishing = {},
    mining = {
        {name = "Starmetal", chance = "82.2%"},
        {name = "Black Diamond Fragment", chance = "16.4%"},
        {name = "Black Diamond", chance = "1.4%"},
    },
    herbalism = {
        {name = "Memory Agave", chance = "50%"},
        {name = "Epochal Lily", chance = "50%"},
        {name = "Sculpted Cacti", chance = "100%"},
        {name = "History Fruit", chance = "100%"},
    }
}

data["Desert 7"] = {
    name = "Desert 7",
    image = "Desert 7.png",
    caption = "",
    level = 88,
    portals = {
        {name = "Pyramid"},
        {name = "Desert 8"},
        {name = "Desert 5"},
    },
    interactables = {},
    monsters = {
        {name = "Pyramid Guardian", essence = "Radiant Historic Essence"},
        {name = "Lime Slime", essence = "Radiant Metal Essence"},
    },
    fishing = {},
    mining = {
        {name = "Starmetal", chance = "82.2%"},
        {name = "Black Diamond Fragment", chance = "16.4%"},
        {name = "Black Diamond", chance = "1.4%"},
    },
    herbalism = {
        {name = "Memory Agave", chance = "50%"},
        {name = "Epochal Lily", chance = "50%"},
        {name = "Sculpted Cacti", chance = "100%"},
        {name = "History Fruit", chance = "100%"},
    }
}

return data