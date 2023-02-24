local dap_ui_ok, ui =pcall(require, "dapui")
local dap_ok, dap = pcall(require, "dap")

if not (dap_ok) then
    print("Cannot configure dap-ui because dap is not installed", "warning")
    return
end

if not (dap_ui_ok) then
	print("dap-ui not installed!", "warning")
	return
end

ui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
	ui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
	ui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
	ui.close()
end
