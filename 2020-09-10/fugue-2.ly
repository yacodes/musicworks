date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "Fugue #2"
  composer = "A. I. Yakunichev"
  subtitle = \date
  tagline = ""
}

trebleSubject           = {| r1 | r1 | r1 | r1 | }
bassSubject             = {| a4 g8[b] a4 b8[c] | d4 e8[c] d4 c8[d] | e8[f g f] e4 d8[c] | b8[g] a2 g8[fis8] | }

trebleCounterSubject    = {| e4 d8[fis] e4 fis8[g] | a4 b8[g]    a4 g8[a] | b8[c d c] b4 a8[g] | fis8[d] e2       b'8[a] |}
bassCounterSubject      = {| e2         c2         | d8[e fis g] fis2     | g2        b8[c]  d4~d8[fis]  e4. fis8 g8[a]  |}

trebleIntermediaAa      = {| b8[g fis e] d2          | a'8[b a fis e d] c4~   | c4 g'8[a g e d c] | b2 fis'8[g fis d] |}
bassIntermediaAa        = {| g2          fis8[e d e] | fis8[g] fis2     e8[d] | c8[d e fis] e2    | d8[c b c d e] d4~ |}

trebleIntermediaAb      = {| c8[b] a2  e'8[g] | e'2        d8[c b c] | d8[e] d2       c8[b] | a8[b c d] c2          |}
bassIntermediaAb        = {| d4 c8[b a b c d] | e8[c b a] g2         | d'8[e d b a g] fis4~ | fis4 c'8[d c a g fis] |}

trebleIntermediaAc      = {| b8[a g a b c] b4~   | b4      a8[g a fis e c] |} 
bassIntermediaAc        = {| e2      b'8[c b g]  | fis8[e] fis2 g8[a]      |}

trebleCounterSubjectIV  = {| d4 c8[e] d4 e8[f] | g4 a8[f]  g4 f8[g] | a8[bes c bes] a4 g8[f]    | e8[c] d4 e8[f g a] |}
bassCounterSubjectIV    = {| d,2       b2       | c8[d e f] e2      | f2            a8[bes] c4~ | c8[e] d2. |}

trebleIntermediaBa      = {| f4 bes8[a bes g a bes] | c1 |}
bassIntermediaBa        = {| r1 | r1 |}

trebleIntermediaBb      = {| e1 | r1 | r1 | r1 |}
bassIntermediaBb        = {| r1 | r1 | r1 | r1 |}

trebleCoda              = {| r1 | r1 | r1 | r1 |} 
bassCoda                = {| r1 | r1 | r1 | r1 |}

treble = \relative a' {
  \trebleSubject \break
  \trebleCounterSubject \break
  \trebleIntermediaAa \break
  \trebleIntermediaAb \break
  \trebleIntermediaAc \break
  \trebleCounterSubjectIV \break
  \trebleIntermediaBa \break
  \trebleIntermediaBb \break
  \trebleCoda \break
}
bass = \relative a, {
  \bassSubject \break
  \bassCounterSubject \break
  \bassIntermediaAa \break
  \bassIntermediaAb \break
  \bassIntermediaAc \break
  \bassCounterSubjectIV \break
  \bassIntermediaBa \break
  \bassIntermediaBb \break
  \bassCoda \break
}

\score {
  \midi {}
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