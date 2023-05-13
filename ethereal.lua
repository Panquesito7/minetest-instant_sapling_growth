--[[
    Support for the Ethereal mod.

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
local list = {
    "ethereal:willow_sapling",
    "ethereal:yellow_tree_sapling",
    "ethereal:big_tree_sapling",
    "ethereal:banana_tree_sapling",
    "ethereal:frost_tree_sapling",
    "ethereal:mushroom_sapling",
    "ethereal:palm_sapling",
    "ethereal:giant_redwood_sapling",
    "ethereal:redwood_sapling",
    "ethereal:orange_tree_sapling",
    "ethereal:birch_sapling",
    "ethereal:sakura_sapling",
    "ethereal:lemon_tree_sapling",
    "ethereal:olive_tree_sapling",
    "ethereal:bamboo_sprout"
}

for _,k in pairs(list) do
    if minetest.get_modpath("ethereal") and minetest.registered_nodes[k] then
        table.insert(saplings, k)
    end
end
