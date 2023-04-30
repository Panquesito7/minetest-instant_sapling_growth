--[[
    Support for the Plantlife Modpack.

    Copyright (C) 2023 David Leal (halfpacho@gmail.com)
    Copyright (C) Various other Minetest developers/contributors

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
--]]

local saplings = instant_sapling_growth.saplings

-- Ferns.
if minetest.get_modpath("ferns") and (minetest.registered_nodes["ferns:sapling_tree_fern"] and
    minetest.registered_nodes["ferns:sapling_giant_tree_fern"]) then

    table.insert(saplings, "ferns:sapling_tree_fern")
    table.insert(saplings, "ferns:sapling_giant_tree_fern")
end

-- Dryplants.
if minetest.get_modpath("dryplants") and minetest.registered_nodes["dryplants:reedmace_sapling"] then
    table.insert(saplings, "dryplants:reedmace_sapling")
end

-- Bushes.
if minetest.get_modpath("bushes_classic")
    and (minetest.registered_nodes["bushes:blueberry_bush"]
    and minetest.registered_nodes["bushes:raspberry_bush"]
    and minetest.registered_nodes["bushes:blackberry_bush"]
    and minetest.registered_nodes["bushes:gooseberry_bush"]
    and minetest.registered_nodes["bushes:strawberry_bush"]) then

    table.insert(saplings, "bushes:blueberry_bush")
    table.insert(saplings, "bushes:raspberry_bush")
    table.insert(saplings, "bushes:blackberry_bush")
    table.insert(saplings, "bushes:gooseberry_bush")
    table.insert(saplings, "bushes:strawberry_bush")
end
