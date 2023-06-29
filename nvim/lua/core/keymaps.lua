local keymap = vim.keymap

vim.g.mapleader = " "
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")

keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>cl", ":NvimTreeCollapse<CR>")

keymap.set("n", "<ESC><ESC>", ":noh<CR>")

keymap.set("n", "<Tab>", ":bnext<CR>")
keymap.set("n", "<S-Tab>", ":bprevious<CR>")

keymap.set("n", "<C-r>", "i<CR><ESC>k$h")
