local impatient_ok, impatient = pcall(require, "impatient")
if impatient_ok then impatient.enable_profile() end

for _, source in ipairs {
  "core.utils",
  "core.options",
  "core.bootstrap",
  "core.plugins",
  "core.autocmds",
  "core.mappings",
  "configs.which-key-register",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

astronvim.conditional_func(astronvim.user_plugin_opts("polish", nil, false))

local themes = {
  Sunday = "molokai",
  Monday = "onedark",
  Tuesday = "angr",
  Wednesday = "nord",
  Thursday = "gruvbox",
  Friday = "ayu",
  Saturday = "tokyonight-night",
}

local current_day = os.date("%A");
-- vim.api.nvim_command("colorscheme " .. themes[current_day]);
vim.api.nvim_command("colorscheme gruvbox");

vim.api.nvim_command("highlight Normal guibg=none");
vim.api.nvim_command("highlight NonText guibg=none");

vim.api.nvim_command("au ColorScheme * hi Normal ctermbg=none guibg=non");
vim.api.nvim_command("au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red");
