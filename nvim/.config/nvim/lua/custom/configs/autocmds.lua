vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    -- Set global indentation to 4 spaces
    vim.opt.tabstop = 4       -- How many spaces a TAB character displays as
    vim.opt.shiftwidth = 4    -- Number of spaces for auto-indent
    vim.opt.softtabstop = 4   -- Number of spaces for TAB in insert mode
    vim.opt.expandtab = true  -- Convert tabs to spaces

    -- Optional: Fix for white lines appearing every 2 spaces
    vim.opt.list = false      -- Disable showing whitespace characters
  end,
})

-- Optional: Override for specific file types (e.g., Python, YAML)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "yaml" },
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4
  end,
})
