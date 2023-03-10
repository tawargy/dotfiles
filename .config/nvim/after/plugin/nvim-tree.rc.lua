local status,nvimtree=pcall(require,'nvim-tree')
if(not status) then return end



nvimtree.setup {
  open_on_setup = true,
  view={
    width='20%',
    side='left',
  },
  --auto_close = false,
  update_focused_file={
    enable=true,
    update_cwd = true,
  },
  disable_netrw=false,
}

vim.g.nvim_tree_indent_markers = 1
--vim.g.nvim_tree_gitignore = 1



