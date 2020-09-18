\header {
  title = "Fugue #2"
  composer = "A. I. Yakunichev"
  tagline = ""
}

trebleSubject = {| r1^"Subject" | r1 | r1 | r1 | \break | r1 | }
bassSubject = {| a4 g8[e] g4 a8[f] | d4 f8[g a] g4 f8 | e1 | a,1 | \break | r1 | }

treble = \relative a' { \trebleSubject }
bass = \relative a { \bassSubject }

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