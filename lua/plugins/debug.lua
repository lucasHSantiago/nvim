return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui",
    },

    config = function()
        local dap = require("dap")

        vim.keymap.set("n", "<F5>", function()
            dap.continue()
        end)

        vim.keymap.set("n", "<F10>", function()
            dap.step_over()
        end)

        vim.keymap.set("n", "<F11>", function()
            dap.step_into()
        end)

        vim.keymap.set("n", "<F12>", function()
            dap.step_out()
        end)

        vim.keymap.set("n", "<F9>", function()
            dap.toggle_breakpoint()
        end)

        local dapui = require("dapui")

        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        -- Elixir
        dap.adapters.mix_task = {
            type = 'executable',
            command = vim.fn.stdpath("data") .. '/mason/bin/elixir-ls-debugger',
            args = {}
        }

        dap.configurations.elixir = {
            {
                type = "mix_task",
                name = "mix test",
                task = 'test',
                taskArgs = { "--trace" },
                request = "launch",
                startApps = true, -- for Phoenix projects
                projectDir = "${workspaceFolder}",
                requireFiles = {
                    "test/**/test_helper.exs",
                    "test/**/*_test.exs"
                }
            },
        }
    end
}
