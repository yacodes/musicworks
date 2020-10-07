\header {
  title = "Sonata No. 1"
  composer = "Aleksandr Yakunichev"
  tagline = ""
}

trebleSubject           = {| r1 | r1 | r1 | r1 |}
bassSubject             = {| r1 | r1 | r1 | r1 |}

treble = \relative b' {
  \trebleSubject \break
}
bass = \relative b, {
  \bassSubject \break
}

\score {
  % \midi {}
  \new PianoStaff <<
    \new Staff = "Piano" <<
      \tempo "Allegro"
      \key b \minor
      \treble
    >>
    \new Staff = "Bass" <<
      \key b \minor
      \clef "bass"
      \bass
    >>
  >>
}











