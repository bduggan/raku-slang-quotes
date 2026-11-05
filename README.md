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

Currently supported quote chars, their unicode category and whether they have the Quotation_Mark property, are:

<table class="pod-table">
<thead><tr>
<th>char</th> <th>ord</th> <th>Quotation_Mark?</th> <th>Uniprops</th> <th>Name</th>
</tr></thead>
<tbody>
<tr> <td>&quot;</td> <td>U+0022</td> <td>True</td> <td>Po</td> <td>QUOTATION MARK</td> </tr> <tr> <td>❝</td> <td>U+275D</td> <td>False</td> <td>So</td> <td>HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT</td> </tr> <tr> <td>🙶</td> <td>U+1F676</td> <td>False</td> <td>So</td> <td>SANS-SERIF HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT</td> </tr> <tr> <td>❛</td> <td>U+275B</td> <td>False</td> <td>So</td> <td>HEAVY SINGLE TURNED COMMA QUOTATION MARK ORNAMENT</td> </tr> <tr> <td>〝</td> <td>U+301D</td> <td>True</td> <td>Ps</td> <td>REVERSED DOUBLE PRIME QUOTATION MARK</td> </tr> <tr> <td>＂</td> <td>U+FF02</td> <td>True</td> <td>Po</td> <td>FULLWIDTH QUOTATION MARK</td> </tr> <tr> <td>＇</td> <td>U+FF07</td> <td>True</td> <td>Po</td> <td>FULLWIDTH APOSTROPHE</td> </tr> <tr> <td>❛</td> <td>U+275B</td> <td>False</td> <td>So</td> <td>HEAVY SINGLE TURNED COMMA QUOTATION MARK ORNAMENT</td> </tr>
</tbody>
</table>

AUTHOR
======

Brian Duggan

