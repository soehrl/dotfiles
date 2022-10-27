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


ls.add_snippets('cpp', { ls.parser.parse_snippet('OvisNS', [[
namespace ovis {

$1

}  // namespace ovis]]) });

ls.add_snippets('cpp', { ls.parser.parse_snippet('OvisHeader', [[
#pragma once

namespace ovis {

$1

}  // namespace ovis]]) });

ls.add_snippets('cpp', { ls.parser.parse_snippet('OvisTestFile', [[
#include <string>

#include "catch2/catch.hpp"

#include "ovis/test/utils.hpp"

using namespace ovis;

TEST_CASE("$1", "[ovis][$2][$3]") {
$4
}]]) });

ls.add_snippets('cpp', { ls.parser.parse_snippet('OvisTestCase', [[
TEST_CASE("$1", "[ovis][$2][$3]") {
$4
}]]) });
