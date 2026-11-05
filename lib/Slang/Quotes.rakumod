
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
}

my role Slang::Quotes::Actions {
  method quote:sym<hdcqmo>(Mu $match) { self.QUOTED($match, $match<nibble>.ast); }
  method quote:sym<sshdcmo>(Mu $match) { self.QUOTED($match, $match<nibble>.ast); }
  method quote:sym<hscqmo>(Mu $match) { self.QUOTED($match, $match<nibble>.ast); }
}

use Slangify Slang::Quotes::Grammar, Slang::Quotes::Actions;

=begin pod

=head1 NAME

Slang::Quotes -- Treat more unicode ❝quotes❞ as quotation marks

=head1 SYNOPSIS

    say 🙶hello world🙷;
    say ❝hello world❞;

=head1 DESCRIPTION

There are a number of unicode characters that look like quotes
but are not specifically categorized as quotes, such as

  🙶these ones🙷

aka

   SANS-SERIF HEAVY DOUBLE TURNED COMMA QUOTATION MARK ORNAMENT

The unicode properties of these indicate they are brackets, not quotes.

But they look like quotes to me!  With this slang, they are treated
as quotes.

Note that without this slang of course you could use the Q operator,
but this makes that unnecessary.

=head1 AUTHOR

Brian Duggan

=end pod


