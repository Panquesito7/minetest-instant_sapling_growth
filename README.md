# Instant Sapling Growth 🌳

[![luacheck](https://github.com/Panquesito7/minetest-instant_sapling_growth/actions/workflows/luacheck.yml/badge.svg)](https://github.com/Panquesito7/minetest-instant_sapling_growth/actions/workflows/luacheck.yml)

A mod/tool that instantly grows a sapling when placed.\
Built for the [Minetest Engine](https://www.minetest.net), with support for 10+ sapling mods.

## Installation

- Unzip the archive, rename the folder to `instant_sapling_growth` and
place it in `.. minetest/mods/`

- GNU/Linux: If you use a system-wide installation place
    it in `~/.minetest/mods/`.

- If you only want this to be used in a single world, place
    the folder in `.. worldmods/` in your world directory.

For further information or help, see:\
<https://wiki.minetest.net/Installing_Mods>

## Supported sapling mods

We support a variety of mods and modpacks to ensure all of those work properly with this mod.\
This can be very useful in case you need saplings to instantly grow for buildings and such.

- Full [Cool Trees](https://content.minetest.net/packages/runs/cool_trees/) modpack support.
- [Mahogany](https://content.minetest.net/packages/runs/mahogany/) mod support.
- [Maple Tree](https://content.minetest.net/packages/Duvalon/maple/) mod support.
- Full [Plantlife](https://content.minetest.net/packages/mt-mods/plantlife_modpack/) modpack support.
- Full [More Trees!](https://content.minetest.net/packages/mt-mods/moretrees/) modpack support.

If you'd like to see another mod being added, feel free to [create an issue](https://github.com/Panquesito7/minetest-instant_sapling_growth/issues/new/choose).

## Settings

These settings can be customized by modifying [`minetest.conf`](https://wiki.minetest.net/Minetest.conf) or directly in the Minetest settings.

- `instant_sapling_growth.grow_everywhere`: Whether to grow the sapling everywhere or on proper soil only (disabled by default).
- `instant_sapling_growth.light_limitations`: Whether will saplings grow only in the daytime or not (enabled by default).

## Required Minetest version

This mod has been fully tested with Minetest 5.7.0 (the current latest version).\
However, the mod should work as expected in Minetest 5.0.0+.

## License/legal

Refer to [`LICENSE.md`](LICENSE.md) for more information.
