-- taken from https://github.com/oskarnurm/koda.nvim
-- return {
--   "oskarnurm/koda.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     -- require("koda").setup({ transparent = true })
--     vim.cmd("colorscheme koda")
--   end,
-- }

return {
  "blazkowolf/gruber-darker.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  opts = {
    italic = {
      strings = false,
      comments = false,
    },
  },
  config = function(_, opts)
    require("gruber-darker").setup(opts)
    vim.cmd("colorscheme gruber-darker")
  end,
}
