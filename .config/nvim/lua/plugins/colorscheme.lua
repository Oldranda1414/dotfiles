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
  { "oskarnurm/koda.nvim" },
  { "slugbyte/lackluster.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruber-darker",
    },
  },
}
