local hi = vim.api.nvim_set_hl
local M={}
function M.apply()
		hi(0,'Normal',{ fg = '#d8dee9',  bg = '#1b2b34', })
	hi(0,'Bold',{bold = true, })
	hi(0,'Debug',{ fg = '#ec5f67', })
	hi(0,'Directory',{ fg = '#6699cc', })
	hi(0,'ErrorMsg',{ fg = '#ec5f67',  bg = '#1b2b34', })
	hi(0,'Exception',{ fg = '#ec5f67', })
	hi(0,'FoldColumn',{ fg = '#6699cc',  bg = '#1b2b34', })
	hi(0,'Folded',{ fg = '#65737e',  bg = '#343d46', italic = true, })
	hi(0,'IncSearch',{ fg = '#343d46',  bg = '#f99157', })
	hi(0,'Italic',{italic = true, })
	hi(0,'Macro',{ fg = '#ec5f67', })
	hi(0,'MatchParen',{ fg = '#c0c5ce',  bg = '#65737e', })
	hi(0,'ModeMsg',{ fg = '#99c794', })
	hi(0,'MoreMsg',{ fg = '#99c794', })
	hi(0,'Question',{ fg = '#6699cc', })
	hi(0,'Search',{ fg = '#65737e',  bg = '#fac863', })
	hi(0,'SpecialKey',{ fg = '#65737e', })
	hi(0,'TooLong',{ fg = '#ec5f67', })
	hi(0,'Underlined',{ fg = '#ec5f67', })
	hi(0,'Visual',{ bg = '#4f5b66', })
	hi(0,'VisualNOS',{ fg = '#ec5f67', })
	hi(0,'WarningMsg',{ fg = '#ec5f67', })
	hi(0,'WildMenu',{ fg = '#d8dee9',  bg = '#6699cc', })
	hi(0,'Title',{ fg = '#6699cc', })
	hi(0,'Cursor',{ fg = '#1b2b34',  bg = '#c0c5ce', })
	hi(0,'NonText',{ fg = '#65737e', })
	hi(0,'EndOfBuffer',{ fg = '#c0c5ce',  bg = '#1b2b34', })
	hi(0,'LineNr',{ fg = '#65737e',  bg = '#1b2b34', })
	hi(0,'SignColumn',{ fg = '#1b2b34',  bg = '#1b2b34', })
	hi(0,'StatusLine',{ fg = '#343d46',  bg = '#65737e', })
	hi(0,'StatusLineNC',{ fg = '#65737e',  bg = '#343d46', })
	hi(0,'VertSplit',{ fg = '#343d46',  bg = '#1b2b34', })
	hi(0,'ColorColumn',{ bg = '#343d46', })
	hi(0,'CursorColumn',{ bg = '#343d46', })
	hi(0,'CursorLine',{ bg = '#d8dee9', })
	hi(0,'CursorLineNR',{ fg = '#1b2b34',  bg = '#1b2b34', })
	hi(0,'CursorLineNr',{ fg = '#65737e',  bg = '#343d46', })
	hi(0,'GitGutterAdd',{ fg = '#99c794',  bg = '#1b2b34', bold = true, })
	hi(0,'GitGutterChange',{ fg = '#6699cc',  bg = '#1b2b34', bold = true, })
	hi(0,'GitGutterDelete',{ fg = '#ec5f67',  bg = '#1b2b34', bold = true, })
	hi(0,'GitGutterChangeDelete',{ fg = '#c594c5',  bg = '#1b2b34', bold = true, })
	hi(0,'SignifySignAdd',{ fg = '#99c794',  bg = '#1b2b34', bold = true, })
	hi(0,'SignifySignChange',{ fg = '#6699cc',  bg = '#1b2b34', bold = true, })
	hi(0,'SignifySignDelete',{ fg = '#ec5f67',  bg = '#1b2b34', bold = true, })
	hi(0,'SignifySignChangeDelete',{ fg = '#c594c5',  bg = '#1b2b34', bold = true, })
	hi(0,'SignifySignDeleteFirstLine',{ fg = '#ec5f67',  bg = '#1b2b34', bold = true, })
	hi(0,'DiagnosticSignError',{ fg = '#ec5f67', })
	hi(0,'DiagnosticUnderlineError',{undercurl = true, })
	hi(0,'DiagnosticFloatingError',{ fg = '#ec5f67', })
	hi(0,'DiagnosticSignWarn',{ fg = '#fac863', })
	hi(0,'DiagnosticUnderlineWarn',{undercurl = true, })
	hi(0,'DiagnosticFloatingWarn',{ fg = '#fac863', })
	hi(0,'DiagnosticSignInformation',{ fg = '#6699cc', })
	hi(0,'DiagnosticUnderlineInformation',{undercurl = true, })
	hi(0,'DiagnosticFloatingInformation',{ fg = '#6699cc', })
	hi(0,'DiagnosticSignHint',{ fg = '#62b3b2', })
	hi(0,'DiagnosticUnderlineHint',{undercurl = true, })
	hi(0,'DiagnosticFloatingHint',{ fg = '#62b3b2', })
	hi(0,'LspReferenceText',{ bg = '#343d46', })
	hi(0,'LspReferenceRead',{ bg = '#343d46', })
	hi(0,'LspReferenceWrite',{ bg = '#343d46', })
	hi(0,'FloatBorder',{ fg = '#a7adba', })
	hi(0,'IndentBlanklineChar',{ fg = '#343d46', nocombine = true, })
	hi(0,'IndentBlanklineSpaceChar',{ fg = '#343d46', nocombine = true, })
	hi(0,'IndentBlanklineSpaceCharBlankline',{ fg = '#343d46', nocombine = true, })
	hi(0,'@include',{ fg = '#c594c5', })
	hi(0,'@punctuation.bracket',{ fg = '#62b3b2', })
	hi(0,'@punctuation.delimiter',{ fg = '#62b3b2', })
	hi(0,'@punctuation.special',{ fg = '#62b3b2', })
	hi(0,'@parameter',{ fg = '#d8dee9', })
	hi(0,'@type',{ fg = '#fac863', })
	hi(0,'@function',{ fg = '#62b3b2', })
	hi(0,'@tag.delimiter',{ fg = '#62b3b2', })
	hi(0,'@property',{ fg = '#d8dee9', })
	hi(0,'@method',{ fg = '#62b3b2', })
	hi(0,'@parameter',{ fg = '#fac863', })
	hi(0,'@constructor',{ fg = '#d8dee9', })
	hi(0,'@variable',{ fg = '#cdd3de', })
	hi(0,'@operator',{ fg = '#f99157', })
	hi(0,'@tag',{ fg = '#d8dee9', })
	hi(0,'@keyword',{ fg = '#c594c5', })
	hi(0,'@keyword.operator',{ fg = '#c594c5', })
	hi(0,'@variable.builtin',{ fg = '#ec5f67', })
	hi(0,'@label',{ fg = '#62b3b2', })
	hi(0,'@conditional',{ fg = '#c594c5', })
	hi(0,'@namespace',{ fg = '#d8dee9', })
	hi(0,'@symbol',{ fg = '#ab7967', })
	hi(0,'@exception',{ fg = '#ec5f67', })
end
return  M
	