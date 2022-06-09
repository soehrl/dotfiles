local ls = require 'luasnip'

ls.add_snippets('typescriptreact', { ls.parser.parse_snippet('reactcomponent', [[
import React from 'react';

export interface $1Props {
}

export default function $1(props: React.PropsWithoutRef<$1Props>) {
  return (
    <span>$1</span>
  );
}
]]) });
