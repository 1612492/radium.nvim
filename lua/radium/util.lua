local M = {}

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
