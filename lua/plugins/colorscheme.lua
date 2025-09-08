return {
  'mellow-theme/mellow.nvim',
  priority = 1000,
  config = function()
    vim.g.mellow_italic_comments = true
    vim.g.mellow_italic_keywords = false
    vim.g.mellow_italic_booleans = false
    vim.g.mellow_italic_variables = false
    vim.g.mellow_bold_comments = false
    vim.g.mellow_bold_keywords = false
    vim.g.mellow_bold_booleans = false
    vim.g.mellow_bold_variables = false
    vim.g.mellow_transparent = false
    vim.g.mellow_highlight_overrides = {}
    vim.cmd.colorscheme('mellow')
  end,
}
