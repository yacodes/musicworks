\header {
  title = "Fugue #2"
  composer = "A. I. Yakunichev"
  tagline = ""
}

trebleSubject        = {| r1 | r1 | r1 | r1 | }
bassSubject          = {| a4 g8[b] a4 b8[c] | d4 e8[c] d4 c8[d] | e8[f g f] e4 d8[c] | b8[g] a2 g8[fis8] | }

trebleCounterSubject = {| e4 d8[fis] e4 fis8[g] | a4 b8[g] a4   g8[a] | b8[c d c] b4 a8[g] | fis8[d] e2.  |}
bassCounterSubject   = {| e2         c2         | d1                  | g2        b2       |         e1  |}

trebleSequenceV      = { | r1 | r1 | r1 | r1 | }
bassSequenceV        = { | r1 | r1 | r1 | r1 | }

treble = \relative a' {
  \trebleSubject \break
  \trebleCounterSubject \break
  \trebleSequenceV \break
}
bass = \relative a, {
  \bassSubject \break
  \bassCounterSubject \break
  \bassSequenceV \break
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