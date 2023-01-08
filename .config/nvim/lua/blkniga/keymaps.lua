local opts = {noremap = true, silent = true}

local keymap = vim.api.nvim_set_keymap

-- Remap Leader Key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
-- normal mode = "n"
-- insert mode = "i"
-- visual mode = "v"
-- visual block mode = "x"
-- term mode = "t"
-- command mode = "c"

-- Normal --
-- To quit in command mode
keymap("n", "<leader>q", ":q", opts)

-- To save a file
keymap("n", "<leader>w", ":w", opts)
keymap("n", "<leader>wq", ":wq", opts)

-- To move around in history
keymap("n", "<leader>[", "<C-o>", opts)
keymap("n", "<leader>]", "<C-i>", opts)

-- To search & replace a word I am currently in
keymap("n", "<leader>rw", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", opts)

-- To move down & up a page but centered
keymap("n", "<M-j>", "<C-d>zz", opts)
keymap("n", "<M-k>", "<C-u>zz", opts)

-- Opening split panes
keymap("n", "<leader>V", ":vsplit", opts)
keymap("n", "<leader>S", ":split", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts) -- :vsplit / :split navigation
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize w arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts) -- shift+l
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Let's the cursor remain in the same place after using J to append the text below to your current line
keymap("n", "J", "mzJ`z", opts)

-- Allows for search terms to stay in the middle
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Never press Q
keymap("n", "Q", "<nop>", opts)

-- Nvim-Tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Bufferline
keymap("n", "<leader>bd", ":Bdelete!<cr>", opts)

-- Insert --
keymap("i", "jj", "<Esc>", opts)

-- Visual & Visual Block --
-- Stay indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Keep the yanked term
keymap("v", "p", '"_dP', opts)
keymap("x", "<leader>p", '\"_dP', opts)

-- Moving a block of code that you've highlighted
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)

