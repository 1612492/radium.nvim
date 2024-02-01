local util = require("radium.util")

local colors = {
  none = "NONE",
  black = "#181c24",
  red = "#f87070",
  green = "#79dcaa",
  yellow = "#ffe59e",
  blue = "#7ab0df",
  magenta = "#c397d8",
  cyan = "#70c0ba",
  white = "#d4d4d5",
}

colors.base = colors.black
colors.text = colors.white
colors.subtext = util.darken(colors.text, 0.6)
colors.line = util.darken(colors.base, 0.8)
colors.border = util.darken(colors.base, 0.8)
colors.selection = util.lighten(colors.base, 0.8)

return colors
