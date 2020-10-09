\header {
  title = "Fugue No. 1"
  composer = "Aleksandr Yakunichev"
  tagline = ""
}

trebleSubject           = {| r1 | r1 | r1 | r1 | }
bassSubject             = {| a4 g8[b] a4 b8[c] | d4 e8[c] d4 c8[d] | e8[f g f] e4 d8[c] | b8[g] a2 g8[fis8] | }

trebleCounterSubject    = {| e4 d8[fis] e4 fis8[g] | a4 b8[g]    a4 g8[a] | b8[c d c] b4 a8[g] | fis8[d] e2       b'8[a] |}
bassCounterSubject      = {| e2         c2~         | c8[e fis g] fis2     | g2        b8[c]  d4~d8[fis]  e4. fis8 g8[a]  |}

trebleIntermediaAa      = {| b8[g fis e] d2          | a'8[b a fis e d] c4~     | c4 g'8[a g e d c]  | b2 fis'8[g fis d] |}
bassIntermediaAa        = {| g2~         g8[fis d e] | fis8[g] fis2~    fis8[e] | c8[d e fis] e2~    | e8[d b c d e] d4~ |}

trebleIntermediaAb      = {| c8[b] a2~  a8[b] | d2~       d8[e g fis] | e8[d] e2~      e8[fis] | a8[g fis e] fis2~ |}
bassIntermediaAb        = {| d4~d8[c a b c d] | b8[d e fis] g2          | c,8[b c e fis g] a4~ | a4 d,8[c d fis g a] |}

trebleIntermediaAc      = {| fis8[g b a g fis] g4~ | g4~ g8[a c bes a c] |}
bassIntermediaAc        = {| b2 e,8[d e g]         | a8[b] c2 fis,8[e]   |}

trebleCounterSubjectIV  = {| d4 c8[e] d4 e8[f] | g4 a8[f]  g4 f8[g] | a8[bes c bes] a4 g8[f]    | e8[c] d4 e8[f g  a] |}
bassCounterSubjectIV    = {| d2        b2~     | b8[d e f] e2       | f2            a8[bes] c4~ | c8[e] d2~     d8[c] |}

trebleIntermediaBa      = {| bes8[c]  a4 g8[f]  e4  | f8[e] c4 a8[bes a g] | f8[e] f4 d'8[c bes a]  |}
bassIntermediaBa        = {| bes8[a~] a8[f e d] c4~ | c4    e2        c4~  | c4    d4 f4    g8[ a] |}

trebleIntermediaBb      = {| g8[f] g4  e'8[d c bes]   | a8[g] a4    f'8[e d c]    | b8[a] b4  g'8[f e d]  |} 
bassIntermediaBb        = {| c4    e,4  g4    a8[bes] | d4    f,4   a4    bes8[c] | d8[c  b g e   d c b] |}

trebleSubjectCoda       = {| c8[b] a4 g8[b] a4  | b8[c] d4 e8[c] d4  | c8[d] e8[f g f] e4    |}
bassSubjectCoda         = {| a8[g] a2       f4~ | f4~f8[a b c]   b4~ | b4    c2        e8[f] |}

trebleCoda              = {| d8[c] b8[g] e4 g8[b] | c4 b4 d8[c e g] | a1 |} 
bassCoda                = {| g4~   g8[b] c4 e8[d] | e4 d4 b8[a g b] | a1 |}

treble = \relative a' {
  \trebleSubject \break
  \trebleCounterSubject \break
  \trebleIntermediaAa 
  \trebleIntermediaAb
  \trebleIntermediaAc 
  \trebleCounterSubjectIV \break
  \trebleIntermediaBa \trebleIntermediaBb 
  \trebleSubjectCoda \break
  \trebleCoda
}
bass = \relative a, {
  \bassSubject \break
  \bassCounterSubject \break
  \bassIntermediaAa \bassIntermediaAb \bassIntermediaAc 
  \bassCounterSubjectIV \break
  \bassIntermediaBa \bassIntermediaBb 
  \bassSubjectCoda \break
  \bassCoda 
}

\score {
  % \midi {}
  \new PianoStaff <<
    \new Staff = "Piano" <<
      \tempo "Moderato"
      \key a \minor
      \treble
    >>
    \new Staff = "Bass" <<
      \key a \minor
      \clef "bass"
      \bass
    >>
  >>
}