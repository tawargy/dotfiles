require'nvim-tree'.setup {
  view={
    width='20%',
    side='left',
    auto_resize=true,
  },
  auto_close = false,
  update_focused_file={
    enable=true,
  },
  disable_netrw=false,
}

vim.g.nvim_tree_indent_markers = 1
--vim.g.nvim_tree_gitignore = 1



