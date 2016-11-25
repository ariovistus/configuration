set ai
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" makefiles need special handling
autocmd FileType make set noexpandtab noai shiftwidth=8 softtabstop=0 syntax=nasm tabstop=8

" remember last position
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END
