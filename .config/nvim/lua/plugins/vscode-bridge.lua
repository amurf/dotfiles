return {
    {
        dir = "~/src/vscode-bridge/",
        lazy = false, -- Important: Load on startup to parse settings immediately
        config = function()
            require("vscode-bridge").setup()
        end,
    },
}
