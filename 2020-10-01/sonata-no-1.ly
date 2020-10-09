\header {
  title = "Sonata No. 1"
  composer = "Aleksandr Yakunichev"
  tagline = ""
}

trebleTheme           = {| c4 e8[b] c4 g'8[a] | d,4 f8 d4 d8 f8[g] | a4 e8[a c a e a] | g1 |} % T -> S -> D -> T
bassTheme             = {| r1 | r1 | r1 | r1 |}

trableTransition      = {| r1 | r1 |}
bassTransition        = {| r1 | r1 |}

treble = \relative c' {
  \trebleTheme \break
  \trableTransition \break
}
bass = \relative c, {
  \bassTheme \break
  \bassTransition \break
}

\score {
  \midi {}
  \new PianoStaff <<
    \new Staff = "Piano" <<
      \tempo "Allegro"
      \key c \major
      \treble
    >>
    \new Staff = "Bass" <<
      \key c \major
      \clef "bass"
      \bass
    >>
  >>
}
