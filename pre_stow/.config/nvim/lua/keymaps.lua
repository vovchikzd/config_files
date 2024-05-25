local opts = function(description)
  return { noremap = true, silent = true, desc = description}
end

local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>", opts("Space as leader key"))
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>|", "<C-w>v", opts("Vertical split"))
keymap("n", "<leader>\\", "<C-w>s", opts("Horizontal split"))

keymap("n", "<C-h>", "<C-w>h", opts("Go to left window"))
keymap("n", "<C-j>", "<C-w>j", opts("Go to below window"))
keymap("n", "<C-k>", "<C-w>k", opts("Go to above window"))
keymap("n", "<C-l>", "<C-w>l", opts("Go to right window"))

keymap("n", "<esc>", "<cmd>nohlsearch<CR>", opts("Disable highlight after search"))

keymap("v", "<", "<gv", opts("Remove indent and stay in visual mode"))
keymap("v", ">", ">gv", opts("Add indent and stay in visual mode"))

keymap("v", "J", "<cmd>m '>+1<CR>gv=gv", opts("Move visual blok(line) down"))
keymap("v", "K", "<cmd>m '<-2<CR>gv=gv", opts("Move visual blok(line) up"))

keymap("v", "$", "g_", opts("Select to end of line without newline character"))
keymap("n", "U", "<C-r>", opts("Redo"))

-- insert new line above/below without insert mode
keymap("n", "<leader>o", "o<esc>", opts("Insert newline below and stay in normal mode")) -- conflict with tree
keymap("n", "<leader>O", "O<esc>", opts("Insert newline above and stay in normal mode"))

-- Telescope keys
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts("Find files in directory"))
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts("Grep files in directory"))
keymap("n", "<C-_>",      "<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top<CR>", opts("Grep current file"))
keymap("n", "<leader>fe", "<cmd>Telescope diagnostics sorting_strategy=ascending prompt_position=top<CR>", opts("See errors/warnings in current file"))
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts("Find open buffers"))
keymap("n", "<leader>gf", "<cmd>Telescope git_files<CR>", opts("Find git files"))
keymap("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", opts("Find keymaps"))
