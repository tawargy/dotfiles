local ls =require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()



  	local s = ls.snippet
		local sn = ls.snippet_node
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node
		local c = ls.choice_node
		local d = ls.dynamic_node
		local r = ls.restore_node
		local fmt = require('luasnip.extras.fmt').fmt
		local rep = require('luasnip.extras').rep
		-- https://github.com/L3MON4D3/LuaSnip/blob/1dbafec2379bd836bd09c4659d4c6e1a70eb380e/Examples/snippets.lua#L356=
		local l = require('luasnip.extras').lambda
		local types = require 'luasnip.util.types'


-- ------Js,Ts-------
ls.add_snippets("js-ts", {
})
ls.filetype_extend("javascript", { "js-ts" })
ls.filetype_extend("typescript", { "js-ts" })
ls.filetype_extend("javascriptreact", { "js-ts" })
ls.filetype_extend("typescriptreact", { "js-ts" })



-- ------Css-------
ls.add_snippets("css", {
  
	s({
					trig = 'debug',
					dscr = 'Print box model from https://dev.to/gajus/my-favorite-css-hack-32g3',
				}, {
					t {
						'* { background-color: rgba(255,0,0,.2); }',
						'* * { background-color: rgba(0,255,0,.2); }',
						'* * * { background-color: rgba(0,0,255,.2); }',
						'* * * * { background-color: rgba(255,0,255,.2); }',
						'* * * * * { background-color: rgba(0,255,255,.2); }',
						'* * * * * * { background-color: rgba(255,255,0,.2); }',
						'* * * * * * * { background-color: rgba(255,0,0,.2); }',
						'* * * * * * * * { background-color: rgba(0,255,0,.2); }',
						'* * * * * * * * * { background-color: rgba(0,0,255,.2); }',
					},
				}),
})

























-- ls.snippets = {
--   all = {
--     ls.parser.parse_snippet("rt", "return"),
--   },
--   javascript = {
--     ls.parser.parse_snippet("cl", "console.log($0)"),
 

--   },
-- }

