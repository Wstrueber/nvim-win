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
local package_path_str = "C:\\Users\\bstru\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\bstru\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\bstru\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\bstru\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\bstru\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
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
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs"
  },
  bluewery = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bluewery"
  },
  ["boo-colorscheme-nvim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\boo-colorscheme-nvim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\colorbuddy.nvim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\completion-nvim"
  },
  ["dosbox-vim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\dosbox-vim"
  },
  ["fogbell.vim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fogbell.vim"
  },
  gloombuddy = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gloombuddy"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp-status.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nerdtree"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvcode-color-schemes.vim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\oceanic-next"
  },
  playground = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popup.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rust.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim"
  },
  ["tokyonight-vim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight-vim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\typescript-vim"
  },
  undotree = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-javascript"
  },
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-jsx-typescript"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-polyglot"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-prettier"
  },
  ["vim-ripgrep"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-ripgrep"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-rooter"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "C:\\Users\\bstru\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vscode.nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
