local M = {
  bg = "#000000",
  fg = "#ffffff",
}

local function hexToRgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

function M.blend(foreground, background, alpha)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = hexToRgb(background)
  local fg = hexToRgb(foreground)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.darken(hex, amount, bg)
  return M.blend(hex, bg or M.bg, amount)
end

function M.lighten(hex, amount, fg)
  return M.blend(hex, fg or M.fg, amount)
end

local function highlight(hl)
  if hl.style then
    for _, style in ipairs(hl.style) do
      hl[style] = true
    end
  end

  hl.style = nil
end

function M.syntax(theme)
  for group, hl in pairs(theme) do
    highlight(hl)
    vim.api.nvim_set_hl(0, group, hl)
  end
end

function M.set_global_values(values)
  for k, v in pairs(values) do
    vim.g[k] = v
  end
end

return M
