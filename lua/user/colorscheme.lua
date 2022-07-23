local M = {
  "misku/monokai.nvim",
  commit = "02d2ef4f73ba45d171ebdcbc716fbed2036eab16",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}

M.name = "monokai"
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    vim.notify("colorscheme " .. M.name .. " not found!")
    return
  end
end

return M
