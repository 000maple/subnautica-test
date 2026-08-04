# spawn a simple boss at current location (tunable)
# Summons a durable zombie named "Leviathan" that uses the subnautica_mod boss loot table
summon minecraft:zombie ~ ~1 ~ {CustomName:'"Leviathan"',Tags:["subnautica_boss"],PersistenceRequired:1b,Attributes:[{Name:"generic.maxHealth",Base:200}],Health:200.0f,DeathLootTable:"subnautica_mod:entities/subnautica_boss"}
