"
" Fruitylicious color scheme
" ==========================
" This is a fork of Armin Ronacher's colorscheme fruity. I've changed a couple
" of things regarding the colors to my preference and it also works in 256 color
" terminals.
"
" Fruity: http://www.vim.org/scripts/script.php?script_id=1871
"
" Author:   Daniel Neuhäuser <dasdasich@gmail.com>
" Version:  0.1
"
set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "fruitylicious"

" Default Colors
hi Normal  guifg=#ffffff ctermfg=231 guibg=#111111 ctermbg=233
hi NonText guifg=#444444 ctermfg=238 guibg=#111111 ctermbg=233
hi Cursor  guibg=#aaaaaa ctermbg=250
hi lCursor guibg=#aaaaaa ctermbg=250

" Search
hi Search    guifg=#800000 ctermfg=1 guibg=#ffae00 ctermbg=214
hi IncSearch guifg=#800000 ctermfg=1 guibg=#ffae00 ctermbg=214

" Window Elements
hi StatusLine   guifg=#ffffff ctermfg=231 guibg=#333333 ctermbg=236
hi StatusLineNC guifg=#eeeeee ctermfg=188 guibg=#111111 ctermbg=233
hi VertSplit    guifg=#a0b0c0 ctermfg=145 guibg=#a0b0c0 ctermbg=145
hi Folded       guifg=#111111 ctermfg=233 guibg=#8090a0 ctermbg=245
hi IncSearch    guifg=#708090 ctermfg=67  guibg=#f0e68c ctermbg=186
hi Pmenu        guifg=#ffffff ctermfg=231 guibg=#cb2f27 ctermbg=160
hi SignColumn   guibg=#111111                           ctermbg=233
hi CursorLine   guibg=#181818                           ctermbg=234
hi LineNr       guifg=#eeeeee ctermfg=188 guibg=#333333 ctermbg=236
hi MatchParen   guifg=#b1b711 ctermfg=142 guibg=NONE

" Specials
hi Todo    guifg=#e50808 ctermfg=160 guibg=#520000 ctermbg=52
hi Title   guifg=#ffffff ctermfg=231                          gui=bold term=bold
hi Special guifg=#fd8900 ctermfg=208

" Syntax Elements
hi String     guifg=#0086d2 ctermfg=32
hi Constant   guifg=#0086d2 ctermfg=32
hi Number     guifg=#0086f7 ctermfg=33                            gui=bold      term=bold
hi Statement  guifg=#fb660a ctermfg=202                           gui=bold      term=bold
hi Function   guifg=#ff0086 ctermfg=198                           gui=bold      term=bold
hi PreProc    guifg=#ff0007 ctermfg=196                           gui=bold      term=bold
hi Comment    guifg=#c1c1c1 ctermfg=7                             gui=italic    term=italic
hi Type       guifg=#cdcaa9 ctermfg=187                           gui=bold      term=bold
hi Error      guifg=#ffffff ctermfg=231 guibg=#ab0000 ctermbg=124
hi Identifier guifg=#ff0086 ctermfg=198                           gui=bold      term=bold
hi Label      guifg=#ff0086 ctermfg=198

" Minibuf Explorer
hi MBENormal         guifg=#00d2ff ctermfg=81
hi MBEVisibleNormal  guifg=#fd8900 ctermfg=208 gui=bold           term=bold
hi MBEChanged        guifg=#00d2ff ctermfg=81  gui=underline      term=underline
hi MBEVisibleChanged guifg=#fd8900 ctermfg=208 gui=bold,underline term=bold,underline

" Python Highlighting for python.vim
hi pythonCoding      guifg=#ff0086 ctermfg=198
hi pythonRun         guifg=#ff0086 ctermfg=198
hi pythonBuiltinObj  guifg=#2b6ba2 ctermfg=25               gui=bold term=bold
hi pythonBuiltinFunc guifg=#2b6ba2 ctermfg=25               gui=bold term=bold
hi pythonException   guifg=#ee0000 ctermfg=160              gui=bold term=bold
hi pythonExClass     guifg=#66cd66 ctermfg=77               gui=bold term=bold
hi pythonSpaceError                guibg=#270000 ctermbg=52
hi pythonDocTest     guifg=#3c8e68 ctermfg=29
hi pythonFunction    guifg=#ee0000 ctermfg=160              gui=bold term=bold
hi pythonClass       guifg=#ff0086 ctermfg=198              gui=bold term=bold
hi pythonString      guifg=#0086d2 ctermfg=32
hi pythonEscape      guifg=#fd8900 ctermfg=208
hi pythonStrFormat   guifg=#fd8900 ctermfg=208

" JavaScript Highlighting
hi javaScript              guifg=#ffffff ctermfg=231
hi javaScriptRegexpString  guifg=#aa6600 ctermfg=130
hi javaScriptDocComment    guifg=#aaaaaa ctermfg=250
hi javaScriptCssStyles     guifg=#dd7700 ctermfg=172
hi javaScriptDomElemFuncs  guifg=#66cd66 ctermfg=77
hi javaScriptHtmlElemFuncs guifg=#dd7700 ctermfg=172
hi javaScriptLabel         guifg=#00bdec ctermfg=38  gui=italic term=italic
hi javaScriptPrototype     guifg=#00bdec ctermfg=38
hi javaScriptConditional   guifg=#ff0007 ctermfg=196 gui=bold   term=bold
hi javaScriptRepeat        guifg=#ff0007 ctermfg=196 gui=bold   term=bold
hi javaScriptFunction      guifg=#ff0086 ctermfg=198 gui=bold   term=bold

" CSS Highlighting
hi cssIdentifier guifg=#66cd66 ctermfg=77 gui=bold term=bold
hi cssBraces     guifg=#00bdec ctermfg=38 gui=bold term=bold

" Ruby Highlighting
hi rubySharpBang              guifg=#00d2ff ctermfg=81  guibg=#0a1323 ctermbg=233
hi rubyFunction               guifg=#0066bb ctermfg=25  gui=bold      term=bold
hi rubyDefine                 guifg=#dd0000 ctermfg=160 gui=bold      term=bold
hi rubyClassName              guifg=#2996a0 ctermfg=30  gui=bold      term=bold
hi rubyKeyword                guifg=#dd0000 ctermfg=160 gui=bold      term=bold
hi rubyConditional            guifg=#dd0000 ctermfg=160 gui=bold      term=bold
hi rubyControl                guifg=#ff0000 ctermfg=196 gui=bold      term=bold
hi rubyRepeat                 guifg=#ff0000 ctermfg=196 gui=bold      term=bold
hi rubySymbol                 guifg=#ff0086 ctermfg=198
hi rubyASCIICode              guifg=#bb0066 ctermfg=125 gui=bold      term=bold
hi rubyIdentifier             guifg=#008aff ctermfg=33
hi rubyGlobalVariable         guifg=#dd7700 ctermfg=172
hi rubyConstant               guifg=#dd7700 ctermfg=172 gui=bold      term=bold
hi rubyBlockParameter         guifg=#66cd66 ctermfg=77
hi rubyPredefinedIdentifier   guifg=#49c9b5 ctermfg=43
hi rubyInterpolationDelimiter guifg=#00bdec ctermfg=38  gui=bold      term=bold
hi rubyString                 guifg=#0086d2 ctermfg=32
hi rubyStringDelimiter        guifg=#dd7700 ctermfg=172
hi rubyRegexp                 guifg=#92cd35 ctermfg=112
hi rubyRegexpDelimiter        guifg=#ff0007 ctermfg=196
hi rubySpaceError             guibg=#270000 ctermbg=52
hi rubyDocumentation          guifg=#aaaaaa ctermfg=250
hi rubyData                   guifg=#777777 ctermfg=243

" XML Highlighting
hi xmlTag         guifg=#00bdec ctermfg=38
hi xmlTagName     guifg=#00bdec ctermfg=38
hi xmlEndTag      guifg=#00bdec ctermfg=38
hi xmlNamespace   guifg=#00bdec ctermfg=38                            gui=underline term=underline
hi xmlAttribPunct guifg=#cccaa9 ctermfg=187                           gui=bold      term=bold
hi xmlEqual       guifg=#cccaa9 ctermfg=187                           gui=bold      term=bold
hi xmlCdata       guifg=#bf0945 ctermfg=161                           gui=bold      term=bold
hi xmlCdataCdata  guifg=#ac1446 ctermfg=125 guibg=#23010c ctermbg=232
hi xmlCdataStart  guifg=#bf0945 ctermfg=161                           gui=bold      term=bold
hi xmlCdataEnd    guifg=#bf0945 ctermfg=161                           gui=bold      term=bold

" HTML Highlighting
hi htmlTag            guifg=#00bdec ctermfg=38  gui=bold term=bold
hi htmlEndTag         guifg=#00bdec ctermfg=38  gui=bold term=bold
hi htmlSpecialTagName guifg=#66cd66 ctermfg=77
hi htmlTagName        guifg=#66cd66 ctermfg=77
hi htmlTagN           guifg=#66cd66 ctermfg=77
hi htmlEvent          guifg=#ffffff ctermfg=231

" Django Highlighting
hi djangoTagBlock  guifg=#ff0007 ctermfg=196 guibg=#200000 ctermbg=232
hi djangoVarBlock  guifg=#ff0007 ctermfg=196 guibg=#200000 ctermbg=232
hi djangoArgument  guifg=#0086d2 ctermfg=32  guibg=#200000 ctermbg=232
hi djangoStatement guifg=#fb660a ctermfg=202 guibg=#200000 ctermbg=232
hi djangoComment   guifg=#008800 ctermfg=28  guibg=#002300 ctermbg=234
hi djangoFilter    guifg=#ff0086 ctermfg=198 guibg=#200000 ctermbg=232

" Jinja Highlighting
hi jinjaTagBlock     guifg=#ff0007 ctermfg=196 guibg=#200000 ctermbg=232
hi jinjaVarBlock     guifg=#ff0007 ctermfg=196 guibg=#200000 ctermbg=232
hi jinjaString       guifg=#0086d2 ctermfg=32  guibg=#200000 ctermbg=232
hi jinjaNumber       guifg=#bf0945 ctermfg=161 guibg=#200000 ctermbg=232
hi jinjaStatement    guifg=#fb660a ctermfg=202 guibg=#200000 ctermbg=232
hi jinjaComment      guifg=#008800 ctermfg=28  guibg=#002300 ctermbg=234
hi jinjaCommentDelim guifg=#008800 ctermfg=28  guibg=#002300 ctermbg=234
hi jinjaFilter       guifg=#ff0086 ctermfg=198 guibg=#200000 ctermbg=232
hi jinjaFunction     guifg=#ff0086 ctermfg=198 guibg=#200000 ctermbg=232
hi jinjaRaw          guifg=#ffffff ctermfg=231 guibg=#200000 ctermbg=232
hi jinjaRawDelim     guifg=#aaaaaa ctermfg=250 guibg=#200000 ctermbg=232
hi jinjaOperator     guifg=#ffffff ctermfg=231 guibg=#200000 ctermbg=232
hi jinjaVariable     guifg=#92cd35 ctermfg=112 guibg=#200000 ctermbg=232
hi jinjaAttribute    guifg=#dd7700 ctermfg=172 guibg=#200000 ctermbg=232
hi jinjaSpecial      guifg=#008ffd ctermfg=33  guibg=#200000 ctermbg=232

" C Highlighting
hi cString  guifg=#0086d2 ctermfg=32  guibg=#071320 ctermbg=233
hi cFormat  guifg=#fd8900 ctermfg=208 guibg=#02101d ctermbg=233
hi cSpecial guifg=#92cd35 ctermfg=112 guibg=#02101d ctermbg=233
hi cType    guifg=#92cd35 ctermfg=112                           gui=bold      term=bold
hi cError   guifg=#ff0007 ctermfg=196 guibg=#200000 ctermbg=232
hi cCppOut  guifg=#777777 ctermfg=243

" ERuby Highlighting
hi erubyDelimiter guifg=#2c8a16 ctermfg=28 gui=bold   term=bold
hi erubyComment   guifg=#4d9b3a ctermfg=71 gui=italic term=italic
