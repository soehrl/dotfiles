return {
  "esmuellert/codediff.nvim",
  cmd = "CodeDiff",
  opts = {
    highlights = {
      line_insert = "#3A4B32",      -- Line-level insertions
      line_delete = "#543333",      -- Line-level deletions
      char_insert = "#4F6B3A",      -- Character-level insertions (nil = auto-derive)
      char_delete = "#8C3F3F",      -- Character-level deletions (nil = auto-derive)
    },
  }
}
