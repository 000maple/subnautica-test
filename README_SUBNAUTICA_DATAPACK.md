# Subnautica minimal datapack (subnautica_mod)

This datapack is a minimal scaffold for the Subnautica-style custom dimension and basic systems. It was added to the repository by Copilot on branch subnautica-datapack.

Included items (minimal):
- Custom dimension: data/subnautica_mod/dimension/subnautica_ocean.json
- Dimension type: data/subnautica_mod/dimension_type/subnautica_ocean_type.json
- Functions:
  - init.mcfunction (schedules tick)
  - tick.mcfunction (runs every 20 ticks)
  - check_portal.mcfunction (teleports players standing near portal marker to overworld spawn)
  - place_altar.mcfunction (builds a simple altar/portal marker)
  - spawn_boss.mcfunction (summons a boss with custom loot table)
- Loot table: data/subnautica_mod/loot_tables/entities/subnautica_boss.json (drops a named Nether Star as "Portal Core")

How to test locally (Paper 1.26.2):
1. On your server, on branch subnautica-datapack, copy the datapack folder or keep it in the repo. If running server manually, place the datapack folder or a built zip into the world's datapacks directory.
2. Restart the server.
3. In-game, run: /datapack list to verify the datapack is enabled.
4. Run: /execute in subnautica_mod:subnautica_ocean run tp @s 0 60 0  to teleport yourself into the custom dimension (coords are example values).
5. In the custom dimension, run: /function subnautica_mod:place_altar to create the altar at your position.
6. Run: /function subnautica_mod:spawn_boss to summon the boss near you.
7. After killing the boss you will receive the "Portal Core" (Nether Star). Place the Portal Core on the altar center (you can extend this workflow by making a function that detects item in chest or item frame and then creates the portal). This datapack includes a repeating check that will teleport players standing on the portal marker to the overworld spawn.

Notes and next steps:
- This is a minimal, function-driven prototype to validate dimension, altar, boss, and teleport flow. It intentionally avoids complex noise/biome registration to minimize registry conflicts with DeepBlue.
- Next steps I can do on request:
  - Add proper custom biomes (lost_river, inactive_lava, lava_cave) and register them with noise settings so they appear naturally in worldgen.
  - Replace the boss with a more complex custom entity (Attribute tuning, AI via plugin or scoreboard), and refine loot/portal recipe.
  - Integrate with your SubnauticaMC plugin's oxygen/hydration systems (call plugin commands or set scoreboard tags on players when they enter/exit the ocean dimension).

If you want me to proceed with biome-level worldgen (multi_noise + noise_settings) next, tell me and I will add biome JSONs and a properly-registered biome source (this needs careful merging with DeepBlue's own worldgen files).
