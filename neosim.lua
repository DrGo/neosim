local M

local sname = 'neosim'
function M.setup(opts)
	opts = opts or {}
	if not opts.style then
		opts.style ='dark'		
	end
	if vim.g.colors_name then vim.cmd("hi clear") end
	vim.o.background = opts.style
	vim.g.colors_name = sname..opts.style
	-- vim.o.termguicolors = true
	require('neosim.'..opts.style).apply()
end

return M
