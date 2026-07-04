return {
  "MHD-GDev/genlms.nvim",
  enabled = false,
  dependencies = {
    "nvim-lualine/lualine.nvim",
  },
  config = function()
    require("genlms").setup {
      quit_map = "q",
      retry_map = "<c-r>",
      accept_map = "<c-cr>",
      host = "localhost",
      port = "1234",
      display_mode = "split",
      show_prompt = true,
      show_model = true,
      no_auto_close = false,
      json_response = true,
      result_filetype = "markdown",
      debug = false,
    }

    -- Key mappings (Change as you like)
    vim.keymap.set({ "n", "v" }, "<leader>]", ":Genlms<CR>")
    vim.keymap.set("n", "<localleader>ga", "<CMD>Genlms Ask<CR>", { noremap = true })
    vim.keymap.set("n", "<localleader>gc", "<CMD>Genlms Chat<CR>", { noremap = true })
    vim.keymap.set("n", "<localleader>gg", "<CMD>Genlms Generate<CR>", { noremap = true })
    vim.keymap.set("v", "<localleader>gD", ":'<,'>Genlms Document_Code<CR>", { noremap = true })
    vim.keymap.set("v", "<localleader>gC", ":'<,'>Genlms Change<CR>", { noremap = true })
    vim.keymap.set("v", "<localleader>ge", ":'<,'>Genlms Enhance_Code<CR>", { noremap = true })
    vim.keymap.set("v", "<localleader>gR", ":'<,'>Genlms Review_Code<CR>", { noremap = true })
    vim.keymap.set("v", "<localleader>gs", ":'<,'>Genlms Summarize<CR>", { noremap = true })
    vim.keymap.set("v", "<localleader>ga", ":'<,'>Genlms Ask<CR>", { noremap = true })
    vim.keymap.set("v", "<localleader>gx", ":'<,'>Genlms Fix_Code<CR>", { noremap = true })
    vim.keymap.set("n", "<localleader>gl", "<CMD>GenLoadModel<CR>", { noremap = true })
    vim.keymap.set("n", "<localleader>gu", "<CMD>GenUnloadModel<CR>", { noremap = true })
  end,
}
