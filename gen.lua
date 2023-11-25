local M = {}
-- local oceanic_next_terminal_italic = vim.g.oceanic_next_terminal_italic or 0
-- local italic = false
-- if oceanic_next_terminal_italic == 1 then
-- 	italic = true
-- end

-- local oceanic_next_terminal_bold = vim.g.oceanic_next_terminal_bold or 0
-- local bold = false
-- if oceanic_next_terminal_bold == 1 then
-- 	bold = true
-- end
-- local undercurl = true
-- local nocombine = true

-- local hi = vim.api.nvim_set_hl
-- local function setHL()
-- 	for _, gr in pairs(highlights) do
-- 		local group, fg, bg, attr, attrsp = unpack(gr)
-- 		-- print("inspecting:", group, vim.inspect(fg), vim.inspect(bg), "element:", fg and fg[1])
-- 		local color = {}
-- 		if fg and #fg > 0 then
-- 			color.fg = fg[1]
-- 			color.ctermfg = fg[2]
-- 		end
-- 		if bg and #bg > 0 then
-- 			color.bg = bg[1]
-- 			color.ctermbg = bg[2]
-- 		end
-- 		if attr ~= nil then
-- 			if attr == "bold" then
-- 				color.bold = true
-- 			elseif attr == "italic" then
-- 				color.italic = true
-- 			elseif attr == "undurl" then
-- 				color.undercurl = true
-- 			elseif attr == "nocomb" then
-- 				color.nocombine = true
-- 			end
-- 		end
-- 		-- if attrsp and #attrsp > 0 then
-- 		-- 	vim.cmd("hi " .. group .. " guisp=" .. attrsp[1])
-- 		-- end
-- 		local _, e = pcall(function() hi(0, group, color) end)
-- 		if e then
-- 			local msg = string.format("%s could not be applied, nvim returned an error: %q, (attributes given: %s)",
-- 				group, e, vim.inspect(color))
-- 			print(msg)
-- 		end
-- 		-- hi(0, group, color)
-- 	end
-- end
local docterm = false
function M.gen(style, filename)
	if not filename then
		filename = style .. ".lua"
	end
	local f      = assert(io.open(filename, "w"))
            	-- local ignore= {'ignore'} --workaround lua unpack() stopping after a nil 
	-- if style== 'dark' then
	local base00 = { '#1b2b34', 235 }
	local base01 = { '#343d46', 237 }
	local base02 = { '#4f5b66', 240 }
	local base03 = { '#65737e', 243 }
	local base04 = { '#a7adba', 145 }
	local base05 = { '#c0c5ce', 251 }
	local base06 = { '#cdd3de', 252 }
	local base07 = { '#d8dee9', 253 }
	local red    = { '#ec5f67', 203 }
	local orange = { '#f99157', 209 }
	local yellow = { '#fac863', 221 }
	local green  = { '#99c794', 114 }
	local cyan   = { '#62b3b2', 73 }
	local blue   = { '#6699cc', 68 }
	local purple = { '#c594c5', 176 }
	local brown  = { '#ab7967', 137 }
	local white  = { '#ffffff', 15 }
	local none   = { 'NONE', 'NONE' }
	if style == 'light' then
		base00 = { '#f5f7fa', 253 }
		base01 = { '#d4d8dc', 252 }
		base02 = { '#b4babf', 251 }
		base03 = { '#a7adba', 145 }
		base04 = { '#65737e', 243 }
		base05 = { '#4f5b66', 240 }
		base06 = { '#343d46', 237 }
		base07 = { '#1b2b34', 235 }
		red    = { '#d0545b', 124 }
		orange = { '#db804d', 131 }
		yellow = { '#dcb057', 137 }
		green  = { '#87af82', 101 }
		cyan   = { '#569e9d', 72 }
		blue   = { '#5a87b4', 60 }
		purple = { '#ad82ad', 96 }
		brown  = { '#966a5b', 101 }
		white  = { '#ffffff', 15 }
		none   = { 'NONE', 'NONE' }
	end
	-- group, fg, bg, attr, attrsp
	local highlights = {
		{ 'Normal',                            base07, base00, {},      {} },
		{ 'Bold',                              {},    {},    "bold",   {} },
		{ 'Debug',                             red,    {},    {},      {} },
		{ 'Directory',                         blue,   {},    {},      {} },
		{ 'ErrorMsg',                          red,    base00, {},      {} },
		{ 'Exception',                         red,    {},    {},      {} },
		{ 'FoldColumn',                        blue,   base00, {},      {} },
		{ 'Folded',                            base03, base01, "italic", {} },
		{ 'IncSearch',                         base01, orange, {},      {} },
		{ 'Italic',                            {},    {},    "italic", {} },

		{ 'Macro',                             red,    {},    {},      {} },
		{ 'MatchParen',                        base05, base03, {},      {} },
		{ 'ModeMsg',                           green,  {},    {},      {} },
		{ 'MoreMsg',                           green,  {},    {},      {} },
		{ 'Question',                          blue,   {},    {},      {} },
		{ 'Search',                            base03, yellow, {},      {} },
		{ 'SpecialKey',                        base03, {},    {},      {} },
		{ 'TooLong',                           red,    {},    {},      {} },
		{ 'Underlined',                        red,    {},    {},      {} },
		{ 'Visual',                            {},    base02, {},      {} },
		{ 'VisualNOS',                         red,    {},    {},      {} },
		{ 'WarningMsg',                        red,    {},    {},      {} },
		{ 'WildMenu',                          base07, blue,   {},      {} },
		{ 'Title',                             blue,   {},    {},      {} },
		{ 'Cursor',                            base00, base05, {},      {} },
		{ 'NonText',                           base03, {},    {},      {} },
		{ 'EndOfBuffer',                       base05, base00, {},      {} },
		{ 'LineNr',                            base03, base00, {},      {} },
		{ 'SignColumn',                        base00, base00, {},      {} },
		{ 'StatusLine',                        base01, base03, {},      {} },
		{ 'StatusLineNC',                      base03, base01, {},      {} },
		{ 'VertSplit',                         base01, base00, {},      {} },
		{ 'ColorColumn',                       {},    base01, {},      {} },
		{ 'CursorColumn',                      {},    base01, {},      {} },
		{ 'CursorLine',                        {},    base07, {},      {} },
		{ 'CursorLineNR',                      base00, base00, {},      {} },
		{ 'CursorLineNr',                      base03, base01, {},      {} },
		-- { 'YanilTreeFile',                     {},    none,   {},      {} },

		{ 'GitGutterAdd',                      green,  base00, "bold",   {} },
		{ 'GitGutterChange',                   blue,   base00, "bold",   {} },
		{ 'GitGutterDelete',                   red,    base00, "bold",   {} },
		{ 'GitGutterChangeDelete',             purple, base00, "bold",   {} },

		{ 'SignifySignAdd',                    green,  base00, "bold",   {} },
		{ 'SignifySignChange',                 blue,   base00, "bold",   {} },
		{ 'SignifySignDelete',                 red,    base00, "bold",   {} },
		{ 'SignifySignChangeDelete',           purple, base00, "bold",   {} },
		{ 'SignifySignDeleteFirstLine',        red,    base00, "bold",   {} },

		-- LSP
		{ 'DiagnosticError',                   {},    {},    {},      {} },
		{ 'DiagnosticSignError',               red,    {},    {},      {} },
		{ 'DiagnosticUnderlineError',          {},    {},    "undurl", {} },
		{ 'DiagnosticFloatingError',           red,    {},    {},      {} },

		{ 'DiagnosticWarn',                    {},    {},    {},      {} },
		{ 'DiagnosticSignWarn',                yellow, {},    {},      {} },
		{ 'DiagnosticUnderlineWarn',           {},    {},    "undurl", {} },
		{ 'DiagnosticFloatingWarn',            yellow, {},    {},      {} },

		{ 'DiagnosticInformation',             {},    {},    {},      {} },
		{ 'DiagnosticSignInformation',         blue,   {},    {},      {} },
		{ 'DiagnosticUnderlineInformation',    {},    {},    "undurl", {} },
		{ 'DiagnosticFloatingInformation',     blue,   {},    {},      {} },

		{ 'DiagnosticHint',                    {},    {},    {},      {} },
		{ 'DiagnosticSignHint',                cyan,   {},    {},      {} },
		{ 'DiagnosticUnderlineHint',           {},    {},    "undurl", {} },
		{ 'DiagnosticFloatingHint',            cyan,   {},    {},      {} },

		{ 'LspReferenceText',                  {},    base01, {},      {} },
		{ 'LspReferenceRead',                  {},    base01, {},      {} },
		{ 'LspReferenceWrite',                 {},    base01, {},      {} },
		{ 'FloatBorder',                       base04, {},    {},      {} },
		{ 'IndentBlanklineChar',               base01, {},    "nocomb", {} },
		{ 'IndentBlanklineSpaceChar',          base01, {},    "nocomb", {} },
		{ 'IndentBlanklineSpaceCharBlankline', base01, {},    "nocomb", {} },

		{ '@include',                          purple, {},    {},      {} },
		{ '@punctuation.bracket',              cyan,   {},    {},      {} },
		{ '@punctuation.delimiter',            cyan,   {},    {},      {} },
		{ '@punctuation.special',              cyan,   {},    {},      {} },
		{ '@parameter',                        base07, {},    {},      {} },
		{ '@type',                             yellow, {},    {},      {} },
		{ '@function',                         cyan,   {},    {},      {} },

		{ '@tag.delimiter',                    cyan,   {},    {},      {} },
		{ '@property',                         base07, {},    {},      {} },
		{ '@method',                           cyan,   {},    {},      {} },
		{ '@parameter',                        yellow, {},    {},      {} },
		{ '@constructor',                      base07, {},    {},      {} },
		{ '@variable',                         base06, {},    {},      {} },
		{ '@operator',                         orange, {},    {},      {} },
		{ '@tag',                              base07, {},    {},      {} },
		{ '@keyword',                          purple, {},    {},      {} },
		{ '@keyword.operator',                 purple, {},    {},      {} },
		{ '@variable.builtin',                 red,    {},    {},      {} },
		{ '@label',                            cyan,   {},    {},      {} },

		{ '@conditional',                      purple, {},    {},      {} },
		{ '@namespace',                        base07, {},    {},      {} },
		{ '@symbol',                           brown,  {},    {},      {} },
		{ '@exception',                        red,    {},    {},      {} },
	}
	assert(f:write([[
local hi = vim.api.nvim_set_hl
local M={}
function M.apply()
	]]))
	for _, gr in pairs(highlights) do
		local group, fg, bg, attr, attrsp = unpack(gr)
		local color = "{"
		if #fg > 0 then
			color = color .. string.format(" fg = '%s', ", fg[1])
			if docterm then
				color = color .. string.format("  ctermfg=%d, ", fg[2])
			end
		end
		if #bg > 0 then
			color = color .. string.format(" bg = '%s', ", bg[1])
			if docterm then
				color = color .. string.format(" ctermbg=%d, ", bg[2])
			end
		end
		if attr ~= {} then
			if attr == "bold" then
				color = color .. "bold = true, "
			elseif attr == "italic" then
				color = color .. "italic = true, "
			elseif attr == "undurl" then
				color = color .. "undercurl = true, "
			elseif attr == "nocomb" then
				color = color .. "nocombine = true, "
			end
		end
		color = color .. '}'
		if color=='{}' then 
		  print("inspecting:", group, vim.inspect(fg), vim.inspect(bg) )
		end 
		if color~='{}' then
			assert(f:write(string.format("\thi(0,'%s',%s)\n", group, color)))
		end
	end

	assert(f:write([[
end
return  M
	]]))
	assert(f:close())
end

function M.update()
	M.gen('dark')
	M.gen('light')
end

return M
-- 	-- Terminal color setup for Neovim
-- 	if vim.fn.has('nvim') then
-- 		vim.g.terminal_color_0 = base00[1]
-- 		vim.g.terminal_color_8 = base03[1]
-- 		-- ... and so on for other terminal colors
-- 	else
-- 		vim.g.terminal_ansi_colors = {
-- 			base00[1], red[1], green[1], yellow[1], blue[1], purple[1], cyan[1], white[1],
-- 			base03[1], red[1], green[1], yellow[1], blue[1], purple[1], cyan[1], white[1]
-- 		}
