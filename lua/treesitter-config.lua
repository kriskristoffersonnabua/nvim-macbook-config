local status_ok, configs = pcall(require, 'nvim-treesitter.configs')

if not status_ok then
  return
end

configs.setup {
  -- ensure_installed = { 'tree-sitter-javascript', 'lua', 'c', 'rust' },
  sync_install = false,
  ignore_install = { '' },
  auto_install = false,
  highlight = {
    enable = true,
    disable = { "c", "rust" },
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { 'yaml' } },
  autotag = {
    enable = true
  },
}
