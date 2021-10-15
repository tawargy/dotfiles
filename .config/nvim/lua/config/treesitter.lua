require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { 'verilog'  }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
   
    additional_vim_regex_highlighting = { 'python' },
    autopairs = {
      enable = true,
    },
  },
  autotag={
  enable=true,
  },
rainbow = {
    enable = true,
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  autopairs={
    enable=true
  }
  
}
