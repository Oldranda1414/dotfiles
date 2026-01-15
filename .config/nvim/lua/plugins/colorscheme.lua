return {
  -- Pretty bright vibrant colorscheme
  --{ "monaqa/colorimetry.nvim" },
  -- The tsoding colorscheme
  {
    "blazkowolf/gruber-darker.nvim",
    opts = {
      italic = {
        strings = false,
        comments = false,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruber-darker",
    },
  },
}
