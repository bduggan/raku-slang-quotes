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
    say 〝hello, world〞;
    say ＂hello, world＂;

    say ❛hello, world❜;
    say ＇hello, world＇;

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

Currently supported quote chars, and whether they have the Quotation_Mark property, are:

    " U+0022 True Po QUOTATION MARK
    ❝ U+275D False So HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT
    🙶 U+1F676 False So SANS-SERIF HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT
    ❛ U+275B False So HEAVY SINGLE TURNED COMMA QUOTATION MARK ORNAMENT
    〝 U+301D True Ps REVERSED DOUBLE PRIME QUOTATION MARK
    ＂ U+FF02 True Po FULLWIDTH QUOTATION MARK
    ＇ U+FF07 True Po FULLWIDTH APOSTROPHE
    ❛ U+275B False So HEAVY SINGLE TURNED COMMA QUOTATION MARK ORNAMENT

AUTHOR
======

Brian Duggan

