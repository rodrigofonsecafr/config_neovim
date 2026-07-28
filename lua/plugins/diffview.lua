return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFileHistory" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diff: open" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Diff: close" },
    { "<leader>gf", "<cmd>DiffviewToggleFiles<cr>", desc = "Diff: toggle files" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Diff: file history" },
    { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Diff: repo history" },
    { "<leader>gm", "<cmd>DiffviewOpen origin/main...HEAD<cr>", desc = "Diff: vs main" },
  },
  opts = {
    enhanced_diff_hl = true,
    use_icons = true,
    show_help_hints = false,
    watch_index = true,
    view = {
      default = {
        layout = "diff2_vertical",
        winbar_info = false,
      },
      merge_tool = { layout = "diff3_mixed" },
      file_history = { layout = "diff2_vertical" },
    },
    file_panel = {
      listing_style = "tree",
      tree_options = {
        flatten_dirs = true,
        folder_statuses = "only_folded",
      },
      win_config = {
        position = "left",
        width = 50,
      },
    },
    file_history_panel = {
      win_config = {
        position = "bottom",
        height = 12,
      },
    },
    hooks = {
      diff_buf_read = function(bufnr)
        vim.opt_local.wrap = false
        vim.opt_local.list = false
        vim.opt_local.relativenumber = false
        vim.opt_local.number = true
        vim.opt_local.cursorline = true
        vim.opt_local.signcolumn = "no"
        vim.opt_local.foldcolumn = "0"
      end,
    },
  },
  config = function(_, opts)
    require("diffview").setup(opts)

    -- ajustes de highlight, aplicados agora e a cada troca de colorscheme
    local function set_diff_hl()
      vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#1e3a2a" })
      vim.api.nvim_set_hl(0, "DiffChange", { bg = "#2a2e3a" })
      vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#3a1e1e", fg = "#a04040" })
      vim.api.nvim_set_hl(0, "DiffText", { bg = "#2a4a3a", bold = true })
    end

    set_diff_hl()
    vim.api.nvim_create_autocmd("ColorScheme", { callback = set_diff_hl })
  end,
}
