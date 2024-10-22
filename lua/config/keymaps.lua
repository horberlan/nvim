local map = LazyVim.safe_keymap_set
local opts = { noremap = true, silent = true }

-- Salvar e Fechar
map("n", "<C-s>", ":w<CR>", opts)
map("n", "<C-S-s>", ":wa<CR>", opts)
map("n", "<C-o>", ':e <C-r>=expand("%:p:h") . "/" <CR>', opts)
map("n", "<C-w>", ":bd<CR>", opts)

-- Recortar/Copiar/Colar
map("v", "<C-x>", '"+d', opts)
map("v", "<C-c>", '"+y', opts)
map("n", "<C-v>", '"+p', opts)

-- Desfazer/Refazer
map("n", "<C-z>", "u", opts)
map("n", "<C-y>", "<C-r>", opts)

-- Pesquisa
map("n", "<C-f>", ":Telescope live_grep<CR>", opts)

-- Navegação
map("n", "<C-p>", ":Telescope find_files<CR>", opts)
map("n", "<C-b>", ":Telescope buffers<CR>", opts)
map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
map("n", "<C-g>", ":Telescope git_files<CR>", opts)
map("n", "<C-S-p>", ":Telescope commands<CR>", opts)

-- Janelas e Splits
map("n", "<C-\\>", ":vsplit<CR>", opts)
map("n", "<C-_>", ":split<CR>", opts)
map("n", "<C-Left>", "<C-w>h", opts)
map("n", "<C-Right>", "<C-w>l", opts)
map("n", "<C-Up>", "<C-w>k", opts)
map("n", "<C-Down>", "<C-w>j", opts)

-- Terminal
map("n", "<C-`>", ":ToggleTerm<CR>", opts)

-- Git
map("n", "<C-S-g>", ":LazyGit<CR>", opts)

-- Comentários
map("n", "<C-/>", ":CommentToggle<CR>", opts)
map("v", "<C-/>", ":CommentToggle<CR>", opts)

-- Depuração
map("n", "<F5>", ':lua require("dap").continue()<CR>', opts)
map("n", "<F9>", ':lua require("dap").toggle_breakpoint()<CR>', opts)
map("n", "<F10>", ':lua require("dap").step_over()<CR>', opts)
map("n", "<F11>", ':lua require("dap").step_into()<CR>', opts)
map("n", "<S-F11>", ':lua require("dap").step_out()<CR>', opts)

-- Outras Funções
map("n", "<C-,>", ":Telescope lsp_document_symbols<CR>", opts)
map("n", "<C-.>", ":lua vim.lsp.buf.code_action()<CR>", opts)
map("n", "<C-d>", "yyp", opts)

-- Mover palavras
map("n", "<C-Left>", "b", opts)
map("n", "<C-Right>", "w", opts)
map("i", "<C-Left>", "<C-o>b", opts)
map("i", "<C-Right>", "<C-o>w", opts)

-- Seleção com Shift
map("n", "<S-Up>", "v<Up>", opts)
map("n", "<S-Down>", "v<Down>", opts)
map("n", "<S-Left>", "v<Left>", opts)
map("n", "<S-Right>", "v<Right>", opts)

map("v", "<S-Up>", "<Up>", opts)
map("v", "<S-Down>", "<Down>", opts)
map("v", "<S-Left>", "<Left>", opts)
map("v", "<S-Right>", "<Right>", opts)

-- Apagar palavra inteira com Ctrl + Backspace
-- No modo de inserção
map("i", "<C-BS>", "<C-w>", opts)
-- No modo normal
map("n", "<C-BS>", "db", opts)
-- Desfazer com Ctrl + Z
map("n", "<C-z>", "u", opts) -- No modo normal
map("i", "<C-z>", "<C-o>u", opts) -- No modo de inserção
-- Refazer com Ctrl + Y
map("n", "<C-y>", "<C-r>", opts) -- No modo normal
map("i", "<C-y>", "<C-o><C-r>", opts) -- No modo de inserção

-- Alternar o nvim-tree com Ctrl + B
require("lazy").setup({
  {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons", -- opcional, para ícones de arquivo
    },
    config = function()
      require("nvim-tree").setup({})
    end,
  },
})

map("n", "<C-b>", ":NvimTreeToggle<CR>", opts)

-- Buscar no arquivo com Ctrl + F
map("n", "<C-f>", "/", opts) -- No modo normal
map("i", "<C-f>", "<C-o>/", opts) -- No modo de inserção

-- Buscar em todos os arquivos com Ctrl + Shift + F

map("n", "<C-S-f>", ":Telescope live_grep<CR>", opts)

map("n", "<C-S-`>", ":ToggleTerm<CR>", opts)
map("n", "<C-`>", ":ToggleTerm<CR>", opts)
map("i", "<C-`>", "<C-o>:ToggleTerm<CR>", opts)
map("i", "<C-`>", "<C-o>:ToggleTerm<CR><C-o>i", opts)

map("n", "<C-Tab>", ":tabnext<CR>", opts)
map("n", "<S-Tab>", ":tabprevious<CR>", opts)
map("n", "<C-b>", ":NvimTreeOpen<CR>", opts)

map("n", "<C-w>", ":tabclose<CR>", opts)
map("n", "<C-b>", ":NvimTreeClose<CR>", opts)
map("n", "<C-a>", "ggVG", opts) -- Selecionar tudo
-- Atalhos de pesquisa
map("n", "<C-h>", ":Telescope grep_string<CR>", opts)