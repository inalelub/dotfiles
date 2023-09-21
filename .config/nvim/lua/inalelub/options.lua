local options = {
	autoindent = true,
	smartindent = true,
	tabstop = 4,
	expandtab = true,
	shiftwidth = 4,
	showtabline = 2,

	number = true,
	relativenumber = true,
	incsearch = true,
	hlsearch = false,
	ignorecase = true,
	smartcase = true,

	splitbelow = true,
	splitright = true,

	wrap = false,
	swapfile = false,
	showmode = false,
	mouse = 'a',
	fileencoding = 'utf-8',
	backup = false,
	writebackup = false,
	termguicolors = true,
	signcolumn = 'yes'
}

vim.opt.shortmess:append "c"
vim.cmd [[set iskeyword+=-]]

for key, value in pairs(options) do
    vim.opt[key] = value
end
