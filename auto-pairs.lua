local delimeters = {
	["<"] = ">",
	["("] = ")",
	["{"] = "}",
	["["] = "]",
}

for op, cl in pairs(delimeters) do
	vis:map(vis.modes.INSERT, op, function()
		vis:insert(op .. cl)
		vis.win.selection.pos = vis.win.selection.pos - 1
	end)
	vis:map(vis.modes.INSERT, cl, function()
		local curr_char = vis.win.file:content(vis.win.selection.pos, 1)
		if cl == curr_char then
			vis.win.selection.pos = vis.win.selection.pos + 1
		else
			vis:insert(cl)
		end
	end)
end
