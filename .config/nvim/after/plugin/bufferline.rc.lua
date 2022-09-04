local status, bufferline=pcall(require,'bufferline')
if(not status) then return end
bufferline.setup{
  options={
    separator_style='slant',
    sort_by='insert_at_end',
    diagnostics='nvim_lsp'
  }
}
