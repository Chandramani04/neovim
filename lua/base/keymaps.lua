vim.g.mapleader = " "
vim.g.maplocalleader = " "
local keymap = vim.keymap
--comments
keymap.set("n", "<C-j>", ":CommentToggle<CR>")
keymap.set("v", "<C-j>", ":CommentToggle<CR>")

keymap.set("n", "<S-j>", ":CompetiTestRun<CR>")
keymap.set("n", "<S-f>", ":CompetiTestEdit<CR>")
keymap.set("n", "<S-r>", ":CompetiTestReceive testcases<cr>")
keymap.set("n", "<S-u>", ":CompetiTestAdd<CR>")
keymap.set("n", "<S-d>", ":CompetiTestDelete<CR>")

--rename all occurence and html tags
keymap.set("n", "<leader>rn", ":IncRename ")

-- for laptop convenience
keymap.set("i", "ff", "<esc>")

-- select all
keymap.set("n", "<c-a>", "gg<s-v>G")

-- new tab
keymap.set("n", "<c-n>", ":tabedit<cr>")

-- split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")
-- terminal
-- keymap.set("n", ";h", ":ToggleTerm direction=horizontal size=10<cr>")
-- keymap.set("n", ";h", ":ToggleTerm direction=vertical size=10<cr>")
keymap.set("n", ";f", ":ToggleTerm direction=float<cr>")

-- navigation in window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sl", "<C-w>l")

-- resize the window
keymap.set("n", "<C-left>", "<C-w><")
keymap.set("n", "<C-right>", "<C-w>>")
keymap.set("n", "<C-up>", "<C-w>+")
keymap.set("n", "<C-down>", "<C-w>-")

-- Set key mappings for saving and quitting files
keymap.set("n", "<leader>s", ":wq<CR>")
keymap.set("n", "<leader>k", ":q!<CR>")
-- keymap.set("n", "<leader>f", ":w<CR>")
