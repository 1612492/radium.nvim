local colors = require("radium.colors")
local options = require("radium").options
local radium = {}

local bg = options.transparent and colors.none or colors.base

radium.normal = {
  a = { bg = colors.blue, fg = colors.black, gui = "bold" },
  b = { bg = bg, fg = colors.blue },
  c = { bg = bg, fg = colors.text },
}

radium.insert = {
  a = { bg = colors.green, fg = colors.base, gui = "bold" },
  b = { bg = colors.fg, fg = colors.green },
}

radium.terminal = {
  a = { bg = colors.green, fg = colors.base, gui = "bold" },
  b = { bg = colors.fg, fg = colors.green },
}

radium.command = {
  a = { bg = colors.magenta, fg = colors.base, gui = "bold" },
  b = { bg = colors.fg, fg = colors.base },
}

radium.visual = {
  a = { bg = colors.magenta, fg = colors.base, gui = "bold" },
  b = { bg = colors.fg, fg = colors.base },
}

radium.replace = {
  a = { bg = colors.red, fg = colors.base, gui = "bold" },
  b = { bg = colors.fg, fg = colors.red },
}

radium.inactive = {
  a = { bg = bg, fg = colors.blue },
  b = { bg = bg, fg = colors.red, gui = "bold" },
  c = { bg = bg, fg = colors.yellow },
}

return radium
