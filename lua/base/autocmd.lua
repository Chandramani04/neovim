-- vim.cmd([[
--
--  augroup compilation
--  autocmd!
--  autocmd FileType cpp nnoremap ;d :w <bar> below 10split term://bash run.sh %:r<CR>a
--  autocmd FileType cpp nnoremap ;r :w <bar> below 10split term:// g++ %:r.cpp -o %:r.exe && ./%:r.exe<CR>a
--  autocmd FileType c nnoremap ;r :w <bar> below 10split term:// gcc %:r.c -o %:r.exe && ./%:r.exe<CR>a
--  autocmd FileType python nnoremap ;r :w <bar> below 10vsplit term:// python3 %:r.py<CR>a
--  augroup END
--   augroup numbertoggle
--     autocmd!
--     autocmd BufEnter,FocusGained,InsertLeave * set rnu
--     autocmd BufLeave,FocusLost,InsertEnter * set nornu
--   augroup END
-- ]])
--

vim.cmd([[
augroup compilation
autocmd!
autocmd FileType cpp nnoremap ;r :w <bar> below 40vsplit term:// runcode.sh %:r.cpp<CR>a
autocmd FileType c nnoremap ;r :w <bar> 10split term:// runcode.sh %:r.c<CR>a
autocmd FileType python nnoremap ;r :w <bar> 10split term:// runcode.sh %:r.py<CR>a
augroup END

augroup debug
autocmd!
autocmd FileType cpp nnoremap ;d :w <bar> below 10split term:// dbgcode.sh %:r.cc<CR>a
autocmd FileType c nnoremap ;d :w <bar> below 10split term:// dbgcode.sh %:r.c<CR>a
autocmd FileType python nnoremap ;d :w <bar> below 10vsplit term:// dbgcode.sh %:r.py<CR>a

augroup numbertoggle
autocmd!
autocmd BufEnter,FocusGained,InsertLeave * set rnu
autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
]])
