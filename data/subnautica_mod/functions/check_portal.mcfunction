# check if any player is standing on/near a portal marker and teleport them to the overworld spawn
# For each portal marker, teleport nearby players (within 2 blocks) to overworld spawn (0,80,0). Adjust coords as desired.
execute in subnautica_mod:subnautica_ocean as @e[type=armor_stand,tag=subnautica_portal_marker] at @s run execute as @a[distance=..2] run execute in minecraft:overworld run tp @s 0 80 0
