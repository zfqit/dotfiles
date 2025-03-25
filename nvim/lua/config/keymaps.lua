-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- see more arguments :h map-arguments
local function opts(desc, remap, noremap)
  return {
    remap = remap or true,
    noremap = noremap or true,
    desc = desc,
  }
end

-- format
map({ "n", "v" }, "<leader>ff", "<leader>cf", opts("Format Document", false))

-- lazygit
if vim.fn.executable("lazygit") == 1 then
  map("n", "<c-g>", "<leader>gg", opts("Open lazygit"))
end

map("n", "<leader>rn", "<leader>cr", opts("Rename Symbol"))

map("n", "<leader>fs", "<cmd>wa!<cr>", opts("Save", false))

map("n", "<c-q>", "<leader>qq", opts("Quit"))

map("n", "<c-e>", "<leader>e", opts("Open file explorer"))

map("n", "<c-p>", "<leader><leader>", opts("Find files"))

map({ "n", "t" }, "<c-x>", "<c-_>", opts("Open terminal"))
