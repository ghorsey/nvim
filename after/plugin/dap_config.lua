local dap_ok, dap = pcall(require, 'dap')

if not (dap_ok) then
	print("nvim-dap not installed")
	return
end

local function cmd(adapter)
	local c = vim.fn.stdpath("data") .. '/mason/bin/' .. adapter

	if (jit.os == "Windows") then
		return c .. ".cmd"
	end

	return c
end

require('dap').set_log_level('INFO') -- Helps when configuring DAP, see logs with :DapShowLog

vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})

dap.configurations = {
	rust = {
		{
			name = "Launch",
			type = "codelldb",
			request = "launch",
			program = function()
				return vim.fn.input('Path to executable', vim.fn.getcwd() .. '/', 'file')
			end,
			cwd = '${workspaceFolder}',
			stopOnEntry = false,
			args = {},
			runInTerminal=false,
		}
    },
    cs = {
        {
            type = "coreclr",
            name = "launch - netcoredbg",
            request = "launch",
            program = function()
                if vim.fn.confirm('Should I recompile first?', '&yes\n&no', 2) == 1 then
                    vim.g.dotnet_build_project()
                end
                return vim.g.dotnet_get_dll_path()
            end,
        }
    }
}

dap.adapters = {
	codelldb = {
		type = "server",
		port = "${port}",
		executable = {
			command = cmd('codelldb'),
			args = { "--port", "${port}" },
		}
	},
    coreclr = {
        type='executable',
        command='netcoredbg',
        args={ '--interpreter=vscode' }
    }
}

-- Helpers for dotnet
vim.g.dotnet_build_project = function()
    local default_path = vim.fn.getcwd() .. '/'
    if vim.g['dotnet_last_proj_path'] ~= nil then
        default_path = vim.g['dotnet_last_proj_path']
    end
    local path = vim.fn.input('Path to your *proj file', default_path, 'file')
    vim.g['dotnet_last_proj_path'] = path
    local cmd = 'dotnet build -c Debug ' .. path .. ' > /dev/null'
    print('')
    print('Cmd to execute: ' .. cmd)
    local f = os.execute(cmd)
    if f == 0 then
        print('\nBuild: ✔️ ')
    else
        print('\nBuild: ❌ (code: ' .. f .. ')')
    end
end

vim.g.dotnet_get_dll_path = function()
    local request = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end

    if vim.g['dotnet_last_dll_path'] == nil then
        vim.g['dotnet_last_dll_path'] = request()
    else
        if vim.fn.confirm('Do you want to change the path to dll?\n' .. vim.g['dotnet_last_dll_path'], '&yes\n&no', 2) == 1 then
            vim.g['dotnet_last_dll_path'] = request()
        end
    end

    return vim.g['dotnet_last_dll_path']
end
