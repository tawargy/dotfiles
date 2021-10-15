-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/tawargy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/tawargy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/tawargy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/tawargy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tawargy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  dracula = {
    loaded = true,
    path = "/home/tawargy/.local/share/nvim/site/pack/packer/start/dracula"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\né\2\0\0\a\0\n\1\0185\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2>\2\15\0016\2\2\0009\2\5\0029\2\6\0026\4\2\0009\4\a\0049\4\b\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\t\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16shellescape\afn\14textwidth\abo\bvim\1\17\0\0\24--config-precedence\16prefer-file\19--single-quote\25--no-bracket-spacing\17--prose-wrap\valways\19--arrow-parens\valways\21--trailing-comma\ball\14--no-semi\18--end-of-line\alf\18--print-width\0\21--stdin-filepath\1\0\2\nstdin\2\bexe\rprettier#€€À™\0046\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\6-\1\0\2\nstdin\2\bexe\nshfmt#\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\nrefmtD\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmt>\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\f--quiet\6-\1\0\2\nstdin\2\bexe\nblack#\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\ngofmt)\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\16nixpkgs-fmtØ\1\0\0\3\0\a\0\f5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2>\2\b\0016\2\2\0009\2\3\0029\2\5\2>\2\n\1=\1\6\0L\0\2\0\targs\14textwidth\ftabstop\abo\bvim\1\f\0\0\18--indent-type\vSpaces\19--line-endings\tUnix\18--quote-style\21AutoPreferSingle\19--indent-width\0\19--column-width\0\6-\1\0\2\nstdin\2\bexe\vstyluaÕ\4\1\0\6\0&\0Y3\0\0\0003\1\1\0005\2\2\0004\3\3\0>\0\1\3=\3\3\0024\3\3\0>\0\1\3=\3\4\0024\3\3\0>\0\1\3=\3\5\0024\3\3\0>\0\1\3=\3\6\0024\3\3\0>\0\1\3=\3\a\0024\3\3\0>\0\1\3=\3\b\0024\3\3\0>\0\1\3=\3\t\0024\3\3\0>\0\1\3=\3\n\0024\3\3\0>\0\1\3=\3\v\0024\3\3\0>\0\1\3=\3\f\0024\3\3\0>\0\1\3=\3\r\0024\3\3\0>\0\1\3=\3\14\0024\3\3\0>\0\1\3=\3\15\0024\3\3\0>\0\1\3=\3\16\0024\3\3\0>\0\1\3=\3\17\0024\3\3\0>\0\1\3=\3\18\0024\3\3\0>\1\1\3=\3\19\0024\3\3\0>\1\1\3=\3\20\0024\3\3\0003\4\21\0>\4\1\3=\3\22\0024\3\3\0003\4\23\0>\4\1\3=\3\24\0024\3\3\0003\4\25\0>\4\1\3=\3\26\0024\3\3\0003\4\27\0>\4\1\3=\3\28\0024\3\3\0003\4\29\0>\4\1\3=\3\30\0024\3\3\0003\4\31\0>\4\1\3=\3 \0026\3!\0'\5\"\0B\3\2\0029\3#\0035\5$\0=\2%\5B\3\2\1K\0\1\0\rfiletype\1\0\1\flogging\1\nsetup\14formatter\frequire\blua\0\bnix\0\ago\0\vpython\0\trust\0\vreason\0\tbash\ash\thtml\fgraphql\tyaml\tless\tscss\njsonc\tjson\bcss\rmarkdown\19typescript.tsx\19javascript.jsx\bvue\20typescriptreact\20javascriptreact\15typescript\15javascript\1\0\0\0\0\0" },
    loaded = true,
    path = "/home/tawargy/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/tawargy/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/tawargy/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/tawargy/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/tawargy/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/tawargy/.local/share/nvim/site/pack/packer/start/packer.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\né\2\0\0\a\0\n\1\0185\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2>\2\15\0016\2\2\0009\2\5\0029\2\6\0026\4\2\0009\4\a\0049\4\b\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\t\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16shellescape\afn\14textwidth\abo\bvim\1\17\0\0\24--config-precedence\16prefer-file\19--single-quote\25--no-bracket-spacing\17--prose-wrap\valways\19--arrow-parens\valways\21--trailing-comma\ball\14--no-semi\18--end-of-line\alf\18--print-width\0\21--stdin-filepath\1\0\2\nstdin\2\bexe\rprettier#€€À™\0046\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\6-\1\0\2\nstdin\2\bexe\nshfmt#\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\nrefmtD\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\nstdin\2\bexe\frustfmt>\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\f--quiet\6-\1\0\2\nstdin\2\bexe\nblack#\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\ngofmt)\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\2\nstdin\2\bexe\16nixpkgs-fmtØ\1\0\0\3\0\a\0\f5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2>\2\b\0016\2\2\0009\2\3\0029\2\5\2>\2\n\1=\1\6\0L\0\2\0\targs\14textwidth\ftabstop\abo\bvim\1\f\0\0\18--indent-type\vSpaces\19--line-endings\tUnix\18--quote-style\21AutoPreferSingle\19--indent-width\0\19--column-width\0\6-\1\0\2\nstdin\2\bexe\vstyluaÕ\4\1\0\6\0&\0Y3\0\0\0003\1\1\0005\2\2\0004\3\3\0>\0\1\3=\3\3\0024\3\3\0>\0\1\3=\3\4\0024\3\3\0>\0\1\3=\3\5\0024\3\3\0>\0\1\3=\3\6\0024\3\3\0>\0\1\3=\3\a\0024\3\3\0>\0\1\3=\3\b\0024\3\3\0>\0\1\3=\3\t\0024\3\3\0>\0\1\3=\3\n\0024\3\3\0>\0\1\3=\3\v\0024\3\3\0>\0\1\3=\3\f\0024\3\3\0>\0\1\3=\3\r\0024\3\3\0>\0\1\3=\3\14\0024\3\3\0>\0\1\3=\3\15\0024\3\3\0>\0\1\3=\3\16\0024\3\3\0>\0\1\3=\3\17\0024\3\3\0>\0\1\3=\3\18\0024\3\3\0>\1\1\3=\3\19\0024\3\3\0>\1\1\3=\3\20\0024\3\3\0003\4\21\0>\4\1\3=\3\22\0024\3\3\0003\4\23\0>\4\1\3=\3\24\0024\3\3\0003\4\25\0>\4\1\3=\3\26\0024\3\3\0003\4\27\0>\4\1\3=\3\28\0024\3\3\0003\4\29\0>\4\1\3=\3\30\0024\3\3\0003\4\31\0>\4\1\3=\3 \0026\3!\0'\5\"\0B\3\2\0029\3#\0035\5$\0=\2%\5B\3\2\1K\0\1\0\rfiletype\1\0\1\flogging\1\nsetup\14formatter\frequire\blua\0\bnix\0\ago\0\vpython\0\trust\0\vreason\0\tbash\ash\thtml\fgraphql\tyaml\tless\tscss\njsonc\tjson\bcss\rmarkdown\19typescript.tsx\19javascript.jsx\bvue\20typescriptreact\20javascriptreact\15typescript\15javascript\1\0\0\0\0\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
