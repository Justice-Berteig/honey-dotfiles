--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local dark_red = hsl("#913226")
local dark_green = hsl("#637311")
local dark_yellow = hsl("#916D1C")
local dark_blue = hsl("#246082")
local dark_purple = hsl("#823874")
local dark_cyan = hsl("#296B68")
local bright_red = hsl("#C74516")
local bright_green = hsl("#9EA318")
local bright_yellow = hsl("#CF9B19")
local bright_blue = hsl("#4789A8")
local bright_purple = hsl("#B05AA0")
local bright_cyan = hsl("#419C87")
local bg0 = hsl("#E7E4D8")
local bg1 = hsl("#E5DCC6")
local bg2 = hsl("#E3D4B5")
local bg3 = hsl("#E1CBA3")
local bg4 = hsl("#DFC392")
local bg5 = hsl("#DDBB80")
local fg0 = hsl("#1C120C")
local fg1 = hsl("#2B2112")
local fg2 = hsl("#3A3118")
local fg3 = hsl("#48401F")
local fg4 = hsl("#575025")
local fg5 = hsl("#665F2B")

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn    { bg=bg1 }, -- Columns set with 'colorcolumn'
    Conceal        { fg=fg5 }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { fg=bg0, bg=bright_green }, -- Character under the cursor (also the status bar colour for normal mode)
    CurSearch      { fg=bg0, bg=bright_purple }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    lCursor        { fg=bright_red, bg=dark_red }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM       { fg=bright_red, bg=dark_red }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine     { bg=bg2 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg=bright_blue }, -- Directory names (and other special names in listings)
    DiffAdd        { fg=bg0, bg=bright_yellow }, -- Diff mode: Added line |diff.txt| (also the mini.statusline colour for visual mode)
    DiffChange     { fg=bg0, bg=bright_cyan }, -- Diff mode: Changed line |diff.txt| (also the mini.statusline colour for insert mode)
    DiffDelete     { fg=bright_red, bg=dark_blue }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg=bg0, bg=bright_purple }, -- Diff mode: Changed text within a changed line |diff.txt| (also the mini.statusline colour for command mode)
    EndOfBuffer    { fg=fg5 }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor     { bg=fg0 }, -- Cursor in a focused terminal
    TermCursorNC   { bg=fg1 }, -- Cursor in an unfocused terminal
    ErrorMsg       { fg=bright_red }, -- Error messages on the command line
    VertSplit      { fg=bright_red, bg=dark_blue }, -- Column separating vertically split windows
    Folded         { fg=bg2, bg=fg5 }, -- Line used for closed folds
    FoldColumn     { fg=bright_red, bg=dark_blue }, -- 'foldcolumn'
    SignColumn     { }, -- Column where |signs| are displayed
    IncSearch      { fg=bg0, bg=bright_purple }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute     { fg=bg0, bg=bright_purple }, -- |:substitute| replacement text highlighting
    LineNr         { fg=dark_purple }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove    { fg=fg5 }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow    { fg=fg5 }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr   { fg=fg4, gui="bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineFold { fg=bright_red, bg=dark_purple }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineSign { fg=bright_cyan }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen     { fg=fg3 }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg        { fg=bg0, bg=bright_cyan }, -- 'showmode' message (e.g., "-- INSERT -- ", or "recording @")
    MsgArea        { fg=dark_yellow }, -- Area for messages and cmdline
    MsgSeparator   { fg=bright_cyan }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg        { fg=bright_red, bg=dark_purple }, -- |more-prompt|
    NonText        { fg=bg2 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { fg=fg1 }, -- Normal text
    NormalFloat    { fg=fg1, bg=bg1 }, -- Normal text in floating windows.
    FloatBorder    { fg=bright_red, bg=dark_red }, -- Border of floating windows.
    FloatTitle     { fg=bright_red, bg=dark_red }, -- Title of floating windows.
    NormalNC       { fg=fg3 }, -- normal text in non-current windows
    Pmenu          { fg=fg2, bg=bg2 }, -- Popup menu: Normal item.
    PmenuSel       { fg=fg1, bg=bright_yellow }, -- Popup menu: Selected item.
    PmenuKind      { fg=bright_purple, bg=bright_blue }, -- Popup menu: Normal item "kind"
    PmenuKindSel   { fg=bright_purple, bg=bright_blue }, -- Popup menu: Selected item "kind"
    PmenuExtra     { fg=bright_red, bg=dark_red }, -- Popup menu: Normal item "extra text"
    PmenuExtraSel  { fg=bright_red, bg=dark_red }, -- Popup menu: Selected item "extra text"
    PmenuSbar      { bg=bg3 }, -- Popup menu: Scrollbar.
    PmenuThumb     { bg=fg3 }, -- Popup menu: Thumb of the scrollbar.
    Question       { fg=bright_blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine   { fg=bright_red, bg=dark_red }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search         { fg=dark_purple, bg=bg3 }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey     { fg=bright_red, bg=dark_red }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad       { sp=bright_red, gui="undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap       { sp=bright_yellow, gui="undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal     { sp=bright_blue, gui="undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare      { sp=bright_purple, gui="undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { fg=fg4, bg=bg5 }, -- Status line of current window
    StatusLineNC   { fg=fg2, bg=bg3 }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine        { fg=bright_red, bg=dark_red }, -- Tab pages line, not active tab page label
    TabLineFill    { fg=bright_red, bg=dark_red }, -- Tab pages line, where there are no labels
    TabLineSel     { fg=bright_red, bg=dark_red }, -- Tab pages line, active tab page label
    Title          { fg=fg0, gui="bold" }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { bg=bg5 }, -- Visual mode selection
    VisualNOS      { fg=bright_red }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg=dark_yellow }, -- Warning messages
    Whitespace     { fg=fg5 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator   { fg=bright_red, bg=dark_red }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu       { fg=bright_red, bg=dark_red }, -- Current match in 'wildmenu' completion
    WinBar         { fg=bright_red, bg=dark_red }, -- Window bar of current window
    WinBarNC       { fg=bright_red, bg=dark_red }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg=bright_green, gui="italic" }, -- Any comment

    Constant       { fg=bright_red }, -- (*) Any constant
    String         { fg=bright_yellow }, --   A string constant: "this is a string"
    Character      { fg=bright_yellow }, --   A character constant: 'c', '\n'
    Number         { fg=bright_purple }, --   A number constant: 234, 0xff
    Boolean        { fg=bright_green }, --   A boolean constant: TRUE, false
    Float          { fg=bright_red}, --   A floating point constant: 2.3e10

    Identifier     { fg=bright_cyan }, -- (*) Any variable name
    Function       { fg=bright_cyan }, --   Function name (also: methods for classes)

    Statement      { fg=bright_blue }, -- (*) Any statement
    Conditional    { fg=bright_blue }, --   if, then, else, endif, switch, etc.
    Repeat         { fg=bright_blue }, --   for, do, while, etc.
    Label          { fg=bright_blue }, --   case, default, etc.
    Operator       { fg=bright_cyan }, --   "sizeof", "+", "*", etc.
    Keyword        { fg=bright_blue }, --   any other keyword
    Exception      { fg=bright_red }, --   try, catch, throw

    PreProc        { fg=bright_blue }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg=bright_blue }, -- (*) int, long, char, etc.
    StorageClass   { fg=bright_cyan }, --   static, register, volatile, etc.
    Structure      { fg=bright_purple }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg=dark_purple, gui="bold" }, -- (*) Any special symbol
    SpecialChar    { fg=bright_red }, --   Special character in a constant
    Tag            { fg=bright_green, bg=dark_green }, --   You can use CTRL-] on this
    Delimiter      { fg=fg0 }, --   Character that needs attention
    SpecialComment { fg=fg1 }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          {}, -- Any erroneous construct
    Todo           { fg=bright_red }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg=bright_red } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg=bright_yellow } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg=bright_blue } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg=bright_cyan } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg=bright_green } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { fg=bright_red } , -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { fg=bright_yellow } , -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { fg=bright_blue } , -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint  { fg=bright_cyan } , -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextOk    { fg=bright_green } , -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   { sp=bright_red, gui="underline" } , -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { sp=bright_yellow, gui="underline" } , -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { sp=bright_blue, gui="underline" } , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { sp=bright_cyan, gui="underline" } , -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk      { sp=bright_green, gui="underline" } , -- Used to underline "Ok" diagnostics.
    DiagnosticFloatingError    { fg=bright_red } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn     { fg=bright_yellow } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     { fg=bright_blue } , -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     { fg=bright_cyan } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticFloatingOk       { fg=bright_green } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    DiagnosticSignError        { fg=bright_red } , -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         { fg=bright_yellow } , -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         { fg=bright_blue } , -- Used for "Info" signs in sign column.
    DiagnosticSignHint         { fg=bright_cyan } , -- Used for "Hint" signs in sign column.
    DiagnosticSignOk           { fg=bright_green } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    sym"@variable"          { fg=fg0 }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
