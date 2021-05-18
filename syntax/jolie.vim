if exists("b:current_syntax")
  finish
endif

syn region  jolieComment		 start="/\*"  end="\*/" 
syn match   jolieLineComment	 "//.*"
syn match   jolieNumber          "\b\d+\b"
syn keyword jolieBoolean		true false
syn keyword jolieDefinitionTypes    inputPort outputPort interface type define service
syn keyword jolieKeyword location Location protocol Protocol interfaces Interfaces aggregates Aggregates redirects Redirects class Jolie JavaScript Java OneWay oneWay RequestResponse requestResponse execution
syn keyword jolieOtherKeyword constants cH instanceof execution comp concurrent nullProcess single sequential main foreign java init cset is_defined embed embedded extender courier forward install undef include synchronized throws throw from import as
syn keyword jolieConditional    if else
syn keyword jolieRepeat while for foreach until in
syn keyword jolieException throw
syn keyword jolieStatement forward scope provide
syn keyword jolieType void bool int string long double any raw
syn keyword jolieKeywordModifiers csets global
syn match jolieOperators "(<<|&&|\|\||+|-|/|*|=|==|++|-|+=|-=|*=|/=|!|%=|%)"

syn match jolieSpecialChar contained "\\."

syn region jolieString start=+"+ end=+"+ contains=jolieSpecialChar

"syn region jolieClass "\s(\w\+)@" ms=s+1
"syn region jolieMethod "@(\w\+)" ms=s+1

hi def link jolieBoolean		Boolean
hi def link jolieNumber         Number
hi def link jolieComment        Comment
hi def link jolieLineComment    Comment
hi def link jolieDefinitionTypes Keyword
hi def link jolieKeyword        Keyword
hi def link jolieOtherKeyword   Keyword

hi def link jolieOperators      Operator

hi def link jolieConditional    Conditional
hi def link jolieRepeat         Repeat
hi def link jolieException      Exception
hi def link jolieStatement      Statement
hi def link jolieType           Type

hi def link jolieKeywordModifiers StorageClass

hi def link jolieString         String

"hi def link jolieClass          Type
"hi def link jolieMethod         Function

let b:current_syntax = "jolie"
