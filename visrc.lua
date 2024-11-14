require("vis")

vis.options.autoindent = true

vis.events.subscribe(vis.events.INIT, function()
	vis:command("set theme peaksea")
	require("auto-pairs")
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	win.options.numbers = true
	win.options.tabwidth = 4
	win.options.expandtab = true
end)
