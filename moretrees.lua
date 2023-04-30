--[[
    Support for the More Trees mod.

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

-- More Trees support.
-- Obtain the trees from `moretrees.treelist`.
if minetest.get_modpath("moretrees") and moretrees.treelist then
    for _, tree in ipairs(moretrees.treelist) do
        local sapling = "moretrees:" .. tree[1] .. "_sapling"

        if minetest.registered_nodes[sapling] then
            table.insert(saplings, sapling)
            table.insert(saplings, sapling .. "_ongen")
        end
    end
end
