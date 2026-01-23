return {
  {
    "ahmedkhalf/project.nvim",
    opts = {
      manual_mode = false,
    },
    event = "VeryLazy",
    config = function(_, opts)
      require("project_nvim").setup(opts)
      -- Integrate with Telescope
      require("telescope").load_extension("projects")
    end,
    keys = {
      -- Add a keybind to search projects
      { "<leader>fp", "<cmd>Telescope projects<cr>", desc = "Projects" },
    },
  },
}
