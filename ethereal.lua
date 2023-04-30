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

if minetest.get_modpath("ethereal") and minetest.registered_nodes["ethereal:willow_sapling"]
    and minetest.registered_nodes["ethereal:yellow_tree_sapling"]
    and minetest.registered_nodes["ethereal:big_tree_sapling"]
    and minetest.registered_nodes["ethereal:banana_tree_sapling"]
    and minetest.registered_nodes["ethereal:frost_tree_sapling"]
    and minetest.registered_nodes["ethereal:mushroom_sapling"]
    and minetest.registered_nodes["ethereal:palm_sapling"]
    and minetest.registered_nodes["ethereal:giant_redwood_sapling"]
    and minetest.registered_nodes["ethereal:redwood_sapling"]
    and minetest.registered_nodes["ethereal:orange_tree_sapling"]
    and minetest.registered_nodes["ethereal:birch_sapling"]
    and minetest.registered_nodes["ethereal:sakura_sapling"]
    and minetest.registered_nodes["ethereal:lemon_tree_sapling"]
    and minetest.registered_nodes["ethereal:olive_tree_sapling"]
    and minetest.registered_nodes["ethereal:bamboo_sprout"] then

    table.insert(saplings, "ethereal:willow_sapling")
    table.insert(saplings, "ethereal:yellow_tree_sapling")
    table.insert(saplings, "ethereal:big_tree_sapling")
    table.insert(saplings, "ethereal:banana_tree_sapling")
    table.insert(saplings, "ethereal:frost_tree_sapling")
    table.insert(saplings, "ethereal:mushroom_sapling")
    table.insert(saplings, "ethereal:palm_sapling")
    table.insert(saplings, "ethereal:giant_redwood_sapling")
    table.insert(saplings, "ethereal:redwood_sapling")
    table.insert(saplings, "ethereal:orange_tree_sapling")
    table.insert(saplings, "ethereal:birch_sapling")
    table.insert(saplings, "ethereal:sakura_sapling")
    table.insert(saplings, "ethereal:lemon_tree_sapling")
    table.insert(saplings, "ethereal:olive_tree_sapling")
    table.insert(saplings, "ethereal:bamboo_sprout")
end
