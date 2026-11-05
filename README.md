[![Actions Status](https://github.com/bduggan/raku-slang-quotes/actions/workflows/linux.yml/badge.svg)](https://github.com/bduggan/raku-slang-quotes/actions/workflows/linux.yml)
[![Actions Status](https://github.com/bduggan/raku-slang-quotes/actions/workflows/macos.yml/badge.svg)](https://github.com/bduggan/raku-slang-quotes/actions/workflows/macos.yml)

NAME
====

Slang::Quotes -- Treat more unicode ❝quotes❞ as quotation marks

SYNOPSIS
========

    say 🙶hello, world🙷;
    say ❝hello world❞;
    say ❝hello, world❞;
    say ❛hello, world❜;
    say 〝hello, world〞;
    say ＂hello, world＂;

DESCRIPTION
===========

There are a number of unicode characters that look like quotes but are not specifically categorized as quotes, such as

    🙶these ones🙷

aka

    SANS-SERIF HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT

and

    SANS-SERIF HEAVY DOUBLE COMMA QUOTATION MARK ORNAMENT

The unicode properties of these indicate that they are bracketing characters, but not quotes.

Well, they look like quotes to me! With this slang, they are treated as quotes.

Note that without this slang of course you could use the Q operator, which turns bracketing characters into quotes.

AUTHOR
======

Brian Duggan

