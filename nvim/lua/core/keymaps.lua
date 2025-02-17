-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a space
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-- Check mappings
-- :verbose map [key]
-----------------------------------------------------------

-- Disable arrow keys
-- map('', '<up>', '<nop>')
-- map('', '<down>', '<nop>')
-- map('', '<left>', '<nop>')
-- map('', '<right>', '<nop>')

-- Map Esc
map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')

-- Clear search highlighting with <leader> and c
-- map('n', '<leader>c', ':nohl<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {j,k,l}
map('n', '<C-j>', '<C-w>h')
map('n', '<C-k>', '<C-w>w')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
-- map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
-- map('n', '<leader>s', ':w<CR>')
-- map('i', '<leader>s', '<C-c>:w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
-- map('n', '<leader>q', ':qa!<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-b>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- Tagbar
-- map('n', '<leader>z', ':TagbarToggle<CR>')          -- open/close

-----------------------------------------------------------
-- MuseHorizon
-----------------------------------------------------------

map('', 'k', 'j')
map('', 'j', 'h')
map('', 'h', 'i')
map('', 'H', 'I')
map('', 'i', 'k')
map('', 'L', '$')
map('', 'J', '0')
map('', 'K', '10j')
map('', 'I', '10k')
map('', '<leader>i', '?\\%<C-R>=virtcol(".")<CR>v\\S<CR>')
map('', '<leader>k', '/\\%<C-R>=virtcol(".")<CR>v\\S<CR>')
map('n', '<Tab>', '>>')
map('n', '<S-Tab>', '<<')
map('i', '<S-Tab>', '<C-d>')
map('v', '<Tab>', '>gv')
map('v', '<S-Tab>', '<gv')
map('n', '<C-a>', 'gg<S-v>G')
map('n', 'x', '"_x')
map('n', '+', '<C-a>')
map('n', '-', '<C-x>')
map('n', '<leader>p', '"_dP')
map('v', '<leader>p', '"_dP')
map('n', '<leader>y', '"+y')
map('v', '<leader>y', '"+y')
map('n', '<leader>Y', '"+Y')
map('v', '<leader>Y', '"+Y')
map('n', '<leader>d', '"_d')
map('v', '<leader>d', '"_d')
map('n', 'U', '<C-r>')
map('n', 'gb', '<C-o>')
map('n', 'gf', '<C-i>')
map('n', 'gi', 'gk')
map('n', 'gk', 'gj')
map('n', '<leader>z', ':set wrap!<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', '<c-w>', ':q<CR>')
map('n', '<leader><Tab>', ':bnext<CR>')
map('n', '<c-s>', ':w<CR>')

-- FZF
map('n', '<C-f>', ':FZF<CR>')
map('n', '<C-H>', ":let $FZF_DEFAULT_COMMAND='find . \\! \\( -type d -path ./.git -prune \\) \\! -type d \\! -name ''*.tags'' -printf ''%P\\n'''<CR>")

-- Lazygit
map('n', '<C-g>', ':LazyGit<CR>')
