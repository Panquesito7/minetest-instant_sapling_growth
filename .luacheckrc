allow_defined_top = false
unused_args = true
max_line_length = false

read_globals = {
    string = {fields = {"split", "trim"}},
    table = {fields = {"copy", "getn"}},

    "minetest", "maple", "abstract_ferns", "abstract_dryplants",
    "ethereal", "moretrees", "default", "vector", "bamboo", "birch"
}

globals = {
    "instant_sapling_growth"
}
