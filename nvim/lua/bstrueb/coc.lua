local g = vim.g

-- Add (Neo)Vim's native statusline support.
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline.
-- === Airline is natively supported ===
-- o.statusline = o.statusline .. [[ %{coc#status()}%{get(b:,'coc_current_function','')} ]]

g.coc_global_extensions = {
    'coc-json',
    'coc-tsserver',
    'coc-yaml',
    'coc-eslint',
    'coc-prettier',
    'coc-go',
}

