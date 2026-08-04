# place a simple altar / portal frame at the current position
# Usage: run this function at the desired location in the custom dimension
# Creates a 3x3 obsidian ring with a sea lantern center and an invisible marker armor stand (portal marker)
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:obsidian replace minecraft:air
setblock ~ ~ ~ minecraft:sea_lantern
summon minecraft:armor_stand ~ ~1 ~ {Tags:["subnautica_portal_marker"],Invisible:1b,Marker:1b,NoGravity:1b}
