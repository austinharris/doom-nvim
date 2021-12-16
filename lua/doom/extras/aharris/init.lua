---[[---------------------------------------]]---
--     keybindings - Doom Nvim keybindings     --
--              Author: NTBBloodbath           --
--              License: GPLv2                 --
---[[---------------------------------------]]---

local log = require("doom.extras.logging")
local mappings = require("doom.utils.mappings")
-- local config = require("doom.core.config").load_config()
-- local functions = require("doom.core.functions")

log.debug("Loading aharris module ...")

-- Additional options for mappings
local opts = { silent = true }

-- aharris
mappings.map("i", "fd", "<ESC>", opts, "Editor", "exit_insert_fd", "Exit insert mode")
mappings.map("n", "<C-g>", "<ESC>", opts, "Editor", "exit_insert_ctrlg_normal", "Exit")
mappings.map("i", "<C-g>", "<ESC>", opts, "Editor", "exit_insert_ctrlg_insert", "Exit")
mappings.map("n", "<leader>fs", "<cmd>w<cr>", opts, "Save", "save_fs", "Save fs")

mappings.map(
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

-- My fancy fish makes some things behave weird/slow like treesitter
vim.cmd('set shell=/bin/bash')
