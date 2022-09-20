require('nvim-tree').setup({
  renderer = {
    icons = {
      show = {
        folder_arrow = false,
      },
      glyphs = {
        git = {
          unstaged = '!',
          staged = '+',
          untracked = '?'
        }
      }
    }
  }
})
