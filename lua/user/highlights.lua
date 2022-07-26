-- Override highlight groups in any theme
M = {
  -- duskfox = { -- a table of overrides
  --   Normal = { bg = "#000000" },
  -- },
  default_theme = function(highlights) -- or a function that returns one
    local C = require "default_theme.colors"

    highlights.Normal = { fg = C.fg, bg = C.bg }
    return highlights
  end,
}

return M
