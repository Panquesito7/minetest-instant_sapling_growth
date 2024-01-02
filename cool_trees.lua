--[[
    Support for the Cool Trees Modpack.

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
    "sequoia:sapling",
    "willow:sapling",
    "pomegranate:sapling",
    "plumtree:sapling",
    "pineapple:sapling",
    "palm:sapling",
    "oak:sapling",
    "mahogany:sapling",
    "lemontree:sapling",
    "larch:sapling",
    "jacaranda:sapling",
    "hollytree:sapling",
    "ebony:sapling",
    "clementinetree:sapling",
    "chestnuttree:sapling",
    "cherrytree:sapling",
    "cacaotree:sapling",
    "birch:sapling",
    "baldcypress:sapling"
}

for _,k in pairs(list) do
    local modname = k:split(":")[1]
    if minetest.get_modpath(modname) and minetest.registered_nodes[k] then
        table.insert(saplings, k)
    end
end
