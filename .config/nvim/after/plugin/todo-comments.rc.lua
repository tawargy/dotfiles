local status,todo=pcall(require,'todo-comments')
if(not status) then return end

todo.setup{
colors = {
    error = { "LspDiagnosticsDefaultError", "ErrorMsg", "#DC2626" },
    warning = { "LspDiagnosticsDefaultWarning", "WarningMsg", "#FBBF24" },
    info = { "LspDiagnosticsDefaultInformation", "#2563EB" },
    hint = "#FBBF24" ,
    default = { "Identifier", "#7C3AED" },
  },
}
 
