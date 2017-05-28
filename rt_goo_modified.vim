" Vim color file - rt_goo_modified
" Generated by http://bytefluent.com/vivify 2017-05-27
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "rt_goo_modified"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi Ignore -- no settings --
"hi Todo -- no settings --
hi Normal guifg=#00aeff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
"hi Search -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi TabLineSel -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi VisualNOS -- no settings --
"hi DiffDelete -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi EnumerationName -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi DiffChange -- no settings --
"hi SpellLocal -- no settings --
"hi SpecialKey -- no settings --
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi DiffAdd -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi SignColumn guifg=#7107a6 guibg=#000000 guisp=#000000 gui=NONE ctermfg=91 ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#729FCF guibg=#000000 guisp=#000000 gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Typedef guifg=#4E9A06 guibg=#000000 guisp=#000000 gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Title guifg=#e6e600 guibg=#000000 guisp=#000000 gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
hi Folded guifg=#661fff guibg=NONE guisp=NONE gui=NONE ctermfg=57 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#EEEEEC guibg=#000000 guisp=#000000 gui=bold ctermfg=255 ctermbg=NONE cterm=bold
hi Include guifg=#ffc107 guibg=#000000 guisp=#000000 gui=bold ctermfg=214 ctermbg=NONE cterm=bold
hi Float guifg=#06989A guibg=#000000 guisp=#000000 gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#D3D7CF guibg=#000000 guisp=#000000 gui=bold,underline ctermfg=151 ctermbg=NONE cterm=bold,underline
hi NonText guifg=#555753 guibg=#000000 guisp=#000000 gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
hi ErrorMsg guifg=#EF2929 guibg=#000000 guisp=#000000 gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi Debug guifg=#729FCF guibg=#000000 guisp=#000000 gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Identifier guifg=#34E2E2 guibg=#000000 guisp=#000000 gui=NONE ctermfg=80 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#729FCF guibg=#000000 guisp=#000000 gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Conditional guifg=#ff6f00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=202 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#4E9A06 guibg=#000000 guisp=#000000 gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Special guifg=#729FCF guibg=#000000 guisp=#000000 gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi LineNr guifg=#455a64 guibg=#000000 guisp=#000000 gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#EEEEEC guibg=#000000 guisp=#000000 gui=bold,underline ctermfg=255 ctermbg=NONE cterm=bold,underline
hi Label guifg=#4E9A06 guibg=#000000 guisp=#000000 gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi CTagsImport guifg=#ffc107 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#EEEEEC guibg=#000000 guisp=#000000 gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#729FCF guibg=#000000 guisp=#000000 gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Statement guifg=#3cba53 guibg=#000000 guisp=#000000 gui=bold ctermfg=71 ctermbg=NONE cterm=bold
hi Comment guifg=#555753 guibg=#000000 guisp=#000000 gui=italic ctermfg=240 ctermbg=NONE cterm=NONE
hi Character guifg=#3465A4 guibg=#000000 guisp=#000000 gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi Number guifg=#06989A guibg=#000000 guisp=#000000 gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Boolean guifg=#3465A4 guibg=#000000 guisp=#000000 gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi Operator guifg=#db9111 guibg=#000000 guisp=#000000 gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#FCE94F guibg=#000000 guisp=#000000 gui=NONE ctermfg=227 ctermbg=NONE cterm=NONE
hi Define guifg=#EEEEEC guibg=#000000 guisp=#000000 gui=bold ctermfg=255 ctermbg=NONE cterm=bold
hi Function guifg=#ffc107 guibg=#000000 guisp=#000000 gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#49a4d1 guibg=NONE guisp=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
hi PreProc guifg=#ffc107 guibg=#000000 guisp=#000000 gui=bold ctermfg=214 ctermbg=NONE cterm=bold
hi Visual guifg=#bdbd0b guibg=#193002 guisp=#193002 gui=NONE ctermfg=142 ctermbg=22 cterm=NONE
hi VertSplit guifg=#EEEEEC guibg=#000000 guisp=#000000 gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi Exception guifg=#4E9A06 guibg=#000000 guisp=#000000 gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Keyword guifg=#4E9A06 guibg=#000000 guisp=#000000 gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Type guifg=#4E9A06 guibg=#000000 guisp=#000000 gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Cursor guifg=#EEEEEC guibg=#EEEEEC guisp=#EEEEEC gui=NONE ctermfg=255 ctermbg=255 cterm=NONE
hi Error guifg=#000000 guibg=#b71c1c guisp=#b71c1c gui=bold,underline ctermfg=NONE ctermbg=124 cterm=bold,underline
hi PMenu guifg=#D3D7CF guibg=#261626 guisp=#261626 gui=NONE ctermfg=151 ctermbg=235 cterm=NONE
hi Constant guifg=#06989A guibg=#000000 guisp=#000000 gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Tag guifg=#729FCF guibg=#000000 guisp=#000000 gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi String guifg=#b71c1c guibg=#000000 guisp=#000000 gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#C4A000 guisp=#C4A000 gui=NONE ctermfg=NONE ctermbg=1 cterm=NONE
hi Repeat guifg=#FCE94F guibg=#000000 guisp=#000000 gui=bold ctermfg=227 ctermbg=NONE cterm=bold
hi Directory guifg=#3682e0 guibg=#000000 guisp=#000000 gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi Structure guifg=#4E9A06 guibg=#000000 guisp=#000000 gui=NONE ctermfg=64 ctermbg=NONE cterm=NONE
hi Macro guifg=#ffc107 guibg=#000000 guisp=#000000 gui=bold ctermfg=214 ctermbg=NONE cterm=bold
hi Underlined guifg=#AD7FA8 guibg=#000000 guisp=#000000 gui=bold,underline ctermfg=139 ctermbg=NONE cterm=bold,underline
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=#404040 guibg=#8fff8b guisp=#8fff8b gui=NONE ctermfg=238 ctermbg=120 cterm=NONE
hi cursorim guifg=#404040 guibg=#8b8bff guisp=#8b8bff gui=NONE ctermfg=238 ctermbg=105 cterm=NONE
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE