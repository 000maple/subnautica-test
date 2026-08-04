# Worldgen for subnautica_mod

This folder contains a lightweight biome_source assignment that maps deep/noise parameters to existing vanilla deep-ocean biomes. It's intentionally conservative: it uses vanilla biomes so we avoid registry errors while testing the custom-dimension height expansion.

Next steps:
- If you want DeepBlue's exact biomes/features, I'll map DeepBlue's placed_features and noise_settings into this generator and add the specific biome JSONs.
- After you test that the dimension loads without registry errors, we can iterate on replacing the vanilla biome references with DeepBlue biomes (or the three new subnautica-specific biomes).
