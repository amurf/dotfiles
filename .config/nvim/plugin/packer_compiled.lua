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
local package_path_str = "/Users/ashley.murphy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/ashley.murphy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/ashley.murphy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/ashley.murphy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/ashley.murphy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/gruvbox-community/gruvbox"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cursorline"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/nvim-cursorline",
    url = "https://github.com/yamatsum/nvim-cursorline"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tmux-navigation"] = {
    config = { "\27LJ\2\n�\6\0\0\6\0\26\00076\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0005\5\22\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\23\0'\4\24\0005\5\25\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2B:lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()<cr>\14<C-Space>\1\0\2\vsilent\2\fnoremap\2H:lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()<cr>\n<C-\\>\1\0\2\vsilent\2\fnoremap\2C:lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>\n<C-l>\1\0\2\vsilent\2\fnoremap\2@:lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>\n<C-k>\1\0\2\vsilent\2\fnoremap\2B:lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>\n<C-j>\1\0\2\vsilent\2\fnoremap\2B:lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>\n<C-h>\6n\20nvim_set_keymap\bapi\bvim\1\0\1\24disable_when_zoomed\2\nsetup\25nvim-tmux-navigation\frequire\0" },
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/nvim-tmux-navigation",
    url = "https://github.com/alexghergh/nvim-tmux-navigation"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["shade.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/shade.nvim",
    url = "https://github.com/sunjon/shade.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/ashley.murphy/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tmux-navigation
time([[Config for nvim-tmux-navigation]], true)
try_loadstring("\27LJ\2\n�\6\0\0\6\0\26\00076\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\v\0'\4\f\0005\5\r\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\14\0'\4\15\0005\5\16\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\17\0'\4\18\0005\5\19\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\20\0'\4\21\0005\5\22\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0'\3\23\0'\4\24\0005\5\25\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2B:lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()<cr>\14<C-Space>\1\0\2\vsilent\2\fnoremap\2H:lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()<cr>\n<C-\\>\1\0\2\vsilent\2\fnoremap\2C:lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>\n<C-l>\1\0\2\vsilent\2\fnoremap\2@:lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>\n<C-k>\1\0\2\vsilent\2\fnoremap\2B:lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>\n<C-j>\1\0\2\vsilent\2\fnoremap\2B:lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>\n<C-h>\6n\20nvim_set_keymap\bapi\bvim\1\0\1\24disable_when_zoomed\2\nsetup\25nvim-tmux-navigation\frequire\0", "config", "nvim-tmux-navigation")
time([[Config for nvim-tmux-navigation]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
