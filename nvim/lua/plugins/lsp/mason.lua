return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- NOTE: if you enable this, also uncomment the meson_tool_installer.setup()
    --       section at the end
    -- local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      -- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
      -- NOTE: both htmx and jinja_lsp need cargo
      ensure_installed = {
      -- "cssls",
      -- "emmet_ls",
      -- "html",
      -- "htmx",
      -- "jinja_lsp",
        "lua_ls",
        "pyright",
      -- "ruff",
      -- "tailwindcss",
      },
      automatic_installation = true,
    })

    -- NOTE: if you enable this, you also need to enable mason_tool_installer above
    -- mason_tool_installer.setup({
    --   ensure_installed = {
    --     debugpy,
    --     pyright,
    --     ruff,
    --     taplo,
    --   },
    -- })
  end,
}
