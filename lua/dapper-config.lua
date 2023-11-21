-- local status_ok, dap = pcall(require, "dap")
-- if not status_ok then
--   return
-- end
local dap = require('dap')

dap.adapters.chrome = {
    type = "executable",
    command = "node",
    args = {os.getenv("HOME") .. "/Users/incognito/vscode-chrome-debug/out/src/chromeDebug.js"}
}

dap.configurations.javascriptreact = { -- change this to javascript if needed
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
    }
}

-- dap.configurations.javascriptreact = { -- change this to javascript if needed
--     {
--         type = "chrome",
--         request = "attach",
--         program = "${file}",
--         cwd = vim.fn.getcwd(),
--         sourceMaps = true,
--         protocol = "inspector",
--         port = 9222,
--         webRoot = "${workspaceFolder}"
--     }
-- }

-- dap.configurations.typescriptreact = { -- change to typescript if needed
--     {
--         type = "chrome",
--         request = "attach",
--         program = "${file}",
--         cwd = vim.fn.getcwd(),
--         sourceMaps = true,
--         protocol = "inspector",
--         port = 9222,
--         webRoot = "${workspaceFolder}"
--     }
-- }
