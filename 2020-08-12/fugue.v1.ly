\header {
  title = "Fugue №1"
  composer = "A. I. Yakunichev."
}

pianoMusic = \relative d'' {
  \new Voice {
    | r1^"Subject"                  | r1                |
    \break
    | a4^"Countersubject" e'8[c] f4 b,8[f] | e4^"II" g8[b d] e[f e] | % Subject transposed to V. Answer.
    \break
    | b8_"B"^"Episode 1"[c_"C" b_"B"] r r r r r                    | r1                | % Episode 1.1
    | r1                  | r1                | % Episode 1.2
  }
}

bassMusic = \relative d {
  \new Voice {
    | d4 a'8[e] bes'4 e,8[bes] | a4 c8[e g] a[bes a]  | % Subject
    \break
    | f8 c4. d8 a4.            | c8 g'4. b8[g8 a c]   | % Countersubject
    \break
    | g8^"G" d4.^"D" c8^"C"[e^"E" g^"G"] e^"E" | b1^"B" | % Episode 1.1
    | r1                       | r1                   | % Episode 1.2
  }
}

\score {
  \midi {}
  \new PianoStaff <<
    \new Staff = "Piano" <<
      \key d \minor
      \pianoMusic
    >>
    \new Staff = "Bass" <<
      \key d \minor
      \clef "bass"
      \bassMusic
    >>
  >>
}