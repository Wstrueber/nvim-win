local parsers = require'nvim-treesitter.parsers'
local configs = require'nvim-treesitter.configs'
require 'nvim-treesitter.install'.compilers = { "clang" }
configs.setup {
  ensure_installed = "maintained",
  playground = {
    enable = true,
    updatetime = 25
  }
}

local parser_configs = parsers.get_parser_configs()
parser_configs.html.used_by = 'svelte'
