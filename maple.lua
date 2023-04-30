--[[
    Support for the Maple Tree mod.

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

-- Cool Trees also contains its own Maple sapling.
local maple_tree = (minetest.registered_nodes["maple:maple_sapling"] ~= nil and "maple:maple_sapling") or "maple:sapling"

if minetest.get_modpath("maple") and minetest.registered_nodes[maple_tree] then
    table.insert(saplings, maple_tree)
end
