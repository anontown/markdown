module AST where

data Block=Line|Head HeadLevel Inline|Code String String|Paragraph Inline|Quote Block|List ListType (Array ListItem)|Table (Array Inline) (Array TableAlignment) (Array Inline)|Tex String

data HeadLevel=H1|H2|H3|H4|H5|H6

data ListType=UL|OL Int

data TableAlignment=AliCenter|AliRight|AliLeft

data ListItem=ListItemInline Inline|ListItemNest (Array ListItem)

data Inline=Text String|Br|Em Inline|Strong Inline|Link {text::String,url::String,title::String}|Image {text::String,url::String,title::String}|Del Inline|TexBlock String
