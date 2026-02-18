-- heather.nvim
-- A dark colorscheme inspired by sweet-fusion and mountain

local M = {}

local function hl(groups)
  for name, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, name, opts)
  end
end

function M.load()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "heather"

  local c = require("heather.palette").colors

  hl({
    -- ─── Editor UI ───────────────────────────────────────────────────────────
    Normal            = { fg = c.fg, bg = c.bg },
    NormalFloat       = { fg = c.fg_dim, bg = c.bg },
    NormalNC          = { fg = c.fg, bg = c.bg_light },
    NormalSB          = { fg = c.fg_bright, bg = c.bg },
    Cursor            = { fg = c.bg, bg = c.fg },
    CursorIM          = { fg = c.bg, bg = c.fg },
    CursorLine        = { bg = c.bg_mid },
    CursorLineNr      = { fg = c.pink },
    CursorColumn      = { bg = c.bg_mid },
    LineNr            = { fg = c.fg_gutter },
    SignColumn        = { fg = c.fg_gutter },
    SignColumnSB      = { fg = c.fg_gutter, bg = c.bg },
    ColorColumn       = { bg = c.bg },
    EndOfBuffer       = { fg = c.bg },
    Conceal           = {},
    TermCursor        = { fg = c.bg, bg = c.fg },
    TermCursorNC      = { fg = c.bg, bg = c.fg },

    -- ─── Selection & Search ──────────────────────────────────────────────────
    Visual            = { bg = c.bg_visual },
    Search            = { fg = c.bg_dark, bg = c.yellow, italic = true },
    IncSearch         = { fg = c.bg_dark, bg = c.fn, bold = true },
    CurSearch         = { link = "IncSearch" },

    -- ─── Splits & Borders ────────────────────────────────────────────────────
    VertSplit         = { fg = c.border },
    WinSeparator      = { fg = c.border },
    FloatBorder       = { fg = c.border_hi, bg = c.bg },

    -- ─── Status & Tabs ───────────────────────────────────────────────────────
    StatusLine        = { fg = c.bg_dark, bg = c.hint },
    StatusLineNC      = { fg = c.hint, bg = c.fg_dim },
    TabLine           = { fg = c.hint, bg = c.fg_dim, underline = true },
    TabLineFill       = { bg = c.bg_light },
    TabLineSel        = { fg = c.bg_dark, bg = c.hint, underline = true },

    -- ─── Popup / Menu ────────────────────────────────────────────────────────
    Pmenu             = { fg = c.fg, bg = c.bg_mid },
    PmenuSel          = { fg = c.fg, bg = c.bg_visual },
    PmenuSbar         = { bg = c.bg_mid },
    PmenuThumb        = { fg = c.bg_light, bg = c.keyword },

    -- ─── Messages ────────────────────────────────────────────────────────────
    ErrorMsg          = { fg = c.error, bold = true },
    WarningMsg        = { fg = c.pink },
    MoreMsg           = { fg = c.pink },
    ModeMsg           = { fg = c.fg, bold = true },
    MsgArea           = { fg = c.fg },
    MsgSeparator      = { sp = c.border, underline = true },
    Question          = { fg = c.keyword },

    -- ─── Folds ───────────────────────────────────────────────────────────────
    Folded            = { fg = c.comment, bg = c.bg, italic = true },
    FoldColumn        = { fg = c.comment, bg = c.bg },

    -- ─── Misc UI ─────────────────────────────────────────────────────────────
    NonText           = { fg = c.bg_mid },
    Whitespace        = { fg = c.bg_mid },
    SpecialKey        = { fg = c.blue },
    Directory         = { fg = c.blue },
    Title             = { fg = c.fg, bold = true },
    MatchParen        = { fg = c.yellow, bold = true, underline = true },
    WildMenu          = { fg = c.bg_dark, bg = c.yellow },
    Substitute        = { fg = c.bg, bg = c.green },
    Underlined        = { underline = true },
    Bold              = { bold = true },
    Italic            = { italic = true },

    -- ─── Diff ────────────────────────────────────────────────────────────────
    DiffAdd           = { fg = c.bg_dark, bg = c.diff_add },
    DiffChange        = { fg = c.bg_dark, bg = c.diff_chg },
    DiffDelete        = { fg = c.bg_dark, bg = c.diff_del },
    DiffText          = { fg = c.bg_dark, bg = c.diff_txt },
    diffAdded         = { fg = c.diff_add },
    diffRemoved       = { fg = c.diff_del },
    diffChanged       = { fg = c.diff_chg },
    diffFile          = { fg = c.fg },
    diffLine          = { fg = c.blue },
    diffIndexLine     = { fg = c.blue },

    -- ─── Spell ───────────────────────────────────────────────────────────────
    SpellBad          = { sp = c.error, undercurl = true },
    SpellCap          = { sp = c.warning, undercurl = true },
    SpellLocal        = { sp = c.info, undercurl = true },
    SpellRare         = { sp = c.hint, undercurl = true },

    -- ─── Syntax ──────────────────────────────────────────────────────────────
    Comment           = { fg = c.comment, italic = true },
    Constant          = { fg = c.number },
    String            = { fg = c.string },
    Character         = { fg = c.orange },
    Number            = { fg = c.number },
    Float             = { fg = c.number },
    Boolean           = { fg = c.green },
    Identifier        = { fg = c.fg },
    Function          = { fg = c.fn },
    Statement         = { fg = c.number },
    Conditional       = { fg = c.pink },
    Repeat            = { fg = c.keyword },
    Label             = { fg = c.green },
    Operator          = { fg = c.operator },
    Keyword           = { fg = c.keyword, italic = true },
    Exception         = { fg = c.orange },
    PreProc           = { fg = c.blue },
    Include           = { fg = c.pink },
    Define            = { fg = c.keyword },
    Macro             = { fg = c.number },
    PreCondit         = { fg = c.blue },
    Type              = { fg = c.pink_light },
    StorageClass      = { fg = c.yellow, italic = true },
    Structure         = { fg = c.blue },
    Typedef           = { fg = c.blue },
    Special           = { fg = c.keyword },
    SpecialChar       = { fg = c.orange },
    Tag               = { fg = c.pink },
    Delimiter         = { fg = c.fg_bright },
    Debug             = { fg = c.blue },
    Error             = { fg = c.fg, bg = c.error },
    Todo              = { fg = c.bg_dark, bg = c.pink, bold = true },

    -- ─── Treesitter ──────────────────────────────────────────────────────────
    ["@comment"]                  = { link = "Comment" },
    ["@keyword"]                  = { fg = c.keyword, italic = true },
    ["@keyword.function"]         = { fg = c.fn },
    ["@keyword.operator"]         = { fg = c.operator },
    ["@keyword.return"]           = { fg = c.pink },
    ["@function"]                 = { fg = c.fn },
    ["@function.builtin"]         = { fg = c.green },
    ["@function.call"]            = { fg = c.fn },
    ["@method"]                   = { fg = c.fn },
    ["@method.call"]              = { fg = c.fn },
    ["@constructor"]              = { fg = c.hint, italic = true },
    ["@parameter"]                = { fg = c.fg_bright, italic = true },
    ["@variable"]                 = { fg = c.fg },
    ["@variable.builtin"]         = { fg = c.yellow, italic = true },
    ["@constant"]                 = { fg = c.number },
    ["@constant.builtin"]         = { fg = c.number },
    ["@string"]                   = { fg = c.string },
    ["@string.escape"]            = { fg = c.blue },
    ["@string.regex"]             = { fg = c.orange },
    ["@number"]                   = { fg = c.number },
    ["@float"]                    = { fg = c.number },
    ["@boolean"]                  = { fg = c.green },
    ["@type"]                     = { link = "Type" },
    ["@type.builtin"]             = { fg = c.yellow, italic = true },
    ["@field"]                    = { fg = c.fg },
    ["@property"]                 = { fg = c.fg_bright },
    ["@variable.member"]          = { fg = c.fg_dim },   -- новый treesitter API (заменяет @field)
    ["@namespace"]                = { link = "Include" },
    ["@include"]                  = { fg = c.pink },
    ["@operator"]                 = { link = "Operator" },
    ["@punctuation.bracket"]      = { fg = c.pink },
    ["@punctuation.delimiter"]    = { fg = c.fg_bright },
    ["@tag"]                      = { fg = c.yellow },
    ["@tag.attribute"]            = { fg = c.blue, italic = true },
    ["@tag.delimiter"]            = { fg = c.pink },
    ["@preproc"]                  = { fg = c.blue, italic = true },
    ["@text.uri"]                 = { fg = c.blue },
    ["@text.reference"]           = { fg = c.keyword, underline = true },
    ["@text.todo.checked"]        = { fg = c.green },
    ["@text.todo.unchecked"]      = { fg = c.orange },

    -- ─── LSP ─────────────────────────────────────────────────────────────────
    LspReferenceText              = { bg = c.fg_gutter },
    LspReferenceRead              = { bg = c.fg_gutter },
    LspReferenceWrite             = { bg = c.fg_gutter },
    LspInlayHint                  = { fg = c.comment, italic = true },
    LspInfoBorder                 = { fg = c.border_hi, bg = c.bg },
    DiagnosticError               = { fg = c.error },
    DiagnosticWarn                = { fg = c.warning },
    DiagnosticInfo                = { fg = c.info },
    DiagnosticHint                = { fg = c.hint },
    DiagnosticUnnecessary         = { fg = c.fg_gutter, italic = true },
    DiagnosticVirtualTextError    = { fg = c.error, bg = c.bg_dark },
    DiagnosticVirtualTextWarn     = { fg = c.warning, bg = c.bg_dark },
    DiagnosticVirtualTextInfo     = { fg = c.info, bg = c.bg_dark },
    DiagnosticVirtualTextHint     = { fg = c.hint, bg = c.bg_dark },
    DiagnosticUnderlineError      = { undercurl = true, sp = c.error },
    DiagnosticUnderlineWarn       = { undercurl = true, sp = c.warning },
    DiagnosticUnderlineInfo       = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint       = { undercurl = true, sp = c.hint },
    ["@lsp.type.keyword"]         = { link = "@keyword" },
    ["@lsp.type.function"]        = { link = "@function" },
    ["@lsp.type.method"]          = { link = "@method" },
    ["@lsp.type.variable"]        = {},
    ["@lsp.type.string"]          = { link = "@string" },
    ["@lsp.type.number"]          = { link = "@number" },
    ["@lsp.type.boolean"]         = { link = "@boolean" },
    ["@lsp.type.enum"]            = { link = "@type" },
    ["@lsp.type.enumMember"]      = { link = "@constant" },
    ["@lsp.type.namespace"]       = { link = "@namespace" },
    ["@lsp.type.parameter"]       = { link = "@parameter" },
    ["@lsp.type.property"]        = { link = "@property" },
    ["@lsp.type.comment"]         = { link = "@comment" },
    ["@lsp.typemod.variable.callable"] = { link = "@function" },

    -- ─── Plugins ─────────────────────────────────────────────────────────────

    -- GitSigns
    GitSignsAdd               = { link = "diffAdded" },
    GitSignsChange            = { link = "diffChanged" },
    GitSignsDelete            = { link = "diffRemoved" },
    GitSignsCurrentLineBlame  = { fg = c.comment, bg = c.bg_mid, italic = true },

    -- Telescope
    TelescopeBorder           = { fg = c.border_hi, bg = c.bg },
    TelescopeNormal           = { fg = c.fg, bg = c.bg },
    TelescopePromptPrefix     = { fg = c.hint },
    TelescopeSelection        = { fg = c.fg, bg = c.bg_visual },
    TelescopeSelectionCaret   = { fg = c.fn, bg = c.bg_visual },

    -- nvim-cmp
    CmpDocumentation          = { fg = c.fg, bg = c.bg },
    CmpDocumentationBorder    = { fg = c.border_hi, bg = c.bg },
    CmpGhostText              = { fg = c.bg_light },
    CmpItemAbbr               = { fg = c.fg },
    CmpItemAbbrMatch          = { fg = c.pink },
    CmpItemAbbrMatchFuzzy     = { fg = c.pink },
    CmpItemAbbrDeprecated     = { fg = c.fg_gutter, strikethrough = true },
    CmpItemMenu               = { fg = c.comment },

    -- DAP
    DapUIScope                = { fg = c.blue },
    DapUIType                 = { fg = c.keyword },
    DapUIThread               = { fg = c.green },
    DapUIStoppedThread        = { fg = c.pink },
    DapUISource               = { fg = c.keyword },
    DapUILineNumber           = { fg = c.blue },
    DapUIFloatBorder          = { fg = c.border_hi, bg = c.bg },
    DapUIWatchesValue         = { fg = c.green },
    DapUIWatchesError         = { fg = c.error },
    DapUIBreakpointsPath      = { fg = c.blue },
    DapUIBreakpointsInfo      = { fg = c.keyword },
    DapUIStop                 = { fg = c.pink },
    DapUIPlayPause            = { fg = c.green },
    DapUIRestart              = { fg = c.yellow },

    -- lazy.nvim
    LazyProgressDone          = { fg = c.keyword, bold = true },
    LazyProgressTodo          = { fg = c.pink, bold = true },
    LazyButton                = { fg = c.blue, bold = true },

    -- NvimTree / NeoTree
    NvimTreeFolderIcon        = { fg = c.blue },
    NvimTreeFolderName        = { fg = c.fg },
    NvimTreeRootFolder        = { fg = c.keyword, italic = true },
    NvimTreeGitDeleted        = { fg = c.diff_del },
    NvimTreeGitDirty          = { fg = c.diff_chg },
    NvimTreeGitNew            = { fg = c.diff_add },
    NvimTreeNormal            = { fg = c.fg, bg = c.bg },
    NvimTreeNormalNC          = { fg = c.fg, bg = c.bg_light },
    NeoTreeNormal             = { link = "NvimTreeNormal" },
    NeoTreeNormalNC           = { link = "NvimTreeNormalNC" },

    -- WhichKey
    WhichKey                  = { fg = c.fg_bright },
    WhichKeyGroup             = { fg = c.pink },
    WhichKeySeparator         = { fg = c.fg },
    WhichKeyDesc              = { fg = c.fg },
    WhichKeyFloat             = { bg = c.bg },
    WhichKeyBorder            = { fg = c.border_hi, bg = c.bg },

    -- Todo Comments
    TodoBgTODO                = { fg = c.bg_dark, bg = c.pink_light, bold = true },
    TodoBgFIX                 = { fg = c.bg_dark, bg = c.keyword, bold = true },
    TodoBgNOTE                = { fg = c.bg_dark, bg = c.border_hi, bold = true },
    TodoBgWARN                = { fg = c.bg_dark, bg = c.orange, bold = true },
    TodoFgTODO                = { fg = c.pink_light },
    TodoFgFIX                 = { fg = c.keyword },
    TodoFgNOTE                = { fg = c.border_hi },
    TodoFgWARN                = { fg = c.orange },
    TodoSignTODO              = { link = "TodoFgTODO" },
    TodoSignFIX               = { link = "TodoFgFIX" },
    TodoSignNOTE              = { link = "TodoFgNOTE" },
    TodoSignWARN              = { link = "TodoFgWARN" },

    -- Illuminate
    IlluminatedWordText       = { bg = c.fg_gutter, underline = true },
    IlluminatedWordRead       = { bg = c.fg_gutter },
    IlluminatedWordWrite      = { bg = c.fg_gutter },

    -- Health
    healthError               = { fg = c.error },
    healthSuccess             = { fg = c.green },
    healthWarning             = { fg = c.warning },
  })
end

function M.setup(opts)
  -- Зарезервировано для будущих настроек (прозрачность, стили и т.д.)
  _ = opts
end

return M
