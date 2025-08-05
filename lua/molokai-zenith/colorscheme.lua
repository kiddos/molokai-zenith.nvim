local config = require('molokai-zenith.config')

local colorscheme = {}

colorscheme.mainText = '#E8E8E8'
colorscheme.editorBackground = config.transparent and 'none' or '#272822'
colorscheme.directoryText = '#AE85FC'
-- message
colorscheme.successText = '#22863a'
colorscheme.warningText = '#ff9800'
colorscheme.errorText = '#cd3131'
colorscheme.warningEmphasis = '#cd9731'
-- fold
colorscheme.folded = '#BCBCBC'
colorscheme.searchBackground = '#3A3A3A'
-- matched bracket
colorscheme.matchedBackground = colorscheme.searchBackground
-- line number
colorscheme.lineNumber = '#80827C'
colorscheme.lineNumberBackground = colorscheme.editorBackground
colorscheme.cursorLineNumber = colorscheme.mainText
colorscheme.cursorLineNumberBackground = '#3e3e3e'

-- popup menu
colorscheme.menuBackground = '#303030'
colorscheme.menuSelection = '#3F3F3F'
colorscheme.menuThumb = '#6C6C6C'
colorscheme.menuThumbBackground = '#262626'
-- selection
colorscheme.selectionBackground = '#383A3E'
-- tab
colorscheme.tabBackground = '#171814'
colorscheme.tabBackgroundFill = '#080808'
colorscheme.tabBackgroundSelected = colorscheme.editorBackground

-- syntax groups
colorscheme.syntaxComment = '#808890'
colorscheme.syntaxConstant = '#AE85FC'
colorscheme.syntaxString = '#E6DB74'
colorscheme.syntaxFunction = '#A6E22D'
colorscheme.syntaxKeyword = '#F92672'
colorscheme.syntaxPreprocessor = '#F92672'
colorscheme.syntaxMacro = '#A6E22D'
colorscheme.syntaxType = '#64D8ED'
colorscheme.syntaxSpecial = '#64D8ED'
colorscheme.syntaxSpecialComment = '#FB9633'
colorscheme.syntaxDebug = '#64D8ED'
colorscheme.syntaxUnderline = '#FB9633'
colorscheme.syntaxIgnore = '#808890'
colorscheme.syntaxError = colorscheme.errorText
colorscheme.syntaxTodo = '#FB9633'
colorscheme.syntaxAdded = '#8AC374'
colorscheme.syntaxChanged = '#DAC75E'
colorscheme.syntaxRemoved = '#DA5E5E'

colorscheme.diagnosticError = '#F13B3B'
colorscheme.diagnosticWarn = '#F1AC3B'
colorscheme.diagnosticInfo = '#717171'
colorscheme.diagnosticOk = '#69DD3A'

return colorscheme
