
my role Slang::Quotes::Grammar {
  token quote:sym<hdcqmo> {
        :dba('heavy double comma quotation mark ornament')
        '❝' ~ '❞' <nibble(self.quote-qq('❝', '❞'))>
   }
   token quote:sym<sshdcmo> {
        :dba('sans-serif heavy double comma quotation mark ornament')
        '🙶' ~ '🙷' <nibble(self.quote-qq('🙶', '🙷'))>
   }
   token quote:sym<hscqmo> {
        :dba('heavy single comma quotation mark ornament')
        '❛' ~ '❜' <nibble(self.quote-q('❛', '❜'))>
   }
   token quote:sym<dpcqmo> {
        :dba('double prime quotation mark')
        '〝' ~ '〞' <nibble(self.quote-qq('〝', '〞'))>
   }
   token quote:sym<fwqm> {
        :dba('fullwidth quotation mark')
        '＂' ~ '＂' <nibble(self.quote-qq('＂', '＂'))>
   }
   token quote:sym<fwsqm> {
        :dba('fullwidth single quotation mark')
        '＇' ~ '＇' <nibble(self.quote-q('＇', '＇'))>
   }
}

my role Slang::Quotes::Actions {
  method quote:sym<hdcqmo>(Mu $match) { self.QUOTED($match, $match<nibble>.ast); }
  method quote:sym<sshdcmo>(Mu $match) { self.QUOTED($match, $match<nibble>.ast); }
  method quote:sym<hscqmo>(Mu $match) { self.QUOTED($match, $match<nibble>.ast); }
  method quote:sym<dpcqmo>(Mu $match) { self.QUOTED($match, $match<nibble>.ast); }
  method quote:sym<fwqm>(Mu $match) { self.QUOTED($match, $match<nibble>.ast); }
  method quote:sym<fwsqm>(Mu $match) { self.QUOTED($match, $match<nibble>.ast); }
}

use Slangify Slang::Quotes::Grammar, Slang::Quotes::Actions;

=begin pod

=head1 NAME

Slang::Quotes -- Treat more unicode ❝quotes❞ as quotation marks

=head1 SYNOPSIS

    say 🙶hello, world🙷;
    say ❝hello world❞;
    say ❝hello, world❞;
    say 〝hello, world〞;
    say ＂hello, world＂;

    say ❛hello, world❜;
    say ＇hello, world＇;

=head1 DESCRIPTION

There are a number of unicode characters that look like quotes
but are not specifically categorized as quotes, such as

  🙶these ones🙷

aka

   SANS-SERIF HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT

and

   SANS-SERIF HEAVY DOUBLE COMMA QUOTATION MARK ORNAMENT

The unicode properties of these indicate that they are bracketing characters, but not quotes.

Well, they look like quotes to me!  With this slang, they are treated
as quotes.

Note that without this slang of course you could use the Q operator, which
turns bracketing characters into quotes.

Currently supported quote chars, their unicode category and whether they have the Quotation_Mark property, are:

=begin table
char | Quotation_Mark? | Uniprops | Name
-----|-----------------|----------|-----
U+0022 | True | Po | QUOTATION MARK
U+275D | False | So | HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT
U+1F676 | False | So | SANS-SERIF HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT
U+275B | False | So | HEAVY SINGLE TURNED COMMA QUOTATION MARK ORNAMENT
U+301D | True | Ps | REVERSED DOUBLE PRIME QUOTATION MARK
U+FF02 | True | Po | FULLWIDTH QUOTATION MARK
U+FF07 | True | Po | FULLWIDTH APOSTROPHE
U+275B | False | So | HEAVY SINGLE TURNED COMMA QUOTATION MARK ORNAMENT
=end table

=head1 AUTHOR

Brian Duggan

=end pod


