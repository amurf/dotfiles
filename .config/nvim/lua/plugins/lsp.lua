return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          settings = {
            typescript = {
              preferences = {
                includePackageJsonAutoImports = "auto",
                includeCompletionsForModuleExports = true,
                includeCompletionsForImportStatements = true,
              },
              suggest = {
                includeCompletionsForModuleExports = true,
              },
            },
          },
        },
      },
    },
  },
}
