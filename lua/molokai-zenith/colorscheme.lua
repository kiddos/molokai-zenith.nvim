local config = require('molokai-zenith.config')

local colorscheme = {}

-- Base & Editor
colorscheme.mainText = '#F8F8F2'
colorscheme.editorBackground = config.transparent and 'none' or '#222326'
colorscheme.cursorLine = config.transparent and 'none' or '#292A2E'
colorscheme.directoryText = '#66D9EF'

-- Messages & Diff
colorscheme.successText = '#A6E22D'
colorscheme.warningText = '#FD971F'
colorscheme.errorText = '#F92672'
colorscheme.warningEmphasis = '#E6DB74'

-- Fold, Search & Selection
colorscheme.folded = '#757B87'
colorscheme.searchBackground = '#4A4735'
colorscheme.matchedBackground = '#3E4452'
colorscheme.selectionBackground = '#3E4453'

-- Line numbers
colorscheme.lineNumber = '#5C6068'
colorscheme.lineNumberBackground = colorscheme.editorBackground
colorscheme.cursorLineNumber = '#FD971F'
colorscheme.cursorLineNumberBackground = colorscheme.editorBackground

-- Popup menu
colorscheme.menuBackground = '#28292D'
colorscheme.menuSelection = '#3D424F'
colorscheme.menuThumb = '#5A5F6B'
colorscheme.menuThumbBackground = '#202124'

-- Tabline
colorscheme.tabBackground = '#1C1D20'
colorscheme.tabBackgroundFill = '#161719'
colorscheme.tabBackgroundSelected = colorscheme.editorBackground

-- Syntax groups
colorscheme.syntaxComment = '#7C838F'
colorscheme.syntaxConstant = '#AE81FF'
colorscheme.syntaxString = '#E6DB74'
colorscheme.syntaxFunction = '#A6E22D'
colorscheme.syntaxKeyword = '#F92672'
colorscheme.syntaxPreprocessor = '#F92672'
colorscheme.syntaxMacro = '#A6E22D'
colorscheme.syntaxType = '#66D9EF'
colorscheme.syntaxSpecial = '#66D9EF'
colorscheme.syntaxSpecialComment = '#FD971F'
colorscheme.syntaxDebug = '#66D9EF'
colorscheme.syntaxUnderline = '#FD971F'
colorscheme.syntaxIgnore = '#7C838F'
colorscheme.syntaxError = colorscheme.errorText
colorscheme.syntaxTodo = '#FD971F'
colorscheme.syntaxAdded = '#85D968'
colorscheme.syntaxChanged = '#E6DB74'
colorscheme.syntaxRemoved = '#F92672'

-- Diagnostics
colorscheme.diagnosticError = '#F92672'
colorscheme.diagnosticWarn = '#FD971F'
colorscheme.diagnosticInfo = '#66D9EF'
colorscheme.diagnosticHint = '#64D8B8'
colorscheme.diagnosticOk = '#A6E22D'

return colorscheme
