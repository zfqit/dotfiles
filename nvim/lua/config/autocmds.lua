-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua


-- custom autocmds for myself
local function augroup(name)
  return vim.api.nvim_create_augroup("user_augroup_" .. name, {
    clear = true,
  })
end

-- auto save when nvim lost focus or BufLeave
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
  group = augroup("auto_save"),
  pattern = "*",
  callback = function(event)
    local opts = { buf = event.buf }
    local buf_type = vim.api.nvim_get_option_value("buftype", opts)
    if buf_type ~= "" then
      return
    end

    if not vim.api.nvim_get_option_value("modified", opts) then
      return
    end

    vim.cmd("silent! write")
  end,
})

-- disable auto keep comment in next line like
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("auto_keep_comment"),
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})
