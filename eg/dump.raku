
say "char | Quotation_Mark? | Uniprops | Name";

for <
"
❝
🙶
❛
〝
＂
＇
❛
> -> $c {
  # make a markdown table of the characters
  my @row =
    'U+' ~ $c.ord.fmt('%04x').uc,
    (so $c.uniprop('Quotation_Mark')),
    $c.uniprops,
    $c.uniname;
  say @row.join(' | ');
}
