--[[
    Support for the Cool Trees Modpack.

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

-- Sequoia (from Cool Trees modpack).
if minetest.get_modpath("sequoia") and minetest.registered_nodes["sequoia:sapling"] then
    table.insert(saplings, "sequoia:sapling")
end

-- Willow (from Cool Trees modpack).
if minetest.get_modpath("willow") and minetest.registered_nodes["willow:sapling"] then
    table.insert(saplings, "willow:sapling")
end

-- Pomegranate (from Cool Trees modpack).
if minetest.get_modpath("pomegranate") and minetest.registered_nodes["pomegranate:sapling"] then
    table.insert(saplings, "pomegranate:sapling")
end

-- Plumtree (from Cool Trees modpack).
if minetest.get_modpath("plumtree") and minetest.registered_nodes["plumtree:sapling"] then
    table.insert(saplings, "plumtree:sapling")
end

-- Pineapple (from Cool Trees modpack).
if minetest.get_modpath("pineapple") and minetest.registered_nodes["pineapple:sapling"] then
    table.insert(saplings, "pineapple:sapling")
end

-- Palm (from Cool Trees modpack).
if minetest.get_modpath("palm") and minetest.registered_nodes["palm:sapling"] then
    table.insert(saplings, "palm:sapling")
end

-- Oak (from Cool Trees modpack).
if minetest.get_modpath("oak") and minetest.registered_nodes["oak:sapling"] then
    table.insert(saplings, "oak:sapling")
end

-- Mahogany (from Cool Trees modpack).
if minetest.get_modpath("mahogany") and minetest.registered_nodes["mahogany:sapling"] then
    table.insert(saplings, "mahogany:sapling")
end

-- Lemon Tree (from Cool Trees modpack).
if minetest.get_modpath("lemontree") and minetest.registered_nodes["lemontree:sapling"] then
    table.insert(saplings, "lemontree:sapling")
end

-- Larch (from Cool Trees modpack).
if minetest.get_modpath("larch") and minetest.registered_nodes["larch:sapling"] then
    table.insert(saplings, "larch:sapling")
end

-- Jacaranda (from Cool Trees modpack).
if minetest.get_modpath("jacaranda") and minetest.registered_nodes["jacaranda:sapling"] then
    table.insert(saplings, "jacaranda:sapling")
end

-- Holly Tree (from Cool Trees modpack).
if minetest.get_modpath("hollytree") and minetest.registered_nodes["hollytree:sapling"] then
    table.insert(saplings, "hollytree:sapling")
end

-- Ebony (from Cool Trees modpack).
if minetest.get_modpath("ebony") and minetest.registered_nodes["ebony:sapling"] then
    table.insert(saplings, "ebony:sapling")
end

-- Clementine Tree (from Cool Trees modpack).
if minetest.get_modpath("clementinetree") and minetest.registered_nodes["clementinetree:sapling"] then
    table.insert(saplings, "clementinetree:sapling")
end

-- Chestnut Tree (from Cool Trees modpack).
if minetest.get_modpath("chestnuttree") and minetest.registered_nodes["chestnuttree:sapling"] then
    table.insert(saplings, "chestnuttree:sapling")
end

-- Cherry Tree (from Cool Trees modpack).
if minetest.get_modpath("cherrytree") and minetest.registered_nodes["cherrytree:sapling"] then
    table.insert(saplings, "cherrytree:sapling")
end

-- Cacao Tree (from Cool Trees modpack).
if minetest.get_modpath("cacaotree") and minetest.registered_nodes["cacaotree:sapling"] then
    table.insert(saplings, "cacaotree:sapling")
end

-- Birch (from Cool Trees modpack).
if minetest.get_modpath("birch") and minetest.registered_nodes["birch:sapling"] then
    table.insert(saplings, "birch:sapling")
end

-- Bald Cypress Tree (from Cool Trees modpack).
if minetest.get_modpath("baldcypress") and minetest.registered_nodes["baldcypress:sapling"] then
    table.insert(saplings, "baldcypress:sapling")
end
