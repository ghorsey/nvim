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
	}
}
