\header {
  title = "Fugue No. 2"
  composer = "Aleksandr Yakunichev"
  tagline = ""
}

trebleSubject           = {| r1 | r1 | r1 | r1 | }
bassSubject             = {| a4 g8[b] a4 b8[c] | d4 e8[c] d4 c8[d] | e8[f g f] e4 d8[c] | b8[g] a2 g8[fis8] | }

trebleCounterSubject    = {| e4 d8[fis] e4 fis8[g] | a4 b8[g]    a4 g8[a] | b8[c d c] b4 a8[g] | fis8[d] e2       b'8[a] |}
bassCounterSubject      = {| e2         c2~         | c8[e fis g] fis2     | g2        b8[c]  d4~d8[fis]  e4. fis8 g8[a]  |}

trebleIntermediaAa      = {| b8[g fis e] d2        | a'8[b a fis e d] c4~     | c4 g'8[a g e d c]  | b2 fis'8[g fis d] |}
bassIntermediaAa        = {| g2~         g8[e d e] | fis8[g] fis2~    fis8[d] | c8[d e fis] e2~    | e8[c b c d e] d4~ |}

trebleIntermediaAb      = {| c8[b] a2   b8[c] | d2~       d8[fis g fis] | e8[d] e2~      e8[g] | a8[g fis e] fis2~ |}
bassIntermediaAb        = {| d4~d8[b a b c d] | b8[d e fis] g2          | c,8[b c e fis g] a4~ | a4 d,8[c d fis g a] |}

trebleIntermediaAc      = {| fis8[a b a g fis] g4~ | g4~ g8[b c bes a c] |}
bassIntermediaAc        = {| b2 e,8[d e g]         | a8[b] c2 fis,8[e]   |}

trebleCounterSubjectIV  = {| d4 c8[e] d4 e8[f] | g4 a8[f]  g4 f8[g] | a8[bes c bes] a4 g8[f]    | e8[c] d4 e8[f g a] |}
bassCounterSubjectIV    = {| d2        b2~     | b8[d e f] e2       | f2            a8[bes] c4~ | c8[e] d2. |}

trebleIntermediaBa      = {| bes8[c] a4 g8[f] e4 | f8[e] bes4 a8[bes a g] | f8[e] f4 d'8[c bes a] |}
bassIntermediaBa        = {| r1 | r1 |}

trebleIntermediaBb      = {| g8[f] g4 e'8[d c bes] | a8[g] a4 f'8[e d c] | bes8[a] bes4 g'8[f e d] |} 
bassIntermediaBb        = {| r1 | r1 | r1 | r1 |}

trebleSubjectCoda       = {| c8[b] a4 g8[b] a4  | b8[c] d4 e8[c] d4  | c8[d] e8[f g f] e4    | d8[c] b8[g] a2 |}
bassSubjectCoda         = {| r4    a,2      f4~ | f4~f8[a b c]   b4~ | b4 c2           e8[f] | g4~g8[b]    a2 |}

trebleCoda              = {| r1 | r1 | r1 | r1 |} 
bassCoda                = {| r1 | r1 | r1 | r1 |}

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
      \tempo 4 = 94
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