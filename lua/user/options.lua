-- set vim options here (vim.<first_key>.<second_key> =  value)
M = {
  opt = {
    -- set to true or false etc.
    relativenumber = false, -- sets vim.opt.relativenumber
    number = false,         -- sets vim.opt.number
    spell = true,          -- sets vim.opt.spell
    -- signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    signcolumn = "no",     -- unsets vim.opt.signcolumn
    wrap = false,          -- sets vim.opt.wrap
    undofile = false,
    -- guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor2", -- too thin to see
    guicursor = "n-v-c-sm:block,i-ci-ve:block-blinkwait30-blinkoff30-blinkon70,r-cr-o:hor50", -- timing seems unchanged with gnome-terminal
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    cmp_enabled = false, -- enable completion at start
    autopairs_enabled = false, -- enable autopairs at start
  },
}

return M
