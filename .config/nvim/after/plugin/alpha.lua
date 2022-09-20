-- local config = require('alpha.themes.startify').config
local section = require('alpha.themes.startify').section

require('alpha').setup({
  layout = {
        { type = "padding", val = 1 },
        section.top_buttons,
        section.mru_cwd,
        section.mru,
        { type = "padding", val = 1 },
        section.bottom_buttons,
        section.footer,
  },
  opts = {margin = 3}
})
