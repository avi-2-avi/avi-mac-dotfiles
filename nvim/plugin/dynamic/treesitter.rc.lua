local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

treesitter.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  auto_install = true,
  sync_install = true,
  ignore_install = {},
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "typescript",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "vue",
    "javascript",
    "dockerfile",
    "gitignore",
    "yaml",
    "terraform",
    "cpp",
    "scss",
    "hcl",
    "svelte",
    "go"
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
