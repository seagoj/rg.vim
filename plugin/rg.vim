if executable('rg')
    set grepprg=rg\ --vimgrep
    let g:grep_cmd_opts = '--line-numbers --noheading'
    let g:ag_prg='rg'
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:rip_use_caching = 0
    command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --glob "!vendor/*" --glob "!node_modules/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
endif
