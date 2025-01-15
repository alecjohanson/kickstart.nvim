local ls = require 'luasnip'
local s = ls.s
local fmt = require('luasnip.extras.fmt').fmt
local i = ls.insert_node
local rep = require('luasnip.extras').rep

ls.add_snippets('lua', {
  ls.parser.parse_snippet('mf', 'local $1 = function $2()'),
  s('req', fmt("local {} require('{}')", { i(1), rep(1) })),
}, { key = 'lua' })

ls.add_snippets('json', {
  s('ch', fmt('"{}": {{ \n\t "display_name": "{}", \n\t "description": "{}", \n\t "properties": {{ \n\t\t "data_type": "{}", \n\t\t "data_unit": "{}", \n\t }} \n }},', { i(1, '000'), rep(1), rep(1), i(2), i(3) })),
}, { key = 'json' })

