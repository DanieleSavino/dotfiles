require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]


local opt = vim.opt

opt.number = true          -- Enable absolute line numbers
opt.relativenumber = true  -- Enable relative line numbers

-- Set tab settings in Neovim (init.lua)
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.tabstop = 4           -- Set tab width to 4 spaces
vim.opt.shiftwidth = 4        -- Set indentation level to 4 spaces
vim.opt.softtabstop = 4       -- Set soft tab stop to 4 spaces

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"
