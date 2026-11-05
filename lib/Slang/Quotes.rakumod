my role Slang::Quotes::Grammar {
  token quote:sym<hdtc> {
        :dba('heavy double turned comma')
        '❝' ~ '❞' <nibble(self.quote-qq('❝', '❞'))>
   }
}

my role Slang::Quotes::Actions {
  method quote:sym<hdtc>(Mu $match) { self.QUOTED($match, $match<nibble>.ast); }
}

use Slangify Slang::Quotes::Grammar, Slang::Quotes::Actions;
