local editor = require("radium.groups.editor")
local syntax = require("radium.groups.syntax")
local terminal = require("radium.groups.terminal")
local util = require("radium.util")

local M = {
  options = {
    transparent = false,
  },
}

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "radium"

  local theme = vim.tbl_extend("force", editor(M.options), syntax)

  util.set_global_values(terminal)
  util.syntax(theme)
end

function M.setup(opts)
  if opts then
    M.options = opts
  end

  M.load()
end

return M
