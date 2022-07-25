-- Modify which-key registration
M = {
  -- Add bindings
  register_mappings = {
    -- first key is the mode, n == normal mode
    n = {
      -- second key is the prefix, <leader> prefixes
      -- ["<leader>"] = {
        -- which-key registration table for normal mode, leader prefix
        -- ["N"] = { "<cmd>tabnew<cr>", "New Buffer" },
        -- },
    },
  },
}

return M
