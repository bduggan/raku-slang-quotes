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
  say $c
  ~ ' '
  ~ 'U+' ~ $c.ord.fmt('%04x').uc ~ ' '
  ~ (so $c.uniprop('Quotation_Mark')) ~ ' '
  ~ $c.uniprops ~ ' '
  ~ $c.uniname
}
