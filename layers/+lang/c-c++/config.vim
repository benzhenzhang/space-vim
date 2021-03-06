augroup SPACEVIM_C
    autocmd!
    autocmd FileType c,cpp setlocal cindent
    autocmd FileType c,cpp,objc nnoremap <LocalLeader>= :ClangFormat<CR>
    autocmd FileType c,cpp,objc vnoremap <LocalLeader>= :<C-u>ClangFormat<CR>

    if core_config#LayerLoaded('programming')
        autocmd FileType c,cpp nnoremap <buffer> <LocalLeader>m :update<Bar>execute 'AsyncRun! make '.shellescape(@%, 1)<CR>
    else
        autocmd FileType c,cpp nnoremap <buffer> <LocalLeader>m :update<Bar>execute '! make '.shellescape(@%, 1)<CR>
    endif
augroup END

" vim-cpp-enhanced-highlight {
    let g:cpp_class_scope_highlight = 1
    let g:c_no_curly_error=1
" }
