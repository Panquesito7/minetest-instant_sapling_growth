--[[
    Immediately fully-grows any sapling placed by the player, built for Minetest.

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

local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

instant_sapling_growth = {
    -- MTG saplings/bushes.
    saplings = {
        "default:sapling",
        "default:junglesapling",
        "default:emergent_jungle_sapling",
        "default:pine_sapling",
        "default:acacia_sapling",
        "default:aspen_sapling",

        -- Bushes.
        "default:bush_sapling",
        "default:blueberry_bush_sapling",
        "default:acacia_bush_sapling",
        "default:pine_bush_sapling",
    }
}

------------------
-- Privileges --
------------------

minetest.register_privilege("sapling_growth", {
		description = "Allows the player to instantly grow a sapling when placed",
		give_to_singleplayer = true,
		give_to_admin = false
})

--------------------------
-- Other saplings mods --
--------------------------

dofile(modpath .. "/cool_trees.lua")    -- Cool Trees
dofile(modpath .. "/ethereal.lua")      -- Ethereal
dofile(modpath .. "/maple.lua")         -- Maple Tree
dofile(modpath .. "/moretrees.lua")     -- More Trees
dofile(modpath .. "/plantlife.lua")     -- Plantlife

----------------------
-- Local functions --
----------------------

-- `default.can_grow`, but can be configured to prevent light limitations or the need for the correct soil.
local function can_grow(pos)
	local node_under = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
	if not node_under then
		return false
	end

    local grow_everywhere = minetest.settings:get_bool("instant_sapling_growth.grow_everywhere")
    local light_limitations = minetest.settings:get_bool("instant_sapling_growth.light_limitations")

	if grow_everywhere
        and minetest.get_item_group(node_under.name, "soil") == 0 then
		return false
	end

	local light_level = minetest.get_node_light(pos)
	if light_limitations and not (light_level or light_level < 13) then
		return false
	end

	return true
end

-- `default.grow_sapling`, but modified to support other tree mods, such as `maple`.
local function grow_sapling(pos)
    local node = minetest.get_node(pos)
    local mod_name = string.split(node.name, ":")[1]

    -- Maple Tree.
    if minetest.get_modpath("maple") and string.find(node.name, "maple") then
        if not can_grow(pos) then return end

        maple.grow_sapling(pos)
    -- Ferns (from Plantlife Modpack).
    elseif minetest.get_modpath("ferns") and string.find(node.name, "ferns") then
        if not can_grow(pos) then return end

        minetest.remove_node(pos)
        pos.y = pos.y - 1

        if node.name == "ferns:sapling_giant_tree_fern" then
            abstract_ferns.grow_giant_tree_fern(pos)
        else
            abstract_ferns.grow_tree_fern(pos)
        end
    -- Dryplants (from Plantlife Modpack).
    elseif minetest.get_modpath("dryplants") and string.find(node.name, "dryplants") then
        if not can_grow(pos) then return end

        minetest.remove_node(pos)
        pos.y = pos.y - 1

        abstract_dryplants.grow_reedmace(pos)
    -- Bushes (from Plantlife Modpack).
    elseif minetest.get_modpath("bushes_classic") and string.find(node.name, "bushes") then
        if not can_grow(pos) then return end

        -- Taken from the `bushes_classic` mod when a bush grows (slightly modified). Thanks!
		local meta = minetest.get_meta(pos)
		local bush_name = meta:get_string("bush_type")

        if bush_name and bush_name ~= "" then
			local dirtpos = vector.new(pos.x, pos.y - 1, pos.z)
			local dirt = minetest.get_node(dirtpos)

			if dirt.name == "farming:soil_wet" or math.random(1,3) == 1 then
				minetest.swap_node(pos, { name = "bushes:" .. bush_name .. "_bush" })
            else
                minetest.swap_node(pos, { name = "bushes:fruitless_bush" })
			end
		end
    -- Ethereal Saplings.
    elseif minetest.get_modpath("ethereal") and string.find(node.name, "ethereal") then
        local node_under = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
        if not node_under then
            return false
        end

        if minetest.settings:get_bool("instant_sapling_growth.grow_everywhere")
            and minetest.settings:get_bool("instant_sapling_growth.light_limitations") ~= true then

                local light_level = minetest.get_node_light(pos)
                if minetest.settings:get_bool("instant_sapling_growth.light_limitations") and not (light_level or light_level < 13) then
                    return false
                end
        end

        if minetest.settings:get_bool("instant_sapling_growth.grow_everywhere") ~= true then
            ethereal.grow_sapling(pos, node)
            return
        end

        if node.name == "ethereal:willow_sapling" then
            ethereal.grow_willow_tree(pos)
        elseif node.name == "ethereal:yellow_tree_sapling" then
            ethereal.grow_yellow_tree(pos)
        elseif node.name == "ethereal:big_tree_sapling" then
            ethereal.grow_big_tree(pos)
        elseif node.name == "ethereal:banana_tree_sapling" then
            ethereal.grow_banana_tree(pos)
        elseif node.name == "ethereal:frost_tree_sapling" then
            ethereal.grow_frost_tree(pos)
        elseif node.name == "ethereal:mushroom_sapling" then
            ethereal.grow_mushroom(pos)
        elseif node.name == "ethereal:palm_sapling" then
            ethereal.grow_palm_tree(pos)
        elseif node.name == "ethereal:giant_redwood_sapling" then
            ethereal.grow_giant_redwood(pos)
        elseif node.name == "ethereal:redwood_sapling" then
            ethereal.grow_redwood_tree(pos)
        elseif node.name == "ethereal:orange_tree_sapling" then
            ethereal.grow_orange_tree(pos)
        elseif node.name == "ethereal:birch_sapling" then
            ethereal.grow_birch_tree(pos)
        elseif node.name == "ethereal:sakura_sapling" then
            ethereal.grow_sakura_tree(pos)
        elseif node.name == "ethereal:lemon_tree_sapling" then
            ethereal.grow_lemon_tree(pos)
        elseif node.name == "ethereal:olive_tree_sapling" then
            ethereal.grow_olive_tree(pos)
        elseif node.name == "ethereal:bamboo_sprout" then
            ethereal.grow_bamboo(pos)
        end
    -- More Trees.
    elseif minetest.get_modpath("moretrees") and string.find(node.name, "moretrees") then
        -- Taken and slightly edited from the More Trees mod. Thanks!
        if not can_grow(pos) then return end

        local treename = string.split(node.name, ":")[2]
        treename = string.split(treename, "_")[1]

        if moretrees.can_grow(pos, treename) then
            minetest.set_node(pos, {name="air"})

            if type(moretrees["spawn_" .. treename .. "_object"])=="string" then
                local split = moretrees["spawn_" .. treename .. "_object"]:split(".")
                moretrees[split[2]](pos)
            else
                minetest.spawn_tree(pos, moretrees["spawn_" .. treename .. "_object"])
            end
        end
    elseif minetest.get_modpath("default") and mod_name == "default" then
        if not can_grow(pos) then return end
        default.grow_sapling(pos)
    else -- Cool Trees.
        if not can_grow(pos) then return end

        local ct_modpath = minetest.get_modpath(mod_name)
        if not ct_modpath then return end

        if mod_name == "birch" then
            mod_name = birch.birchtree
        elseif mod_name == "bamboo" then
            mod_name = bamboo.bambootree
        else
            mod_name = ct_modpath .. "/schematics/" .. mod_name .. ".mts"
        end

        -- Support for Cool Trees.
        minetest.remove_node(pos)
        minetest.place_schematic(vector.new(pos.x, pos.y - 1, pos.z), mod_name, "0", nil, true, "place_center_x, place_center_z")
    end
end

-- Taken and slightly modified from from cornernote's
-- Minetest Skyblock mod instant sapling growth. Thanks!
-- https://github.com/cornernote/minetest-skyblock/blob/HEAD/skyblock_levels/register_node.lua#L61
minetest.register_on_mods_loaded(function()
    for _,node in pairs(instant_sapling_growth.saplings) do
        local old_after_place_node = minetest.registered_nodes[node].after_place_node

        minetest.override_item(node, {
            after_place_node = function(pos, placer, itemstack)
                -- When placed, bushes are normally converted to a fruitless bush.
                --
                -- However, if the bush is not in growing conditions, we must turn it back to a
                -- fruitless bush and not place the bush with its fruit.
                if (string.find(node, "bushes") and not can_grow(pos))
					or (minetest.check_player_privs(placer:get_player_name(), { sapling_growth = false })) then

                    return old_after_place_node(pos, placer, itemstack)
                end

                -- Check if we have space to make a tree.
                -- TO-DO: make sure this works for all kinds of trees.

                for dy=1,4 do
                    pos.y = pos.y + dy
                    if minetest.get_node(pos).name ~= 'air' and minetest.get_node(pos).name ~= 'default:leaves' then
                        minetest.log("info", "[INSTANT SAPLING GROWTH] Not enough space to grow the `" .. node .. "` sapling.")
                        return
                    end
                    pos.y = pos.y - dy
                end

                -- Grow the given sapling.
                grow_sapling(pos)
            end,
        })
    end
end)
