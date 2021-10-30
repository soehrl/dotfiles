require("telescope").setup {
  defaults = {
    mappings = {
      i = {
        ["<c-x>"] = "delete_buffer",
      },
      n = {
        ["<c-x>"] = "delete_buffer",
      }
    }
  },
  pickers = {
  },
  extensions = {
  }
}
