vim.g.mapleader=" "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-f>", ":Rg! ")

vim.cmd([[:nnoremap <Leader><Leader>f <Plug>(easymotion-overwin-f)]])
vim.cmd([[let g:smoothie_enabled = v:true]])
vim.cmd([[let g:smoothie_no_default_mappings = v:true]])
vim.cmd([[let g:smoothie_speed_exponentiation_factor = 0.9]])
vim.cmd([[let g:smoothie_speed_constant_factor = 10]])
vim.cmd([[let g:smoothie_speed_linear_factor = 10]])
vim.cmd([[set clipboard+=unnamedplus]])

vim.cmd([[nnoremap <unique> <C-D> <cmd>call smoothie#do("\<C-D>")<CR> <cmd>call smoothie#do("\zz")<CR>]])
vim.cmd([[nnoremap <unique> <C-U> <cmd>call smoothie#do("\<C-U>")<CR><cmd>call smoothie#do("\zz")<CR>]])
vim.cmd([[nnoremap <unique> zz <cmd>call smoothie#do("\zz")<CR>]])
