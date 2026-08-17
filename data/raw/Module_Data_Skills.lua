local data = {}
------------------------------------------------------------------------------------------------------------------------------------------------
-- MELEE
------------------------------------------------------------------------------------------------------------------------------------------------
data["Melee (Passive)"] = {
    name = "Melee (Passive)",
    type = "Passive",
    image = "Melee.png",
    description = "Your Melee proficiency. It levels on its own as you deal Melee damage, gates which Melee skills you can learn, and lifts your Melee damage as it grows. Caps at 99.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {}, --n/a: passives are innate, not learned
    skillPoints = {}, --n/a: passives have no SP activation cost
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
    },
    maxLevel = "99", --passives level automatically and cap at 99, unlike normal skills (cap 20)
    passivePerks = { --level-gated bonuses; each repeats every `interval` levels up to maxLevel (e.g. "+1% Melee Damage" at Lv 3, 6, 9 ... 99). TODO: Module:Data/Formatting needs a render branch for type == "Passive" to display this table in place of skillUpgrades.
        {interval = "3", effect = "+1% Melee Damage"},
        {interval = "5", effect = "+2 Max HP"},
        {interval = "8", effect = "+1 Defense"},
        {interval = "12", effect = "+1 HP Regeneration Per Tick"},
    },
    skillUpgrades = {}, --n/a: passives have no learn/upgrade resource costs at any level
}
data["Slash"] = {
    name = "Slash",
    type = "Basic Attack",
    image = "Slash.png",
    description = "The default basic attack: a fast three-swing chain whose third swing lands for x1.35 damage.",
    benefits = "",
    basicActives = {
        {level = "1", stat = "+1.5% Speed"},
        {level = "1", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "2", stat = "+1.5% Speed"},
        {level = "2", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "3", stat = "+1.5% Speed"},
        {level = "3", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "4", stat = "+1.5% Speed"},
        {level = "4", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "5", stat = "+1.5% Speed"},
        {level = "5", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "6", stat = "+1.5% Speed"},
        {level = "6", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "7", stat = "+1.5% Speed"},
        {level = "7", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "8", stat = "+1.5% Speed"},
        {level = "8", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "9", stat = "+1.5% Speed"},
        {level = "9", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "10", stat = "+1.5% Speed"},
        {level = "10", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "11", stat = "+1.5% Speed"},
        {level = "11", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "12", stat = "+1.5% Speed"},
        {level = "12", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "13", stat = "+1.5% Speed"},
        {level = "13", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "14", stat = "+1.5% Speed"},
        {level = "14", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "15", stat = "+1.5% Speed"},
        {level = "15", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "16", stat = "+1.5% Speed"},
        {level = "16", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "17", stat = "+1.5% Speed"},
        {level = "17", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "18", stat = "+1.5% Speed"},
        {level = "18", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "19", stat = "+1.5% Speed"},
        {level = "19", stat = "+0.6 HP Regeneration Per Tick"},
        {level = "20", stat = "+1.5% Speed"},
        {level = "20", stat = "+0.6 HP Regeneration Per Tick"},
    },
    power = "8 + 5/Lv",
    size = "161% + 2%/Lv",
    mobAmount = "2",
    cost = "",
    cooldown = "0.5s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 1"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "75.4% + 23.4%/Lv"},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Heavy Strike"] = {
    name = "Heavy Strike",
    type = "Skill",
    image = "Heavy Strike.png",
    description = "Bring your weapon down in one heavy overhead swing that sends enemies flying with about three times the knockback of a normal attack. Hold the button to keep swinging.",
    benefits = "",
    basicActives = "",
    power = "28 + 14/Lv",
    size = "221% + 2%/Lv",
    mobAmount = "3 + 0/Lv",
    cost = "",
    cooldown = "2.6s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 4"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "208% + 123.6%/Lv"},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = "117.9% + 56.5%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Taunt"] = {
    name = "Taunt",
    type = "Buff",
    image = "Taunt.png",
    description = "Roar and force nearby monsters to attack you, then keep roaring automatically every 3 seconds for 90 seconds. Every monster hit stacks Berserk: +2 Speed, +2.5 Defense and +1.35% global damage per stack, up to 3(+1/lv) stacks. The damage multiplies with your other buff bonuses. Costs 0 SP to activate (+0 SP/Lv)",
    benefits = {
        {stat = "Berserk Stack: +2 Speed"},
        {stat = "Berserk Stack: +2.5 Defense"},
        {stat = "Berserk Stack: +1.35% Global Damage"},
        {stat = "Max Berserk Stacks: 3 + 1/Lv"},
    },
    basicActives = "",
    power = "1 + 0.5/Lv",
    size = "256.2% + 2.5%/Lv",
    mobAmount = "3 + 0/Lv",
    cost = "4.77 + 0.8/Lv MP",
    cooldown = "45.0s",
    duration = "6 + 0s/Lv",
    skillRequirements = {
        {stat = "Melee Lv 11"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = "3% + 0%/Lv"},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "16"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Onslaught"] = {
    name = "Onslaught",
    type = "Skill",
    image = "Onslaught.png",
    description = "Explode into a flurry, striking the nearest enemy about 14 times a second for the duration. Free to cast while Slash is your basic attack. Costs 3 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "2 + 1/Lv",
    size = "",
    mobAmount = "1 + 0/Lv",
    cost = "1.16 + 0.19/Lv MP",
    cooldown = "1.2s",
    duration = "0.7 + 0s/Lv",
    skillRequirements = {
        {stat = "Magic Lv 5"},
        {stat = "Melee Lv 35"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = "13.9% + 5.4%/Lv"},
        {rangeStat = "8.8% + 2.4%/Lv"},
        {magicStat = "8% + 2.4%/Lv"},
        {faithStat = "8.8% + 2.4%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Upward Strike"] = {
    name = "Upward Strike",
    type = "Skill",
    image = "Upward Strike.png",
    description = "Swing skyward, launching non-boss enemies straight up and stunning them for the duration. Nothing resists the launch; bosses ignore it. Costs 3 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "55 + 27.5/Lv",
    size = "130% + 2.5%/Lv",
    mobAmount = "4 + 0/Lv",
    cost = "",
    cooldown = "2.6s",
    duration = "1.2 + 0s/Lv",
    skillRequirements = {
        {stat = "Melee Lv 25"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = "50.2% + 25.8%/Lv"},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Bloodlust"] = {
    name = "Bloodlust",
    type = "Buff",
    image = "Bloodlust.png",
    description = "Embrace pain: every 5 damage you take adds a stack worth +1.34% global damage and +1 HP regen per tick, up to 5(+2.5/lv) stacks, but you take 35% more damage while it lasts. Multiplies with your other buff bonuses. Nearby party members gain 25% of your current damage bonus. Active for 0 SP",
    benefits = {
        {stat = "Per Stack: +1.34% Global Damage"},
        {stat = "Per Stack: +1 HP Regen per tick"},
        {stat = "Max Stacks: 5 + 2.5/Lv"},
        {stat = "Damage Taken: +35%"},
    },
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "4.68 + 0.78/Lv MP",
    cooldown = "40.1s",
    duration = "40s",
    skillRequirements = {
        {stat = "Melee Lv 27"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Undying"] = {
    name = "Undying",
    type = "Buff",
    image = "Undying.png",
    description = "Toggle. Refuse to fall: 20(+3.68/lv)% of the damage you take does not land at once, instead bleeding out of you over 4 seconds. Killing an enemy cleanses 25% of your remaining bleed, and every hit on a boss cleanses 2%. Lowers your MP regen by 1(+0.15/lv) per tick. Healing past full health mends the bleed by the excess. Costs 0 SP to activate (+0 SP/Lv)",
    benefits = {
        {stat = "Bleed: 20 + 3.68%/Lv"},
        {stat = "MP Regen: -(1 + 0.15/Lv) per tick"},
    },
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "1.0s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 32"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Raging Essence", quantity = "80"},
                {name = "Dull Metal Essence", quantity = "60"},
                {name = "Dull Life Essence", quantity = "60"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Grapple Strike"] = {
    name = "Grapple Strike",
    type = "Skill",
    image = "Grapple Strike.png",
    description = "Fling your hook at an enemy and yank yourself to it, stunning it on impact and riding it until you press jump to kick off. Costs 3 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "35 + 18/Lv",
    size = "",
    mobAmount = "1 + 0/Lv",
    cost = "1.22 + 0.2/Lv MP",
    cooldown = "3.9s",
    duration = "3.5 + 0.1s/Lv",
    skillRequirements = {
        {stat = "Melee Lv 20"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = "268% + 151.2%/Lv"},
        {rangeStat = "50.3% + 77.6%/Lv"},
        {magicStat = ""},
        {faithStat = "50.3% + 71.7%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
------------------------------------------------------------------------------------------------------------------------------------------------
-- FAITH
------------------------------------------------------------------------------------------------------------------------------------------------
data["Faith (Passive)"] = {
    name = "Faith (Passive)",
    type = "Passive",
    image = "Faith.png",
    description = "Your Faith proficiency. It levels on its own as you deal Faith damage, gates which Faith skills you can learn, and lifts your Faith damage as it grows. Caps at 99.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {}, --n/a: passives are innate, not learned
    skillPoints = {}, --n/a: passives have no SP activation cost
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Faith"},
    },
    maxLevel = "99", --passives level automatically and cap at 99, unlike normal skills (cap 20)
    passivePerks = { --level-gated bonuses; each repeats every `interval` levels up to maxLevel (e.g. "+1% Faith Damage" at Lv 3, 6, 9 ... 99). TODO: Module:Data/Formatting needs a render branch for type == "Passive" to display this table in place of skillUpgrades.
        {interval = "3", effect = "+1% Faith Damage"},
        {interval = "5", effect = "+1% Elemental Potency"},
        {interval = "6", effect = "+1% Damage Reduction"},
        {interval = "9", effect = "+1 Elemental Chance"},
    },
    skillUpgrades = {}, --n/a: passives have no learn/upgrade resource costs at any level
}
data["Divine Blessing"] = {
    name = "Divine Blessing",
    type = "Buff",
    image = "Divine Blessing.png",
    description = "Bless yourself with 2.5(+1.75/lv)% EXP, 1.5(+1.5/lv)% Skill EXP and 2.369(+0.79/lv)% Faith damage. Nearby party members share the EXP and Skill EXP bonuses at half strength. The Faith damage multiplies with your other buff bonuses.",
    benefits = {
	    {stat = "EXP: 2.5 + 1.75%/Lv"},
	    {stat = "Skill EXP: 1.5 + 1.5%/Lv"},
	    {stat = "Faith Damage: 2.369 + 0.79%/Lv"},
	},
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "14.16 + 2.36/Lv MP",
    cooldown = "5s",
    duration = "126 + 6/Lvs",
    skillRequirements = {
        {stat = "Faith Lv 11"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Faith"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Nova"] = {
    name = "Nova",
    type = "Basic Attack",
    image = "Nova.png",
    description = "A basic attack: release a pulse of spirit that hits everything in a circle around you, even enemies at your back.",
    benefits = {},
    basicActives = {
        {level = "4", stat = "+8% Elemental Potency"},
        {level = "8", stat = "+8% Elemental Potency"},
        {level = "12", stat = "+8% Elemental Potency"},
        {level = "16", stat = "+8% Elemental Potency"},
        {level = "20", stat = "+8% Elemental Potency"},
    },
    power = "19 + 9.5/Lv",
    size = "191% + 2%/Lv",
    mobAmount = "3",
    cost = "3 + 0.5/Lv MP",
    cooldown = "1.7s",
    duration = "",
    skillRequirements = {
        {stat = "Faith Lv 1"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = "160% + 80%/Lv"}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Faith"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Armor Link"] = {
    name = "Armor Link",
    type = "Skill",
    image = "Armor Link.png",
    description = "Pick a party member on your map: they take 35% less damage and you take that damage for them, rising to 45% at 100 CON, while half of every heal you receive flows to them too. The link never expires and follows them between maps, though it only works while you're together.",
    benefits = {},
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "1",
    cost = "",
    cooldown = "",
    duration = "600s",
    skillRequirements = {
        {stat = "Faith Lv 12"},
    },
    skillPoints = {
        {stat = "1 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Faith"} },
    skillUpgrades = {
    	{name = "Learn", resources = {{name = "", quantity = ""}}},
    },
}
data["Revitalize"] = {
    name = "Revitalize",
    type = "Skill",
    image = "Revitalize.png",
    description = "Pulse a wave of restoring light, healing yourself and the most wounded nearby players for this skill's power plus 1.5% (+0.5%/lv) of your max HP and 2.4% (+0.8%/lv) of your max MP, while searing enemies caught in the pulse.",
    benefits = "",
    basicActives = "",
    power = "50 + 25/Lv",
    size = "262% + 4%/Lv",
    mobAmount = "2 + 0.16/Lv",
    cost = "10 + 1.65/Lv MP",
    cooldown = "8.5s",
    duration = "",
    skillRequirements = {
        {stat = "Faith Lv 10"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = "112.4% + 121.8%/Lv"}, {rangeStat = ""}, {magicStat = ""}, {faithStat = "559.5% + 260.8%/Lv"}, {healthStat = "1.2% + 0.8%/Lv"}, {manaStat = "2.5% + 1.2%/Lv"}, {luckStat = ""},
    },
    skillClasses = { {name = "Faith"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Burst Shield"] = {
    name = "Burst Shield",
    type = "Skill",
    image = "Burst Shield.png",
    description = "Shield yourself and nearby party members for a moment: the next hit is cut by 30(+2.5/lv)% and the damage prevented is hurled back at the attacker five-fold, splashing nearby monsters.",
    benefits = "",
    basicActives = "",
    power = "12 + 6/Lv",
    size = "125% + 2%/Lv",
    mobAmount = "3",
    cost = "5 + 0.83/Lv MP",
    cooldown = "5.0s",
    duration = "2.5s",
    skillRequirements = {
        {stat = "Faith Lv 4"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = "12.2% + 26.3%/Lv"}, {rangeStat = ""}, {magicStat = ""}, {faithStat = "100.8% + 32.7%/Lv"}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Faith"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Dark Fire"] = {
    name = "Dark Fire",
    type = "Skill",
    image = "Dark Fire.png",
    description = "Wreathe yourself in dark flame that scorches the nearest enemies twice a second, gaining +3% damage per enemy in the circle (up to +15%). It burns 5% of your max HP and 7% of your max Shield every second, but can never kill you; while Undying is lit the health burn bleeds out over 4 seconds like any other hit. Stays lit until you use the skill again, which you can only do once its cooldown is ready; putting it out starts its cooldown too. While it is lit, your Shield does not recover on its own and your HP regen no longer speeds up while resting.",
    benefits = {
	    {stat = "HP: -5%/sec"},
	    {stat = "Shield: -7%/sec"},
	    {stat = "Shield Regen: -100%"},
	},
    basicActives = "",
    power = "7.5 + 3.5/Lv",
    size = "",
    mobAmount = "4",
    cost = "16 + 2.58/Lv MP",
    cooldown = "5.0s",
    duration = "",
    skillRequirements = {
        {stat = "Faith Lv 35"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = "34% + 21%/Lv"}, {rangeStat = ""}, {magicStat = ""}, {faithStat = "57% + 28%/Lv"}, {healthStat = "20% + 9.5%/Lv"}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Faith"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Smite (Skill)"] = {
    name = "Smite (Skill)",
    type = "Skill",
    image = "Smite (Skill).png",
    description = "Call your wrath down on the nearest enemies, striking through walls and floors with no line of sight needed. 'Yeah screw these monsters in particular' - D",
    benefits = "",
    basicActives = "",
    power = "42 + 21/Lv",
    size = "",
    mobAmount = "5",
    cost = "22 + 3.65/Lv MP",
    cooldown = "12.0s",
    duration = "",
    skillRequirements = {
        {stat = "Faith Lv 30"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = "235.5% + 251.1%/Lv"}, {rangeStat = ""}, {magicStat = ""}, {faithStat = "635.5% + 441.1%/Lv"}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Faith"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Historic Essence", quantity = "80"},
                {name = "Dull Eternal Essence", quantity = "60"},
                {name = "Dull Life Essence", quantity = "60"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Elemental Charge"] = {
    name = "Elemental Charge",
    type = "Buff",
    image = "Elemental Charge.png",
    description = "Toggle. Arms your weapon's element, adding 100(+3/lv)% Elemental Effect Chance, and every proc deals bonus elemental damage that grows with the hit. Lowers your MP regen by 2.88(+0.48/lv) per tick while active. Nearby party members gain half of the elemental chance while you have it on.",
    benefits = {
	    {stat = "Elemental Chance: 100 + 3%/Lv"},
	    {stat = "MP Regen: -(2.88 + 0.48/Lv) per tick"},
	},
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "1",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "Faith Lv 28"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Faith"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Divine Protection"] = {
    name = "Divine Protection",
    type = "Skill",
    image = "Divine Protection.png",
    description = "Ward yourself and nearby party members: the first killing blow each of you takes is cancelled, leaving 13.11(+5.24/lv)% of max HP instead.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "28.08 + 4.68/Lv MP",
    cooldown = "128.0s",
    duration = "24 + 4/Lvs",
    skillRequirements = {
        {stat = "Faith Lv 25"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = "13.09% + 5.27%/Lv"}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Faith"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Historic Essence", quantity = "45"},
                {name = "Dull Eternal Essence", quantity = "35"},
                {name = "Dull Life Essence", quantity = "34"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Dedication"] = {
    name = "Dedication",
    type = "Buff",
    image = "Dedication.png",
    description = "Passive stance. Your devotion magnifies your care: everything you heal or shield is 25(+5/lv)% stronger.",
    benefits = {
	    {stat = "Healing Power: 25 + 5%/Lv"},
    	{stat = "Shielding Power: 25 + 5%/Lv"},
	},
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "1.0s",
    duration = "",
    skillRequirements = {
        {stat = "Faith Lv 29"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Faith"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Historic Essence", quantity = "72"},
                {name = "Dull Eternal Essence", quantity = "54"},
                {name = "Dull Life Essence", quantity = "54"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
------------------------------------------------------------------------------------------------------------------------------------------------
-- RANGE
------------------------------------------------------------------------------------------------------------------------------------------------
data["Range (Passive)"] = {
    name = "Range (Passive)",
    type = "Passive",
    image = "Range.png",
    description = "Your Range proficiency. It levels on its own as you deal Range damage, gates which Range skills you can learn, and lifts your Range damage as it grows. Caps at 99.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {}, --n/a: passives are innate, not learned
    skillPoints = {}, --n/a: passives have no SP activation cost
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
    },
    maxLevel = "99", --passives level automatically and cap at 99, unlike normal skills (cap 20)
    passivePerks = { --level-gated bonuses; each repeats every `interval` levels up to maxLevel (e.g. "+1% Range Damage" at Lv 3, 6, 9 ... 99). TODO: Module:Data/Formatting needs a render branch for type == "Passive" to display this table in place of skillUpgrades.
        {interval = "3", effect = "+1% Range Damage"},
        {interval = "6", effect = "+1% HP on Hit Chance"},
        {interval = "8", effect = "+1% MP on Hit Chance"},
        {interval = "6", effect = "+1% Crit Rate"},
    },
    skillUpgrades = {}, --n/a: passives have no learn/upgrade resource costs at any level
}
data["Ninja Throw"] = {
    name = "Ninja Throw",
    type = "Basic Attack",
    image = "Ninja Throw.png",
    description = "A basic attack: hurl a throwing knife with barely any knockback, perfect for kiting.",
    benefits = "",
    basicActives = {
        {level = "5", stat = "+5% Crit Damage"},
        {level = "10", stat = "+5% Crit Damage"},
        {level = "15", stat = "+5% Crit Damage"},
        {level = "20", stat = "+5% Crit Damage"},
    },
    power = "16 + 8/Lv",
    size = "",
    mobAmount = "1",
    cost = "",
    cooldown = "0.4s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 1"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = "58.4% + 19.7%/Lv"}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Range"} },
    skillUpgrades = {
        {name = "Learn", resources = {{name = "", quantity = ""}}},
    },
}
data["Shadow Step"] = {
    name = "Shadow Step",
    type = "Buff",
    image = "Shadow Step.png",
    description = "Turn invisible, evading every attack, with 38(+2/lv) Speed and 7.1(+0.375/lv) Jump while hidden. When you reappear, Ambush grants 6.48(+3.402/lv)% global damage. Multiplies with your other buff bonuses.",
    benefits = "",
    power = "",
    size = "",
    mobAmount = "1",
    cost = "2.41 + 0.4/Lv MP",
    cooldown = "12s",
    duration = "2.61 + 0.11/Lvs",
    basicActives = "",
    skillRequirements = {
        {stat = "Range Lv 12"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Range"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Dash"] = {
    name = "Dash",
    type = "Skill",
    image = "Dash.png",
    description = "Dash in the direction you hold, untouchable for the whole dash, phasing through terrain when safe ground waits on the far side. Release early to stop short.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "1 MP",
    cooldown = "1.5s",
    duration = "0.5s",
    skillRequirements = {
        {stat = "Range Lv 8"},
    },
    skillPoints = {
        {stat = "2 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Range"} },
    skillUpgrades = {
        {name = "Learn", resources = {{name = "Dull Life Essence", quantity = "8"}}},
    },
}
data["Cursed Throw"] = {
    name = "Cursed Throw",
    type = "Skill",
    image = "Cursed Throw.png",
    description = "Throw a cursed kunai that chains between monsters, cursing each one. Whenever anyone hits a cursed enemy, every enemy you cursed takes 50% of a Cursed Throw hit (5x on bosses), up to 3 times. Death spreads the curse.",
    benefits = "",
    basicActives = "",
    power = "11.5 + 6/Lv",
    size = "",
    mobAmount = "4",
    cost = "2 + 0.25/Lv MP",
    cooldown = "3s",
    duration = "15s",
    skillRequirements = {
        {stat = "Range Lv 4"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = "56.8% + 25%/Lv"}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Range"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Siphon"] = {
    name = "Siphon",
    type = "Skill",
    image = "Siphon.png",
    description = "Throw a siphoning knife that tears life and mana out of its target and returns them to you as drifting wisps, restoring 1.5(+1.5/lv) HP plus 5% of your max HP, and 0.5(+0.5/lv) MP plus 3% of your max MP.",
    benefits = "",
    basicActives = "",
    power = "60 + 30/Lv",
    size = "",
    mobAmount = "1",
    cost = "1.5 + 0.25/Lv MP",
    cooldown = "3.2s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 8"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = "219% + 87%/Lv"}, {magicStat = "178.9% + 59.7%/Lv"}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Range"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Bullseye"] = {
    name = "Bullseye",
    type = "Buff",
    image = "Bullseye.png",
    description = "Steady your aim, adding 9(+2/lv) Crit Rate plus a bonus from your LUK and DEX. Nearby party members gain half of the crit rate bonus while it lasts.",
    benefits = "",
    basicActives = "",
    power = "7 + 2/Lv",
    size = "",
    mobAmount = "",
    cost = "6.72 + 1.12/Lv MP",
    cooldown = "10s",
    duration = "84 + 6s/Lv",
    skillRequirements = {
        {stat = "Range Lv 15"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = "50% + 0%/Lv"}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""}, {luckStat = "20% + 0%/Lv"}
    },
    skillClasses = { {name = "Range"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Shadow Twin"] = {
    name = "Shadow Twin",
    type = "Buff",
    image = "Shadow Twin.png",
    description = "Toggle. A shadow repeats every skill you cast for 7.2(+2.4/lv)% of your damage, and if a blow would kill you the twin dies in your place, leaving you at 1 HP.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "4s",
    duration = "15s",
    skillRequirements = {
        {stat = "Range Lv 30"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Range"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Seirei"] = {
    name = "Seirei",
    type = "Skill",
    image = "Seirei.png",
    description = "Throw two spirit-charged knives that always trigger your element's effect on hit, no chance roll needed.",
    benefits = "",
    basicActives = "",
    power = "25 + 15/Lv",
    size = "",
    mobAmount = "1",
    cost = "1.45 + 0.24/Lv MP",
    cooldown = "2.2s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 22"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = "81% + 27%/Lv"}, {magicStat = "54.9% + 18.4%/Lv"}, {faithStat = "54.9% + 18.4%/Lv"}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Range"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Triple Throw"] = {
    name = "Triple Throw",
    type = "Skill",
    image = "Triple Throw.png",
    description = "Snap out three throwing knives in a tight fan, each landing as its own hit with its own crit and element roll.",
    benefits = "",
    basicActives = "",
    power = "13 + 7/Lv",
    size = "",
    mobAmount = "1",
    cost = "0.6 + 0.1/Lv MP",
    cooldown = "1.2s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 20"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = "50.5% + 15.5%/Lv"}, {magicStat = "26% + 11%/Lv"}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Range"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Nurturing Essence", quantity = "42"},
                {name = "Dull Life Essence", quantity = "28"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
------------------------------------------------------------------------------------------------------------------------------------------------
-- MAGIC
------------------------------------------------------------------------------------------------------------------------------------------------
data["Magic (Passive)"] = {
    name = "Magic (Passive)",
    type = "Passive",
    image = "Magic.png",
    description = "Your Magic proficiency. It levels on its own as you deal Magic damage, gates which Magic skills you can learn, and lifts your Magic damage as it grows. Caps at 99.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {}, --n/a: passives are innate, not learned
    skillPoints = {}, --n/a: passives have no SP activation cost
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Magic"},
    },
    maxLevel = "99", --passives level automatically and cap at 99, unlike normal skills (cap 20)
    passivePerks = {
        {interval = "2", effect = "+2 Shield"},
        {interval = "3", effect = "+1% Magic Damage"},
        {interval = "5", effect = "+2 Max MP"},
        {interval = "12", effect = "+1 MP Regeneration Per Tick"},
    },
    skillUpgrades = {},--n/a: passives have no learn/upgrade resource costs at any level
}
data["Magic Burst"] = {
    name = "Magic Burst",
    type = "Basic Attack",
    image = "Magic Burst.png",
    description = "A basic attack: loose a cone of raw magic that detonates on its targets nearest-first, rolling outward through the group. Costs 0 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = {
        {level = "1", stat = "+1 MP Regeneration Per Tick"},
        {level = "3", stat = "+1 MP Regeneration Per Tick"},
        {level = "6", stat = "+1 MP Regeneration Per Tick"},
        {level = "9", stat = "+1 MP Regeneration Per Tick"},
        {level = "12", stat = "+1 MP Regeneration Per Tick"},
        {level = "15", stat = "+1 MP Regeneration Per Tick"},
        {level = "18", stat = "+1 MP Regeneration Per Tick"},
    },
    power = "11 + 5/Lv",
    size = "130% + 2.5%/Lv",
    mobAmount = "3",
    cost = "1 + 0.1/Lv MP",
    cooldown = "0.8s",
    duration = "",
    skillRequirements = {
        {stat = "Magic Lv 1"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = "105.4% + 42%/Lv"}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Gust"] = {
    name = "Gust",
    type = "Skill",
    image = "Gust.png",
    description = "Blast a sheet of wind that shoves everything in front of you with a strong knockback. Perfect for clearing a lane or pushing a pack off a ledge. Costs 2 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "20 + 10/Lv",
    size = "",
    mobAmount = "4",
    cost = "2.5 + 0.42/Lv MP",
    cooldown = "3.6s",
    duration = "",
    skillRequirements = {
        {stat = "Magic Lv 4"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = "300% + 145%/Lv"}, {faithStat = "90.1% + 100%/Lv"}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Soul Bomb"] = {
    name = "Soul Bomb",
    type = "Skill",
    image = "Soul Bomb.png",
    description = "Lob a soul-charged orb that detonates when a monster comes near, catching everything in the blast. Throw it into a clump. Costs 3 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "30 + 15/Lv",
    size = "",
    mobAmount = "4",
    cost = "1.45 + 0.24/Lv MP",
    cooldown = "2.4s",
    duration = "",
    skillRequirements = {
        {stat = "Magic Lv 8"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = "200% + 100%/Lv"}, {faithStat = "40% + 65%/Lv"}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Blink"] = {
    name = "Blink",
    type = "Skill",
    image = "Blink.png",
    description = "Teleport a short distance in the direction you hold, even straight up or down, phasing clean through walls. Costs 3 SP to activate (+0 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "3 MP",
    cooldown = "1.0s",
    duration = "",
    skillRequirements = {
        {stat = "Magic Lv 9"},
    },
    skillPoints = {
        {stat = "3 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {name = "Learn", resources = {{name = "Dull Life Essence", quantity = "10"}}},
    },
}
data["Mana Shield"] = {
    name = "Mana Shield",
    type = "Buff",
    image = "Mana Shield.png",
    description = "Toggle. Damage that would reach your HP is halved and billed to your MP instead. Also grants 6(+3.5/Lv)(+0.25 per INT) Shield, 1.8(+0.3/Lv) MP regen per tick, and 3.48(+1.08/Lv)% Magic and Faith damage. The damage bonus multiplies with your other buff bonuses. Nearby party members gain the full Shield bonus while you have it on. Costs 0 SP to activate (+0 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "0.4 + 0.05/Lv",
    size = "",
    mobAmount = "1",
    cost = "0.96 + 0.16/Lv MP",
    cooldown = "0.8s",
    duration = "",
    skillRequirements = {
        {stat = "Magic Lv 10"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = "118.6% + 11.9%"}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Flame Barrage"] = {
    name = "Flame Barrage",
    type = "Skill",
    image = "Flame Barrage.png",
    description = "Hold a jet of fire that spits out 7 fireballs while you steer the stream up and down. Each fireball hits as its own strike with heavy knockback. Costs 3 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "13 + 6.5/Lv",
    size = "95% + 2.5%/Lv",
    mobAmount = "1",
    cost = "3.09 + 0.52/Lv MP",
    cooldown = "4.8s",
    duration = "1.05s",
    skillRequirements = {
        {stat = "Magic Lv 15"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = "66.1% + 33.5%/Lv"}, {faithStat = "10.1% + 22.2%/Lv"}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Empower"] = {
    name = "Empower",
    type = "Buff",
    image = "Empower.png",
    description = "Bind Empower to another skill to permanently boost it: x1.272(+0.039/lv) damage and 1.25x size. Costs 0 SP to activate (+0 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "3.47 + 0.58/Lv MP",
    cooldown = "3.2s",
    duration = "3s",
    skillRequirements = {
        {stat = "Magic Lv 25"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Ghostly Essence", quantity = "46"},
                {name = "Dull Eternal Essence", quantity = "35"},
                {name = "Dull Life Essence", quantity = "34"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Star Fall"] = {
    name = "Star Fall",
    type = "Skill",
    image = "Star Fall.png",
    description = "Hang a starfield over the nearest monster that rains 15 homing stars, each landing as its own strike. Costs 1 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "16 + 8/Lv",
    size = "",
    mobAmount = "1",
    cost = "3.81 + 0.64/Lv MP",
    cooldown = "6.0s",
    duration = "5s",
    skillRequirements = {
        {stat = "Magic Lv 30"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = "29.5% + 16.6%/Lv"}, {magicStat = "% + 31.5%/Lv"}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"}, {name = "Range"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Ghostly Essence", quantity = "80"},
                {name = "Dull Eternal Essence", quantity = "60"},
                {name = "Dull Life Essence", quantity = "60"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Gravity Well"] = {
    name = "Gravity Well",
    type = "Skill",
    image = "Gravity Well.png",
    description = "Pin a gravity well onto the enemy you strike, dragging everything nearby toward its center and crushing whatever reaches the core 3 times a second. Bosses are too heavy to drag. Costs 3 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "7 + 3.5/Lv",
    size = "105% + 2.5%/Lv",
    mobAmount = "2",
    cost = "7 + 1.16/Lv MP",
    cooldown = "8.4s",
    duration = "5s",
    skillRequirements = {
        {stat = "Magic Lv 35"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = "44% + 21.6%/Lv"}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Ghostly Essence", quantity = "80"},
                {name = "Dull Eternal Essence", quantity = "60"},
                {name = "Dull Life Essence", quantity = "60"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Focused Mind"] = {
    name = "Focused Mind",
    type = "Buff",
    image = "Focused Mind.png",
    description = "Toggle. Sharpen your mind to a single edge: your highest damage stat rises 15(+2.368/lv)%, and your other damage stats fall 10(+1.05/lv)%. Nearby party members gain 4.8(+0.22/lv)% to their own highest damage stat. Lowers your MP regen by 1(+0.15/lv) per tick. Costs 0 SP to activate (+0 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "0.8s",
    duration = "",
    skillRequirements = {
        {stat = "Magic Lv 21"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = ""}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Ghostly Essence", quantity = "45"},
                {name = "Dull Life Essence", quantity = "30"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Familiar"] = {
    name = "Familiar",
    type = "Buff",
    image = "Familiar.png",
    description = "Toggle. Summon up to two familiars (chosen when you activate the skill): Turtle grants Shield and Defense, Cat grants Speed and attack speed, Rabbit gathers nearby soul drops and finds more soul crystals, Bat bites enemies and steals their life and mana, Snake spits poison clouds. Familiars grow with the skill's level. Lowers your MP regen by 1(+0.15/lv) per tick. Costs 0 SP to activate (+0 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "11 + 5/Lv",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "0.8s",
    duration = "",
    skillRequirements = {
        {stat = "Magic Lv 26"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = "105.4% + 42%/Lv"}, {faithStat = ""}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Ghostly Essence", quantity = "52"},
                {name = "Dull Eternal Essence", quantity = "39"},
                {name = "Dull Life Essence", quantity = "39"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Arcane Surge"] = {
    name = "Arcane Surge",
    type = "Skill",
    image = "Arcane Surge.png",
    description = "Roll a hunting ball of raw magic that rumbles forward, homing onto enemies and battering everything it touches every 0.4 seconds. Costs 3 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "7 + 4/Lv",
    size = "",
    mobAmount = "3",
    cost = "4 + 0.66/Lv MP",
    cooldown = "6.0s",
    duration = "5.5s",
    skillRequirements = {
        {stat = "Magic Lv 20"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = {
        {meleeStat = ""}, {rangeStat = ""}, {magicStat = "55.6% + 23%/Lv"}, {faithStat = "11.1% + 12%/Lv"}, {healthStat = ""}, {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = { {name = "Magic"} },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Shield Bash"] = {
    name = "Shield Bash",
    type = "Basic Attack",
    image = "Shield Bash.png",
    description = "A basic attack: rock back, then lunge shield-first, bulldozing enemies out of your way into a pile. Bosses bounce you off instead. Costs 1 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = {
        {level = "1", stat = "+12 Max HP"},
        {level = "2", stat = "+12 Max HP, +3 Defense"},
        {level = "3", stat = "+12 Max HP"},
        {level = "4", stat = "+12 Max HP, +3 Defense"},
        {level = "5", stat = "+12 Max HP"},
        {level = "6", stat = "+12 Max HP, +3 Defense"},
        {level = "7", stat = "+12 Max HP"},
        {level = "8", stat = "+12 Max HP, +3 Defense"},
        {level = "9", stat = "+12 Max HP"},
        {level = "10", stat = "+12 Max HP, +3 Defense"},
        {level = "11", stat = "+12 Max HP"},
        {level = "12", stat = "+12 Max HP, +3 Defense"},
        {level = "13", stat = "+12 Max HP"},
        {level = "14", stat = "+12 Max HP, +3 Defense"},
        {level = "15", stat = "+12 Max HP"},
        {level = "16", stat = "+12 Max HP, +3 Defense"},
        {level = "17", stat = "+12 Max HP"},
        {level = "18", stat = "+12 Max HP, +3 Defense"},
        {level = "19", stat = "+12 Max HP"},
        {level = "20", stat = "+12 Max HP, +3 Defense"},
    },
    power = "8 + 4/Lv",
    size = "106% + 2%/Lv",
    mobAmount = "3",
    cost = "0.5 + 0.09/Lv MP",
    cooldown = "1.4s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 5"},
        {stat = "Faith Lv 5"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "100% + 50%/Lv"},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = "100% + 50%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Shield Slam"] = {
    name = "Shield Slam",
    type = "Skill",
    image = "Shield Slam.png",
    description = "Charge shield-first at the nearest enemy, invulnerable on the way, sending it flying with a strong knockback. Every slam grants 7(+2/lv)% of your max HP as Shield, even past your Shield cap. Costs 2 SP to activate (+1 SP/Lv)",
    benefits = "",
    basicActives = "",
    power = "60 + 30/Lv",
    size = "",
    mobAmount = "1",
    cost = "3.7 + 0.2/Lv MP",
    cooldown = "3.9s",
    duration = "0.5s",
    skillRequirements = {
        {stat = "Melee Lv 16"},
        {stat = "Faith Lv 12"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "302.5% + 152.2%/Lv"},
        {rangeStat = ""},
        {magicStat = "8.9% + 85.1%/Lv"},
        {faithStat = "242.6% + 138%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Vanguard"] = {
    name = "Vanguard",
    type = "Buff",
    image = "Vanguard.png",
    description = "Toggle. Project a protective bubble: party members inside take 21.25(+1.25/lv)% less damage (you absorb it for them), everything caught inside raises your Defense, and monsters in the bubble take x1.042(+1.55%/lv) damage from you. Trains from damage you deal to monsters inside the bubble, and from damage you absorb for allies. Costs 0 SP to activate (+0 SP/Lv)",
    benefits = {
        {stat = "Party Damage Reduction: 21.25 + 1.25%/Lv"},
        {stat = "Damage to Monsters in Bubble: x1.042 + 1.55%/Lv"},
    },
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "1.0s",
    duration = "0.5 + 0s/Lv",
    skillRequirements = {
        {stat = "Melee Lv 12"},
        {stat = "Faith Lv 8"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Punishment"] = {
    name = "Punishment",
    type = "Skill",
    image = "Punishment.png",
    description = "Drive your weapon into the ground, launching and stunning non-boss enemies, then erupt twice more at the impact point.",
    benefits = "",
    basicActives = "",
    power = "12 + 6/Lv",
    size = "141% + 2%/Lv",
    mobAmount = "5 + 0/Lv",
    cost = "1.87 + 0.31/Lv MP",
    cooldown = "3.5s",
    duration = "1.5 + 0s/Lv",
    skillRequirements = {
        {stat = "Melee Lv 8"},
        {stat = "Faith Lv 8"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "50% + 25%/Lv"},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = "50% + 25%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Force of Will"] = {
    name = "Force of Will",
    type = "Skill",
    image = "Force of Will.png",
    description = "Channel a hunger that drags the four furthest enemies around you toward you twice a second, damaging them as it pulls. You stay free to move; bosses are untouched. Your will hardens you for 15(+2.368/lv) Defense while it lasts. Costs 2 SP to activate (+1 SP/Lv)",
    benefits = {
        {stat = "Defense: 15 + 2.368/Lv"},
    },
    basicActives = "",
    power = "7 + 5/Lv",
    size = "",
    mobAmount = "4 + 0/Lv",
    cost = "4.5 + 0.75/Lv MP",
    cooldown = "9.0s",
    duration = "5 + 0s/Lv",
    skillRequirements = {
        {stat = "Melee Lv 16"},
        {stat = "Faith Lv 22"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "10.2% + 5.5%/Lv"},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = "4.3% + 5.5%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Divine Thorn"] = {
    name = "Divine Thorn",
    type = "Skill",
    image = "Divine Thorn.png",
    description = "Passive stance. Thorns of light answer every wound: your attacker and up to 2 other nearby monsters take 50(+25/lv)% of the blow before your defenses soften it, plus 4(+2/lv)% of your max HP. The thorns can crit, carry your element, and answer even the blood price of your own dark flames. Lowers your MP regen by 1(+0.15/lv) per tick. Active for 15 SP",
    benefits = {
        {stat = "MP Regen: -(1 + 0.15/Lv) per tick"},
    },
    basicActives = "",
    power = "5 + 3/Lv",
    size = "",
    mobAmount = "3",
    cost = "",
    cooldown = "1.0s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 17"},
        {stat = "Faith Lv 17"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = "60% + 30%/Lv"},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Raging Essence", quantity = "25"},
                {name = "Dull Historic Essence", quantity = "25"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Cross Strike"] = {
    name = "Cross Strike",
    type = "Skill",
    image = "Cross Strike.png",
    description = "Slam a blazing cross into the ground, stunning everything it hits, bosses included, and dealing x1.6 damage to bosses. Your melee and faith attack speed multiply its damage instead of shortening its cooldown. Active for 14 SP",
    benefits = "",
    basicActives = "",
    power = "55 + 26/Lv",
    size = "257% + 3%/Lv",
    mobAmount = "6 + 0/Lv",
    cost = "10 + 1.66/Lv MP",
    cooldown = "9.0s",
    duration = "1 + 0s/Lv",
    skillRequirements = {
        {stat = "Melee Lv 25"},
        {stat = "Faith Lv 20"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "300% + 165%/Lv"},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = "300% + 165%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Raging Essence", quantity = "46"},
                {name = "Dull Historic Essence", quantity = "35"},
                {name = "Dull Life Essence", quantity = "34"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Perseverance (Skill)"] = {
    name = "Perseverance (Skill)",
    type = "Skill",
    image = "Perseverance (Skill).png",
    description = "Swell with resolve: grow 1.5x in size, gain 8.6(+0.6/lv)% Max HP (healing for the gain) and 6(+1.1/lv) Defense, plus Melee and Faith damage that rises the healthier you are, up to 16.08(+1.68/lv)%. Multiplies with your other buff bonuses. Trains from the damage you deal while it is up. Nearby party members gain half the Max HP you gained and a quarter of your damage bonus. Costs 0 SP to activate (+0 SP/Lv)",
    benefits = {
        {stat = "Size: x1.5"},
        {stat = "Max HP: 8.6 + 0.6%/Lv"},
        {stat = "Defense: 6 + 1.1/Lv"},
        {stat = "Melee/Faith Damage (scales with HP): up to 16.08 + 1.68%/Lv"},
    },
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "8.28 + 1.38/Lv MP",
    cooldown = "30.0s",
    duration = "13.2 + 0.4s/Lv",
    skillRequirements = {
        {stat = "Melee Lv 28"},
        {stat = "Faith Lv 28"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Raging Essence", quantity = "64"},
                {name = "Dull Historic Essence", quantity = "48"},
                {name = "Dull Life Essence", quantity = "48"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Divine Benevolence"] = {
    name = "Divine Benevolence",
    type = "Buff",
    image = "Divine Benevolence.png",
    description = "Passive stance. Suffering becomes succor: when you take damage, party members within range are healed for 7(+0.95/lv)% of the blow before your defenses soften it. Lowers your MP regen by 1(+0.15/lv) per tick. Costs 0 SP to activate (+0 SP/Lv)",
    benefits = {
        {stat = "MP Regen: -(1 + 0.15/Lv) per tick"},
    },
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "1.0s",
    duration = "24 + 4s/Lv",
    skillRequirements = {
        {stat = "Melee Lv 22"},
        {stat = "Faith Lv 22"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = "13.3% + 5.2%/Lv"},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Raging Essence", quantity = "43"},
                {name = "Dull Historic Essence", quantity = "42"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
------------------------------------------------------------------------------------------------------------------------------------------------
-- FAITH RANGE
------------------------------------------------------------------------------------------------------------------------------------------------
data["Messenger (Skill)"] = {
    name = "Messenger (Skill)",
    type = "Skill",
    image = "Messenger (Skill).png",
    description = "Send a blessed arrow to your chosen party member, shielding them for 15(+5/lv) plus 3(+0.5/lv)% of your Range and Faith damage for 4 seconds, and lacing their next 10 hits with true damage drawn from your power. Casting it with no ally to receive it shields you for a quarter as much. The experience returns to you.",
    benefits= "",
    basicActives= "",
    power = "8 + 4/Lv",
    size = "",
    mobAmount = "1",
    cost = "4.7 + 0.78/Lv MP",
    cooldown = "8.0s",
    duration = "30s",
    skillRequirements = {
        {stat = "Range Lv 25"},
        {stat = "Faith Lv 25"},
    },
    skillPoints = {
    	{stat = "0 + 1/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
    	{meleeStat = ""},
    	{rangeStat = "180% + 90%/Lv"},
    	{magicStat = ""},
    	{faithStat = "180% + 90%/Lv"},
    	{healthStat = ""},
    	{manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
    	{name = "Range"},
    	{name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Nurturing Essence", quantity = "46"},
                {name = "Dull Historic Essence", quantity = "35"},
                {name = "Dull Life Essence", quantity = "34"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Holy Arrow (Skill)"] = {
    name = "Holy Arrow (Skill)",
    type = "Basic Attack",
    image = "Holy Arrow (Skill).png",
    description = "A basic attack: charge a blessed arrow that homes onto a monster and chains to the next with every hit. Tap for a third of the damage, full draw for all of it.",
    benefits = "",
    basicActives = {
        {stat = "+25% of Range Damage dealt as Faith Damage"},
        {stat = "+25% of Faith Damage dealt as Range Damage"},
        {level = "3", stat = "+3% Elemental Chance"},
        {level = "6", stat = "+3% Elemental Chance"},
        {level = "9", stat = "+3% Elemental Chance"},
        {level = "12", stat = "+3% Elemental Chance"},
        {level = "15", stat = "+3% Elemental Chance"},
        {level = "18", stat = "+3% Elemental Chance"},
    },
    power = "12 + 6.5/Lv",
    size = "95% + 2.5%/Lv",
    mobAmount = "3",
    cost = "1 + 0.1/Lv MP",
    cooldown = "1.4s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 5"},
        {stat = "Faith Lv 5"},
    },
    skillPoints = {
        {stat = "0 + 1/Lv"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = "75% + 45%/Lv"},
        {magicStat = ""},
        {faithStat = "75% + 45%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Holy Field"] = {
    name = "Holy Field",
    type = "Skill",
    image = "Holy Field.png",
    description = "Charge and loose an arrow of light that erupts into a radiant field, searing everything inside once a second and slowing enemies by 40% while they stand in it. Tap for a third of the damage, full draw for all of it.",
    benefits = "",
    basicActives = "",
    power = "16 + 8/Lv",
    size = "150% + 5%/Lv",
    mobAmount = "3",
    cost = "6.12 + 1.02/Lv MP",
    cooldown = "12.0s",
    duration = "5.4 + 0.1/Lvs",
    skillRequirements = {
        {stat = "Range Lv 18"},
        {stat = "Faith Lv 23"},
    },
    skillPoints = {
        {stat = "0 + 1/Lv"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = "150% + 75%/Lv"},
        {magicStat = ""},
        {faithStat = "150% + 75%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Nurturing Essence", quantity = "48"},
                {name = "Dull Historic Essence", quantity = "47"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Flare Arrow"] = {
    name = "Flare Arrow",
    type = "Skill",
    image = "Flare Arrow.png",
    description = "Charge an arrow of holy flame that detonates on impact, then walks two more explosions across the pack. Tap for a third of the damage, full draw for all of it.",
    benefits = "",
    basicActives = "",
    power = "30 + 15/Lv",
    size = "112% + 4%/Lv",
    mobAmount = "5",
    cost = "3 + 0.5/Lv MP",
    cooldown = "6.0s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 8"},
        {stat = "Faith Lv 8"},
    },
    skillPoints = {
        {stat = "0 + 1/Lv"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = "110% + 50%/Lv"},
        {magicStat = ""},
        {faithStat = "60% + 35%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Medishot"] = {
    name = "Medishot",
    type = "Skill",
    image = "Medishot.png",
    description = "Fire a healing shot that seeks your most wounded party member, bursting into a heal for nearby allies, damage to nearby monsters, and a mending field that follows them, pulsing every second for 6 seconds. Each pulse heals 3(+1.5/Lv), raised 5% for every 10% Elemental Effect Potency you have, so a full field is 18(+9/Lv). The burst heals 1.4 times a pulse, or 2.5 times when it lands on you. Charge it for up to three times the healing.",
    benefits = "",
    basicActives = "",
    power = "35 + 17.5/Lv",
    size = "92% + 4%/Lv",
    mobAmount = "3",
    cost = "5.72 + 0.35/Lv MP",
    cooldown = "7.5s",
    duration = "6s",
    skillRequirements = {
        {stat = "Range Lv 12"},
        {stat = "Faith Lv 16"},
    },
    skillPoints = {
        {stat = "1 + 1/Lv"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = "160% + 75%/Lv"},
        {magicStat = ""},
        {faithStat = "160% + 75%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Historic Essence", quantity = "23"},
                {name = "Dull Nurturing Essence", quantity = "22"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Life Line"] = {
    name = "Life Line",
    type = "Buff",
    image = "Life Line.png",
    description = "Bind your fate to a chosen party member: each of you gains 3(+0.63/Lv)% of the other's damage stats and 5(+1.05/Lv)% of their Defense and Max HP. If your partner would die, they are saved at 15% HP and you take half your Max HP instead, breaking the link. The bond cannot coexist with Armor Link.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "15 MP",
    cooldown = "5.0s",
    duration = "",
    skillRequirements = {
        {stat = "Faith Lv 25"},
        {stat = "Range Lv 25"},
    },
    skillPoints = {
        {stat = "0 + 0/Lv"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Historic Essence", quantity = "46"},
                {name = "Dull Nurturing Essence", quantity = "35"},
                {name = "Dull Life Essence", quantity = "34"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Clarity"] = {
    name = "Clarity",
    type = "Buff",
    image = "Clarity.png",
    description = "Toggle. Monsters suffering from any status effect take x1.1008(+1.68%/Lv) damage from you. Lowers your MP regen by 2(+0.15/Lv) per tick. Trains from hits on monsters suffering a status effect.",
    benefits = {
        {stat = "Damage to Status-Afflicted Monsters: x1.1008 + 1.68%/Lv"},
    },
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "1.0s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 28"},
        {stat = "Faith Lv 28"},
    },
    skillPoints = {
        {stat = "0 + 0/Lv"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Nurturing Essence", quantity = "64"},
                {name = "Dull Historic Essence", quantity = "48"},
                {name = "Dull Life Essence", quantity = "48"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Arrow Infusion"] = {
    name = "Arrow Infusion",
    type = "Buff",
    image = "Arrow Infusion.png",
    description = "Toggle. Your projectile hits weaken monsters, cutting their damage and shredding their armor, while all of your Crit Rate becomes Elemental Chance and all of your Crit Damage becomes Elemental Potency. Lowers your MP regen by 1(+0.15/Lv) per tick. Trains from your projectile hits while it is on.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "1.0s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 12"},
        {stat = "Faith Lv 12"},
    },
    skillPoints = {
        {stat = "0 + 0/Lv"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Faith"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
------------------------------------------------------------------------------------------------------------------------------------------------
-- MAGIC RANGE
------------------------------------------------------------------------------------------------------------------------------------------------
data["Soul Shot"] = {
    name = "Soul Shot",
    type = "Basic Attack",
    image = "Soul Shot.png",
    description = "Draw back and loose a heavy bolt that punches through up to two enemies, hitting harder the farther it flies, up to x1.3. Tap for a third of the damage, full draw for all of it.",
    benefits = "",
    basicActives = {
        {level = "4", stat = "+2% Crit Rate"},
        {level = "8", stat = "+2% Crit Rate"},
        {level = "12", stat = "+2% Crit Rate"},
        {level = "16", stat = "+2% Crit Rate"},
        {level = "20", stat = "+2% Crit Rate"},
    },
    power = "16 + 8.5/Lv",
    size = "+3.0%/Lv",
    mobAmount = "2",
    cost = "1 + 0.12/Lv MP",
    cooldown = "1.0s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 5"},
        {stat = "Magic Lv 5"},
    },
    skillPoints = {
        {stat = "0 + 1/Lv SP"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = "90% + 45%/Lv"},
        {magicStat = "8.5% + 28%/Lv"},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Arrow Rain"] = {
    name = "Arrow Rain",
    type = "Skill",
    image = "Arrow Rain.png",
    description = "Loose a volley of five magic arrows that curve toward monsters ahead. Tap for a third of the damage, full draw for all of it.",
    benefits = "",
    basicActives = "",
    power = "8.1 + 4/Lv",
    size = "95% + 2.5%/Lv",
    mobAmount = "1",
    cost = "2.39 + 0.4/Lv MP",
    cooldown = "3.6s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 8"},
        {stat = "Magic Lv 8"},
    },
    skillPoints = {
        {stat = "1 + 1/Lv SP"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = "64% + 32%/Lv"},
        {magicStat = "8.2% + 21.3%/Lv"},
        {faithStat = "8.2% + 21.3%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["True Shot"] = {
    name = "True Shot",
    type = "Skill",
    image = "True Shot.png",
    description = "Charge and release to mark the target with an exposed bomb that feeds on all damage it takes. When full it detonates for 300% of your hit, and if the target dies the blast jumps to the nearest monster. Tap for a third of the damage, full draw for all of it.",
    benefits = "",
    basicActives = "",
    power = "8 + 4/Lv",
    size = "130% + 2.5%/Lv",
    mobAmount = "4",
    cost = "2.17 + 0.36/Lv MP",
    cooldown = "4.0s",
    duration = "15s",
    skillRequirements = {
        {stat = "Range Lv 11"},
        {stat = "Magic Lv 11"},
    },
    skillPoints = {
        {stat = "2 + 1/Lv SP"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = "116% + 52%/Lv"},
        {magicStat = "67.5% + 34%/Lv"},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "16"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Feather Jump"] = {
    name = "Feather Jump",
    type = "Skill",
    image = "Feather Jump.png",
    description = "Launch upward and drift down slowly, gaining 7(+2.31/Lv)% global damage while Airborne. Multiplies with your other buff bonuses.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "2.68 + 0.45/Lv MP",
    cooldown = "6.4s",
    duration = "6.5s",
    skillRequirements = {
        {stat = "Range Lv 15"},
        {stat = "Magic Lv 15"},
    },
    skillPoints = {
        {stat = "0 + 0/Lv SP"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Nurturing Essence", quantity = "20"},
                {name = "Dull Ghostly Essence", quantity = "20"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Nimble"] = {
    name = "Nimble",
    type = "Buff",
    image = "Nimble.png",
    description = "Passive stance. Stay unhit for 12(-0.26/Lv)s to prime a perfect dodge: while primed your Range and Magic damage rise 3.48(+1.08/Lv)%. (multiplying with your other buff bonuses), and the dodge negates the next hit, granting 1.5s of invisibility and a 3s Ambush. Nearby party members gain 15% Dodge Chance.",
    benefits = {
        {stat = "Range and Magic Dmg: 3.48% + 1.08%/Lv (while primed)"},
    },
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "0.8s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 23"},
        {stat = "Magic Lv 23"},
    },
    skillPoints = {
        {stat = "0 + 0/Lv SP"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Nurturing Essence", quantity = "48"},
                {name = "Dull Ghostly Essence", quantity = "47"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Arrow Storm"] = {
    name = "Arrow Storm",
    type = "Skill",
    image = "Arrow Storm.png",
    description = "Release a standing barrage of eight arrows that curve toward monsters ahead. Your draw at release sets the power of the whole barrage, from a third on a tap to full.",
    benefits = "",
    basicActives = "",
    power = "17 + 8.5/Lv",
    size = "130% + 2.5%/Lv",
    mobAmount = "1",
    cost = "2.88 + 0.48/Lv MP",
    cooldown = "4.8s",
    duration = "1s",
    skillRequirements = {
        {stat = "Range Lv 18"},
        {stat = "Magic Lv 18"},
    },
    skillPoints = {
        {stat = "2 + 1/Lv SP"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = "58% + 29%/Lv"},
        {magicStat = "8.5% + 20.4%/Lv"},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Nurturing Essence", quantity = "28"},
                {name = "Dull Ghostly Essence", quantity = "27"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Realm Piercing Arrow"] = {
    name = "Realm Piercing Arrow",
    type = "Skill",
    image = "Realm Piercing Arrow.png",
    description = "Charge a massive arrow and release it to pierce through terrain and any enemies in its path. Travels until it leaves the map. Deals +50% bonus damage to boss monster.",
    benefits = "",
    basicActives = "",
    power = "25 + 12.5/Lv",
    size = "146% + 2%/Lv",
    mobAmount = "7",
    cost = "4.25 + 0.71/Lv MP",
    cooldown = "9.6s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 33"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = ""},
        {rangeStat = "700% + 350%/Lv"},
        {magicStat = "700% + 350%/Lv"},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Nurturing Essence", quantity = "80"},
                {name = "Dull Ghostly Essence", quantity = "60"},
                {name = "Dull Life Essence", quantity = "60"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Companion"] = {
    name = "Companion",
    type = "Buff",
    image = "Companion.png",
    description = "Toggle. A hawk companion flies at your side: your attacks have a 6(+1.74/Lv)% chance to strike again at full strength (shadow clones never trigger it), and you and nearby party members gain 1(+0.32/Lv) Accuracy and 1(+0.37/Lv) Damage Balance. Lowers your MP regen by 1(+0.15/Lv) per tick.",
    benefits = {
        {stat = "Strike Again Chance: 6% + 1.74%/Lv"},
        {stat = "Accuracy: 1 + 0.32/Lv"},
        {stat = "Damage Balance: 1 + 0.37/Lv"},
    },
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "0.8s",
    duration = "",
    skillRequirements = {
        {stat = "Range Lv 29"},
        {stat = "Magic Lv 29"},
    },
    skillPoints = {
        {stat = "0 + 0/Lv SP"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Ghostly Essence", quantity = "72"},
                {name = "Dull Nurturing Essence", quantity = "54"},
                {name = "Dull Life Essence", quantity = "54"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Heaven Arrow"] = {
    name = "Heaven Arrow",
    type = "Skill",
    image = "Heaven Arrow.png",
    description = "Summon a halo above your head that fires 25 homing arrows at nearby monsters while you keep fighting, dodging, or running.",
    benefits = "",
    basicActives = "",
    power = "21 + 10.5/Lv",
    size = "",
    mobAmount = "",
    cost = "5.56 + 0.93/Lv MP",
    cooldown = "7.6s",
    duration = "5s",
    skillRequirements = {
        {stat = "Range Lv 28"},
    },
    skillPoints = {
        {stat = "1 + 1/Lv SP"},
    },
    skillScaling = {
        {meleeStat = ""},
        {rangeStat = "30% + 12%/Lv"},
        {magicStat = "8.5% + 8.5%/Lv"},
        {faithStat = "8.5% + 8.5%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Range"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
------------------------------------------------------------------------------------------------------------------------------------------------
-- MELEE MAGIC
------------------------------------------------------------------------------------------------------------------------------------------------
data["Magic Slash"] = {
    name = "Magic Slash",
    type = "Basic Attack",
    image = "Magic Slash.png",
    description = "A basic attack: a magic-infused three-swing chain that throws a piercing crescent wave; the third swing lands for x1.35 damage and every hit grants a little Shield.",
    benefits = "",
    basicActives = {
        {level = "1", stat = "+25% of total Melee Damage as Magic Damage"},
    },
    power = "5.5 + 3.5/Lv",
    size = "",
    mobAmount = "2",
    cost = "0.94 + 0.16/Lv MP",
    cooldown = "0.5s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 5"},
        {stat = "Magic Lv 5"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "60% + 29.4%/Lv"},
        {rangeStat = ""},
        {magicStat = "60% + 29.4%/Lv"},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Blood Sacrifice"] = {
    name = "Blood Sacrifice",
    type = "Buff",
    image = "Blood Sacrifice.png",
    description = "Toggle. Skill costs you cannot afford with MP are paid in HP instead, damage you take converts to MP, every MP cost you pay rebounds as Shield, and 30% of your max HP becomes max Shield. Your Melee and Magic damage rise 3.48(+1.08/lv)%, multiplying with your other buff bonuses. The 2 closest party members nearby also gain half of the MP you convert and half of the Shield rebound. Nearby party members also gain half of that Shield capacity.",
    benefits = {
	    {stat = "Melee Damage: 3.48 + 1.08%/Lv"},
	    {stat = "Magic Damage: 3.48 + 1.08%/Lv"},
	    {stat = "Shield: 30% * HP"},
	    {stat = "HP: -30%"},
	},
    basicActives = "",
    power = "10 + 4/Lv",
    size = "",
    mobAmount = "",
    cost = "1.55 + 0.26/Lv MP",
    cooldown = "1.2s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 8"},
        {stat = "Magic Lv 12"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Lunar Step"] = {
    name = "Lunar Step",
    type = "Skill",
    image = "Lunar Step.png",
    description = "Step through the moonlight to the farthest foe and strike it from behind. If the monster you attack dies, you automatically step to the next one.",
    benefits = "",
    basicActives = "",
    power = "18 + 5/Lv",
    size = "",
    mobAmount = "1",
    cost = "2.78 + 0.46/Lv MP",
    cooldown = "4.5s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 15"},
        {stat = "Magic Lv 15"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "100% + 45%/Lv"},
        {rangeStat = ""},
        {magicStat = "100% + 45%/Lv"},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Raging Essence", quantity = "20"},
                {name = "Dull Ghostly Essence", quantity = "20"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Crescent Slash"] = {
    name = "Crescent Slash",
    type = "Skill",
    image = "Crescent Slash.png",
    description = "Throw your sword arc forward as a travelling crescent of energy that cuts through the enemies in its path.",
    benefits = "",
    basicActives = "",
    power = "24 + 12.5/Lv",
    size = "",
    mobAmount = "4",
    cost = "2.57 + 0.43/Lv MP",
    cooldown = "3.1s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 8"},
        {stat = "Magic Lv 8"},
    },
    skillPoints = {
        {stat = "2 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "270.1% + 137.3%/Lv"},
        {rangeStat = ""},
        {magicStat = "150.7% + 110.7%/Lv"},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Crimson Moon"] = {
    name = "Crimson Moon",
    type = "Skill",
    image = "Crimson Moon.png",
    description = "Leap skyward (or freeze mid-air) beneath a crimson moon before a colossal energy crescent homing crashes in one second. Both homing crescents in one second, each crescent has triple all Homing Crescents in one second. Each crescent does triple all stats first. Long cooldown.",
    benefits = "",
    basicActives = "",
    power = "10 + 5/Lv",
    size = "",
    mobAmount = "",
    cost = "30 + EBP",
    cooldown = "16.0s",
    duration = "1.8s",
    skillRequirements = {
        {stat = "Melee Lv 25"},
        {stat = "Magic Lv 25"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "140% + 70%/Lv"},
        {rangeStat = ""},
        {magicStat = "140% + 70%/Lv"},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Raging Essence", quantity = "46"},
                {name = "Dull Ghostly Essence", quantity = "35"},
                {name = "Dull Life Essence", quantity = "34"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Flash Strike"] = {
    name = "Flash Strike",
    type = "Skill",
    image = "Flash Strike.png",
    description = "Become invulnerable and flash between nearby enemies, striking each one of afterimages. An afterimage marks where you began. When the flurry ends, you flash back to it.",
    benefits = "",
    basicActives = "",
    power = "10 + 5/Lv",
    size = "",
    mobAmount = "",
    cost = "9.1 + 0.91/Lv MP",
    cooldown = "3.0s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 15"},
        {stat = "Magic Lv 20"},
    },
    skillPoints = {
        {stat = "0 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "110% + 62%/Lv"},
        {rangeStat = ""},
        {magicStat = "110% + 62%/Lv"},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Raging Essence", quantity = "35"},
                {name = "Dull Ghostly Essence", quantity = "35"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Whirlwind"] = {
    name = "Whirlwind",
    type = "Skill",
    image = "Whirlwind.png",
    description = "Spin up a whirlwind you can walk with. Every hit drags enemies into your face instead of scattering them, and casting grants +18 Speed, +5 Jump and 25(+5/lv)(+0.15 per INT) Shield. \"this skill create 'fun and engaging' hunt\" - P",
    benefits = {
	    {stat = "Speed: +18"},
	    {stat = "Jump: +5"},
	    {stat = "Shield: 25 + 5/Lv + (0.15 * INT)"},
	},
    basicActives = "",
    power = "20 + 10/Lv",
    size = "",
    mobAmount = "3",
    cost = "5.04 + 0.84/Lv MP",
    cooldown = "7.2s",
    duration = "3.05s",
    skillRequirements = {
        {stat = "Melee Lv 28"},
        {stat = "Magic Lv 12"},
    },
    skillPoints = {
        {stat = "3 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "80% + 39%/Lv"},
        {rangeStat = ""},
        {magicStat = "80% + 39%/Lv"},
        {faithStat = "42% + 18%/Lv"},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Phasing"] = {
    name = "Phasing",
    type = "Buff",
    image = "Phasing.png",
    description = "Toggle. Leave after-images behind as you move, gaining 18(+2.21/lv) Speed and global damage that grows with how fast you are, up to 8.1(+1.94/lv)%. Your Dodge Chance grows the same way, up to 10(+1.316/lv)% at full speed. Lowers your MP regen by 1(+0.15/lv) per tick. Multiplies with your other buff bonuses. Trains the faster you move as you travel with it active, but only over ground you have not crossed recently. Nearby party members gain half of the Speed while you have it on.",
    benefits = {
    	{stat = "Speed: 18 + 2.21/Lv"},
    	{stat = "Global Damage: 8.1 + 1.94%/Lv"},
    	{stat = "Dodge Chance: 10 + 1.316%/Lv"},
    	{stat = "MP Regen: -(1 + 0.15/Lv)"},
    },
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "0.8s",
    duration = "",
    skillRequirements = {
        {stat = "Melee Lv 22"},
        {stat = "Magic Lv 22"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Raging Essence", quantity = "43"},
                {name = "Dull Ghostly Essence", quantity = "42"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
data["Blue Moon"] = {
    name = "Blue Moon",
    type = "Buff",
    image = "Blue Moon.png",
    description = "Howl at the blue moon: you shrug off 90% of incoming damage, party members within range a quarter of that, and everyone gains 80 Speed for 5(+0.37/lv) seconds. Attack speed does not reduce this cooldown.",
    benefits = {
	    {stat = "Damage Reduction (Self): 90%"},
	    {stat = "Damage Reduction (Party): 22.5%"},
	    {stat = "Speed: +80"},
	},
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "12 + 0.5/Lv MP",
    cooldown = "50.0s",
    duration = "4.26 + 0.37/Lvs",
    skillRequirements = {
        {stat = "Melee Lv 25"},
        {stat = "Magic Lv 25"},
    },
    skillPoints = {
        {stat = "0 + 0 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = ""},
        {rangeStat = ""},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Magic"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Raging Essence", quantity = "46"},
                {name = "Dull Ghostly Essence", quantity = "35"},
                {name = "Dull Life Essence", quantity = "34"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}
------------------------------------------------------------------------------------------------------------------------------------------------
-- MELEE RANGE
------------------------------------------------------------------------------------------------------------------------------------------------
data["Dash Strike"] = {
    name = "Dash Strike",
    type = "Skill",
    image = "Dash Strike.png",
    description = "Burst forward, damaging enemies you pass through, invulnerable for the whole dash. Release early to cut the dash short.",
    benefits = "",
    basicActives = "",
    power = "18 + 9/Lv",
    size = "90% + 5%/Lv",
    mobAmount = "3",
    cost = "0.5 + 0.08/Lv MP",
    cooldown = "2.6s",
    duration = "0.45s",
    skillRequirements = {
        {stat = "Melee Lv 8"},
    },
    skillPoints = {
        {stat = "1 + 1 SP/Lv"},
    },
    skillScaling = { --keep all stats, so the sorting table on the Skills page works!
        {meleeStat = "284.2% + 94.2%/Lv"},
        {rangeStat = "141.4% + 67.8%/Lv"},
        {magicStat = ""},
        {faithStat = ""},
        {healthStat = ""},
        {manaStat = ""}, {luckStat = ""},
    },
    skillClasses = {
        {name = "Melee"},
        {name = "Range"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
            }
        },
        {
            name = "2",
            resources = {
                {name = "Dull Life Essence", quantity = "3"},
                {name = "Soul Crystal", quantity = "100"},
            }
        },
        {
            name = "3",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "300"},
            }
        },
        {
            name = "4",
            resources = {
                {name = "Dull Life Essence", quantity = "12"},
                {name = "Soul Crystal", quantity = "800"},
            }
        },
        {
            name = "5",
            resources = {
                {name = "Dull Life Essence", quantity = "20"},
                {name = "Soul Crystal", quantity = "1,500"},
            }
        },
        {
            name = "6",
            resources = {
                {name = "Dull Life Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "3,000"},
            }
        },
        {
            name = "7",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Dull dataneeded Essence", quantity = "63"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "8",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Dull dataneeded Essence", quantity = "125"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
        {
            name = "9",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Dull dataneeded Essence", quantity = "50"},
                {name = "Soul Crystal", quantity = "9,500"},
                {name = "Dull Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "10",
            resources = {
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Dull dataneeded Essence", quantity = "100"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "11",
            resources = {
                {name = "dataneeded Essence", quantity = "200"},
                {name = "dataneeded Essence", quantity = "200"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Blue Crystal", quantity = "5"},
                {name = "Ambitious Soul", quantity = "3"},
            }
        },
        {
            name = "12",
            resources = {
                {name = "dataneeded Essence", quantity = "375"},
                {name = "dataneeded Essence", quantity = "375"},
                {name = "Soul Crystal", quantity = "12,000"},
            }
        },
        {
            name = "13",
            resources = {
                {name = "dataneeded Essence", quantity = "625"},
                {name = "dataneeded Essence", quantity = "625"},
                {name = "Soul Crystal", quantity = "12,000"},
                {name = "Red Herb", quantity = "20"},
            }
        },
        {
            name = "14",
            resources = {
                {name = "dataneeded Essence", quantity = "925"},
                {name = "dataneeded Essence", quantity = "925"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Ambitious Soul", quantity = "1"},
                {name = "Transcendent Soul", quantity = "1"},
            }
        },
        {
            name = "15",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Radiant dataneeded Essence", quantity = "250"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "16",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Radiant dataneeded Essence", quantity = "400"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
                {name = "Transcendent Soul", quantity = "3"},
            }
        },
        {
            name = "17",
            resources = {
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Radiant dataneeded Essence", quantity = "1,000"},
                {name = "Soul Crystal", quantity = "30,000"},
                {name = "Radiant Dungeon Crystal", quantity = "1"},
            }
        },
        {
            name = "18",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "19",
            resources = {
                {name = "", quantity = ""},
            }
        },
        {
            name = "20",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}

-- Life
------------------------------------------------------------------------------------------------------------------------------------------------
data["Merchant"] = {
    name = "Merchant",
    type = "Life",
    image = "Merchant.png",
    description = "Plant a personal stall that sells your Auction House listings in person at a reduced 4% sale fee instead of the Auction House's 5%. One stall at a time; it stands for 72 hours.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = ""},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "", quantity = ""},
            }
        },
    },
}

data["Transmutation"] = {
    name = "Transmutation",
    type = "Crafting",
    image = "Transmutation.png",
    description = "Rewrite a weapon's element. Slot a weapon, pick a new element, and pay the alchemy matter matching the weapon's tier, the essence matching your chosen element and tier, and Soul Crystals. Every echo already on the weapon raises the whole cost by 30%. [[Equipment#Dark Items|Dark items]] cannot be transmuted.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "Alchemy Lv 15"},
    },
    skillUpgrades = {
        {
            name = "Learn",
            resources = {
                {name = "Dull Life Essence", quantity = "8"},
                {name = "Dull Nurturing Essence", quantity = "8"},
                {name = "Dull Raging Essence", quantity = "8"},
                {name = "Dull Metal Essence", quantity = "8"},
                {name = "Dull Ghostly Essence", quantity = "8"},
                {name = "Dull Historic Essence", quantity = "8"},
                {name = "Dull Eternal Essence", quantity = "8"},
                {name = "Soul Crystal", quantity = "5,000"},
            }
        },
    },
}

data["Alchemy"] = {
    name = "Alchemy",
    type = "Crafting",
    image = "Alchemy.png",
    description = "Your standing as an alchemist. Unlocks potion, dye, soul and crystal recipes up to level 99, brewed instantly with no minigame. Crafting levels it up.",
    benefits = "Every 4 levels, you gain +1 Max HP. Every 6 levels, you gain +1 Max MP.",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "I want to learn Alchemy"},
    },
}

data["Weapon Smithing"] = {
    name = "Weapon Smithing",
    type = "Crafting",
    image = "Weapon Smithing.png",
    description = "Your standing at the forge. Unlocks weapon and shield recipes up to level 93; every equipment piece forged through the card minigame where the cards you play decide its stats. Crafting levels it up.",
    benefits = "Every 15 levels, you gain +2% Damage Balance. Every 29 levels, you gain +1 Armor Pen.",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "I want to learn Weapon Smithing"},
    },
}

data["Armor Crafting"] = {
    name = "Armor Crafting",
    type = "Crafting",
    image = "Armor Crafting.png",
    description = "Your standing as an armorer. Unlocks the biggest recipe list in the game, armor from head to toe up to level 94, forged through the card minigame where the cards you play decide its stats. Crafting levels it up.",
    benefits = "Every 15 levels, you gain +1 Defense.",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "I want to learn Armor Crafting"},
    },
}

data["Jeweler"] = {
    name = "Jeweler",
    type = "Crafting",
    image = "Jeweler.png",
    description = "Your standing at the jeweler's bench. Unlocks ring recipes up to level 94, cut through the card minigame where the cards you play decide the stats. Crafting levels it up.",
    benefits = "Every 14 levels, you gain +0.8% Item Drops.",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "I want to Learn Jewelry Crafting"},
    },
}

data["Cooking"] = {
    name = "Cooking",
    type = "Crafting",
    image = "Cooking.png",
    description = "Your standing in the kitchen. Unlocks dish recipes up to level 93, each carrying buffs to eat before a fight; finished dishes go through the cooking card minigame for bonus stats. Crafting levels it up.",
    benefits = "Every 19 levels, you gain +1 Knockback Resistance.",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "I want to learn Cooking"},
    },
}

data["Artisan"] = {
    name = "Artisan",
    type = "Crafting",
    image = "Artisan.png",
    description = "Your standing as an artisan. Unlocks the instrument bench (flute, bass guitar, piano) and grows your treasure-finding as it levels.",
    benefits = "Every 8 levels, you gain +1% Echoes Find. Every 16 levels, you gain that +1% Echoes Find and also +1% Soul Crystal.",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "I want to learn Artisan"},
    },
}

data["Herbalism"] = {
    name = "Herbalism",
    type = "Gathering",
    image = "Herbalism.png",
    description = "Your bond with growing things. Cast it to reveal every herb patch and tree node on the map, then walk up and gather. Higher proficiency finds rarer herbs and bigger stacks. Levels up to 99 as you gather.",
    benefits = "Every 19 levels, you gain +1 MP Regeneration Per Tick and +1 HP Regeneration Per Tick.",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "I want to learn Herbalism"},
    },
}

data["Nature's Veil"] = {
    name = "Nature's Veil",
    type = "Gathering",
    image = "Nature's Veil.png",
    description = "Toggle. Blend into the scenery and turn invisible: monsters stop hunting you and their attacks pass through you, while gathering, Dash and Blink all leave the veil intact. Anything else you do drops it, including damage dealt on your behalf by a familiar. The veil only holds against monsters up to 10 levels above your better gathering profession, Mining or Herbalism, and it cannot be lit at all on a map that holds something bigger, nor in dngeons, party quests or bosss maps. Lowers your MP regen by 1(+0.15/lv) per tick.",
    benefits = "Every 19 levels, you gain +1 MP Regeneration Per Tick and +1 HP Regeneration Per Tick.",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "2.3 MP (2.32 + 0.39/Lv)",
    cooldown = "5.0s",
    duration = "",
    skillRequirements = {
        {stat = "Herbalism Lv 5"},
    },
}

data["Botanist"] = {
    name = "Botanist",
    type = "Gathering",
    image = "Botanist.png",
    description = "Your trained eye for a rare patch. Herb nodes have a chance to spawn special, carrying extra resources at the price of a harder minigame. Caps at level 20.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "Herbalism Lv 10"},
    },
}

data["Sickle Frenzy"] = {
    name = "Sickle Frenzy",
    type = "Gathering",
    image = "Sickle Frenzy.png",
    description = "A gatherer's hot streak. Herbalism minigames can erupt into a three-bundle frenzy, all rows at once; keep chaining until a press advances nothing. Caps at level 20.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "Herbalism Lv 20"},
    },
}

data["Mining"] = {
    name = "Mining",
    type = "Gathering",
    image = "Mining.png",
    description = "Your eye for stone. Cast it to reveal every ore node on the map, then walk up and mine. Higher proficiency finds rarer ore and bigger stacks. Levels up to 99 as you mine..",
    benefits = "Every 15 levels, you gain +1 Light Radius.",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "I want to learn Mining"},
    },
}

data["Prospector"] = {
    name = "Prospector",
    type = "Gathering",
    image = "Prospector.png",
    description = "Your trained eye for a rich seam. Mining nodes have a chance to spawn special, carrying extra resources at the price of a harder minigame. Caps at level 20.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "Mining Lv 10"},
    },
}

data["Pickaxe Frenzy"] = {
    name = "Pickaxe Frenzy",
    type = "Gathering",
    image = "Pickaxe Frenzy.png",
    description = "A miner's hot streak. Mining minigames can erupt into a three-bundle frenzy, all rows at once; keep chaining until a press advances nothing. Caps at level 20.",
    benefits = "",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "Mining Lv 20"},
    },
}

data["Fishing"] = {
    name = "Fishing",
    type = "Gathering",
    image = "Fishing.png",
    description = "Cast a line into any water and wait for a bite. Higher proficiency hooks rarer fish and bigger hauls, and fish pay five times the gathering EXP of herbs or ore. Levels up to 99.",
    benefits = "Every 10 levels, you gain +1 LUK. Every 30 levels, you gain that +1 LUK and also +6% Speed.",
    basicActives = "",
    power = "",
    size = "",
    mobAmount = "",
    cost = "",
    cooldown = "",
    duration = "",
    skillRequirements = {
        {stat = "I want to learn Fishing"},
    },
}

return data