return {
    "Civitasv/cmake-tools.nvim",
    config = function()
        local osys = require("cmake-tools.osys")

        require("cmake-tools").setup({
            cmake_command = "cmake",
            ctest_command = "ctest",
            cmake_use_preset = true,
            cmake_regenerate_on_save = false,
            cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
            cmake_build_options = {},
            cmake_build_directory = function()
                if osys.iswin32 then
                    return "build\\${variant:buildType}"
                end
                return "build/${variant:buildType}"
            end,
            cmake_compile_commands_options = {
                action = "soft_link",
                target = vim.loop.cwd(),
            },
            cmake_variants_message = {
                short = { show = true },
                long = { show = true, max_length = 40 },
            },
            cmake_dap_configuration = {
                name = "cpp",
                type = "codelldb",
                request = "launch",
                stopOnEntry = false,
                runInTerminal = true,
                console = "integratedTerminal",
            },

            cmake_executor = {
                name = "terminal",
                opts = {
                    split_direction = "horizontal",
                    split_size = 11,
                    single_terminal_per_instance = true,
                    single_terminal_per_tab = true,
                    keep_terminal_static_location = true,
                    auto_resize = true,
                },
            },
            cmake_runner = {
                name = "terminal",
                opts = {
                    split_direction = "horizontal",
                    split_size = 11,
                    single_terminal_per_instance = true,
                    single_terminal_per_tab = true,
                    keep_terminal_static_location = true,
                    auto_resize = true,
                },
            },
            cmake_notifications = {
                runner = { enabled = true },
                executor = { enabled = true },
                spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
                refresh_rate_ms = 100,
            },
            cmake_virtual_text_support = true,
            cmake_use_scratch_buffer = false,
        })
    end,
}
