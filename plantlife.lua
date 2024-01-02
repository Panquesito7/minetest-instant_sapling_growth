--[[
    Support for Plantlife Modpack saplings.

    Copyright (C) 2023-2024 David Leal (halfpacho@gmail.com)
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
local list = {
    "ferns:sapling_tree_fern",
    "ferns:sapling_giant_tree_fern",
    "dryplants:reedmace_sapling",
    "bushes:blueberry_bush",
    "bushes:raspberry_bush",
    "bushes:blackberry_bush",
    "bushes:gooseberry_bush",
    "bushes:strawberry_bush"
}

for _,k in pairs(list) do
    local modname = k:split(":")[1]

    if modname == "bushes" then
        modname = "bushes_classic"
    end

    if minetest.get_modpath(modname) and minetest.registered_nodes[k] then
        table.insert(saplings, k)
    end
end
