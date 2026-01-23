-- The default behevior is to put the selected items in the quickfix list
-- and then to open the default quickfix list (:copen).
-- Since I prefer using the Trouble qflist, I close the standard one and open Trouble's.
-- This is a bit hacky, but it is the simplest working solution.

return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    Snacks.picker.actions.send_to_trouble = function(picker)
      Snacks.picker.actions.qflist(picker)
      vim.cmd("cclose")
      vim.cmd("Trouble quickfix focus=true")
    end

    opts.picker.win.input.keys["<c-q>"] = {
      "send_to_trouble",
      mode = { "i", "n" },
    }
  end,
}
