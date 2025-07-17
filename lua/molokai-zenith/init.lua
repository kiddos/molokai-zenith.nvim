local api = vim.api
local config = require('molokai-zenith.config')
local colorscheme = require('molokai-zenith.colorscheme')

local M = {}

M.setup = function(opts)
  setmetatable(
    config,
    { __index = vim.tbl_extend('force', config.defaults, opts or {}) }
  )
end

local function set_groups()
  local bg = config.transparent and 'NONE' or colorscheme.editorBackground
  local groups = {
    Normal = { fg = colorscheme.mainText, bg = bg },
    -- floating window
    NormalFloat = { fg = colorscheme.mainText, bg = bg },
    -- cursor
    Cursor = { reverse = true },
    CursorIM = { reverse = true },
    CurSearch = { bg = colorscheme.searchBackground, italic = true },
    CursorColumn = { link = 'CursorLine' },
    CursorLine = { bg = bg },
    -- Directory
    Directory = { fg = colorscheme.directoryText },
    -- diff
    DiffAdd = { fg = colorscheme.sucessText, bg = bg },
    DiffChange = { fg = colorscheme.warningText, bg = bg },
    DiffDelete = { fg = colorscheme.errorText, bg = bg },
    DiffText = { fg = colorscheme.warningEmphasis, bg = bg },
    -- folding
    Folded = { fg = colorscheme.folded, bg = bg, italic = true },
    FoldedColumn = { fg = colorscheme.folded, bg = bg, italic = true },
    -- matched bracket
    MatchParent = { bg = colorscheme.matchedBackground, bold = true },
    -- search
    Search = { bg = colorscheme.searchBackground, italic = true },
    IncSearch = { bg = colorscheme.searchBackground, italic = true },
    -- line number
    LineNr = { fg = colorscheme.lineNumber, bg = colorscheme.lineNumberBackground },
    CursorLineNr = { fg = colorscheme.cursorLineNumber, bg = colorscheme.cursorLineNumberBackground, bold = true },
    -- message
    ErrorMsg = { fg = colorscheme.errorText },
    WarningMsg = { fg = colorscheme.warningText },
    MoreMsg = { fg = colorscheme.mainText },
    Question = { fg = colorscheme.mainText },
    -- popup menu
    Pmenu = { fg = colorscheme.mainText, bg = colorscheme.menuBackground },
    PmenuSel = { bg = colorscheme.menuSelection, bold = true },
    PmenuSbar = { fg = colorscheme.menuThumbBackground, bg = colorscheme.menuThumbBackground },
    PmenuThumb = { fg = colorscheme.menuThumb, bg = colorscheme.menuThumb },
    -- selection
    Visual = { bg = colorscheme.selectionBackground },
    -- tab
    TabLine = { fg = colorscheme.mainText, bg = colorscheme.tabBackground },
    TabLineFill = { fg = colorscheme.mainText, bg = colorscheme.tabBackgroundFill },
    TabLineSel = { fg = colorscheme.mainText, bg = colorscheme.tabBackgroundSelected, bold = true },

    -- syntax
    -- Comment
    Comment = { fg = colorscheme.syntaxComment },
    -- Constants
    Constant = { fg = colorscheme.syntaxConstant },
    String = { fg = colorscheme.syntaxString },
    Character = { fg = colorscheme.syntaxConstant },
    Number = { fg = colorscheme.syntaxConstant },
    Boolean = { fg = colorscheme.syntaxConstant },
    Float = { fg = colorscheme.syntaxConstant },
    -- Identifier
    Identifier = { fg = colorscheme.mainText },                     -- any variable name
    Function = { fg = colorscheme.syntaxFunction },                 -- function name (also: methods for classes)
    -- Statement
    Statement = { fg = colorscheme.mainText },                      -- any statement
    Conditional = { fg = colorscheme.syntaxKeyword, bold = false }, --if, then, else, endif, switch, etc.
    Repeat = { fg = colorscheme.syntaxKeyword, bold = true },       -- for, do, while, etc.
    Label = { fg = colorscheme.syntaxKeyword, italic = true },      -- case, default, etc.
    Operator = { fg = colorscheme.mainText },                       -- "+", "*", etc.
    Keyword = { fg = colorscheme.syntaxKeyword, bold = true },      -- any other keyword, eg. return
    Exception = { fg = colorscheme.syntaxKeyword, italic = true },  -- try, catch, throw
    -- PreProc
    PreProc = { fg = colorscheme.syntaxPreprocessor, bold = true },
    Include = { fg = colorscheme.syntaxPreprocessor, bold = true },
    Define = { fg = colorscheme.syntaxPreprocessor, bold = true },
    Macro = { fg = colorscheme.syntaxMacro },
    PreCondit = { fg = colorscheme.syntaxPreprocessor, bold = true },
    -- Type
    Type = { fg = colorscheme.syntaxType, bold = true, italic = false },
    StorageClass = { fg = colorscheme.syntaxType, italic = true },
    Structure = { fg = colorscheme.syntaxType, italic = true },
    Typedef = { fg = colorscheme.syntaxType, italic = true },
    -- Special
    Special = { fg = colorscheme.syntaxSpecial, italic = true },
    SpecialChar = { fg = colorscheme.syntaxSpecial, italic = true },
    Tag = { fg = colorscheme.syntaxKeyword, bold = true },
    Delimiter = { fg = colorscheme.mainText },
    SpecialComment = { fg = colorscheme.syntaxSpecialComment, bold = true },
    Debug = { fg = colorscheme.syntaxDebug, bold = true },
    -- Underline
    Underline = { fg = colorscheme.syntaxUnderline, underline = true, },
    -- Ignore
    Ignore = { fg = colorscheme.syntaxIgnore },
    -- Error
    Error = { fg = colorscheme.syntaxError, bold = true, italic = true },
    -- Todo
    Todo = { fg = colorscheme.syntaxTodo, bold = true, italic = true },
    -- Added, Changed, Removed
    Added = { fg = colorscheme.syntaxAdded },
    Changed = { fg = colorscheme.syntaxChanged },
    Removed = { fg = colorscheme.syntaxRemoved },
    -- Diagnostic
    DiagnosticError = { fg = colorscheme.diagnosticError, bold = true, italic = true },
    DiagnosticWarn = { fg = colorscheme.diagnosticWarn, bold = true, italic = true },
    DiagnosticInfo = { fg = colorscheme.diagnosticInfo, italic = true },
    DiagnosticHint = { fg = colorscheme.diagnosticHint, italic = true },
    DiagnosticOk = { fg = colorscheme.diagnosticOk, italic = true },
    DiagnosticUnderlineError = { sp = colorscheme.diagnosticError, italic = true, underline = false, strikethrough = true },
    DiagnosticUnderlineWarn = { sp = colorscheme.diagnosticWarn, italic = true, underline = true },
    DiagnosticUnderlineInfo = { sp = colorscheme.diagnosticInfo, italic = true, underline = true },
    DiagnosticUnderlineHint = { sp = colorscheme.diagnosticHint, underline = true },
    DiagnosticUnderlineOk = { sp = colorscheme.diagnosticOk, underline = true },
    -- LSP
    LspInlayHint = { fg = colorscheme.syntaxComment, italic = true },
    -- html tag
    htmlTagName = { link = 'Tag' },
    htmlTag = { link = 'Delimiter' },
  }

  local filetypes = { 'html', 'javascript', 'typescript', 'tsx' }
  for _, t in pairs(filetypes) do
    groups['@tag.' .. t] = { fg = colorscheme.syntaxKeyword, bold = true }
    groups['@tag.delimiter.' .. t] = { fg = colorscheme.mainText }
    groups['@text.' .. t] = { fg = colorscheme.mainText }
    groups['@text.strong.' .. t] = { fg = colorscheme.mainText, bold = true }
    groups['@text.emphasis.' .. t] = { fg = colorscheme.mainText, italic = true }
    groups['@text.underline.' .. t] = { fg = colorscheme.mainText, underline = true }
    groups['@text.title.' .. t] = { fg = colorscheme.mainText, bold = true }
    groups['@text.literal.' .. t] = { fg = colorscheme.mainText }
    groups['@text.uri.' .. t] = { fg = colorscheme.syntaxSpecial, italic = true }
  end
  groups['@attribute.css'] = { fg = colorscheme.mainText }
  groups['@punctuation.delimiter.css'] = { fg = colorscheme.mainText }
  groups['@property.css'] = { fg = colorscheme.mainText, italic = true }

  for group, value in pairs(groups) do
    api.nvim_set_hl(0, group, value)
  end
end

M.colorscheme = function()
  if vim.version().minor < 8 then
    vim.notify(
      'Neovim 0.8+ is required for my-theme colorscheme',
      vim.log.levels.ERROR,
      { title = 'Min Theme' }
    )
    return
  end

  api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    api.nvim_command('syntax reset')
  end

  api.nvim_set_option_value('termguicolors', true, {})
  api.nvim_set_var('colors_name', 'molokai-zenith')

  set_groups()
end

return M
