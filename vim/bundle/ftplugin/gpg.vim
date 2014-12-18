""""""""""""""""""""
" GnuPG Extensions "
""""""""""""""""""""

" Tell the GnuPG plugin to armor new file
let g:GPGPreferArmor=1

" Tell the GnuPG plugin to sign new files.
let g:GPGPreferSign=1

" Tell the GnuPG plugin default encryption keys
let g:GPGDefaultRecipients=["pef@6cure.com"]

let g:GPGPossibleRecipients=[
    \"jvi@6cure.com",
    \"herve-debar@telecom-sudparis.eu"
  \]

augroup GnuPGExtra
" Set extra file options.
    autocmd BufReadCmd,FileReadCmd *.\(gpg\|asc\|pgp\) call SetGPGOptions()
" Automatically close unmodified files after inactivity.
    autocmd CursorHold *.\(gpg\|asc\|pgp\) quit
augroup END

function SetGPGOptions()
" Set updatetime to 1 minute.
    set updatetime=60000
" Fold at markers.
    set foldmethod=marker
" Automatically close all folds.
    set foldclose=all
" Only open folds with insert commands.
    set foldopen=insert
endfunction

" Yank WORD to system clipboard in normal mode
nmap <leader>y "+yE

" Yank selection to system clipboard in visual mode
vmap <leader>y "+y
