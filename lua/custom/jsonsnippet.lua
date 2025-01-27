local ls = require 'luasnip'
local s = ls.s
local fmt = require('luasnip.extras.fmt').fmt
local i = ls.insert_node
local rep = require('luasnip.extras').rep

ls.add_snippets('json', {
  s('ch', fmt('"{}": {{ \n\t "display_name": "{}", \n\t "description": "{}", \n\t "properties": {{ \n\t\t "data_type": "{}", \n\t\t "data_unit": "{}", \n\t }} \n }},', { i(1, '000'), rep(1), rep(1), i(2), i(3) })),
}, { key = 'json' })

ls.add_snippets('python', {
  s('def', fmt('def {}({}):', { i(1), i(2) })),
}, { key = 'json' })


ls.add_snippets('awk', {
  s('awk', fmt('BEGIN {{FS=","}}\n{{print $0}}\nEND{{ }}', {})),
}, { key = 'json' })

