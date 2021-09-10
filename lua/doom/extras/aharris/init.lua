---[[---------------------------------------]]---
--     keybindings - Doom Nvim keybindings     --
--              Author: NTBBloodbath           --
--              License: GPLv2                 --
---[[---------------------------------------]]---

local utils = require("doom.utils")
local log = require("doom.extras.logging")
local config = require("doom.core.config").load_config()
local functions = require("doom.core.functions")

log.debug("Loading aharris module ...")

-- Additional options for mappings
local opts = { silent = true }

-- aharris
utils.map("i", "fd", "<ESC>", opts, "Editor", "exit_insert_fd", "Exit insert mode")
utils.map("n", "<leader>fs", "<cmd>w<cr>", opts, "Save", "save_fs", "Save fs")

utils.map(
  "n",
  "<leader>bb",
  "<cmd>Telescope buffers show_all_buffers=true<CR>",
  opts,
  "Movement",
  "switch_buffers_bb",
  "Switch buffers"
)
if vim.fn.filereadable('~/.vimrc_background') then
    vim.cmd('  source ~/.vimrc_background')
end
