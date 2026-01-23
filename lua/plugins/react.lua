return {
  -- 1. Auto-close tags (<div> becomes <div></div>)
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },

  -- 2. Update Treesitter to understand TSX/JSX (React syntax)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "typescript", "tsx", "javascript", "html", "css" })
      end
    end,
  },
}
