\header {
  title = "Fugue №1"
  composer = "A. I. Yakunichev"
  tagline = ""
}

pianoMusic = \relative d'' {
  \new Voice {
    % -------------------- <Exposition> ---------------------
    | r1^"Subject" | r1 | r1 | r1 | \break
    | a4^"Countersubject" b8[c] d4 a8[g] | e4 b'8[c] d4 f4 | b,8[c d f] e4. b8 | f4 e d c | \break
    % -------------------- <\Exposition> --------------------

    % -------------------- <Episode 1> ----------------------
    | c16_"C"^"Episode №1"[d e g] f8._"F" d16[b_"B" f a] b4 c16 | g16_"G"[a b d] c8. b16[a] g8 c16[e] f8 g16 |
    | d'16_"D"[b f a] c16[d e f] e[d c b] g[e a c] | a8_"A"[f d] e2 a8 | \break
    % | r1 | r1 | r1 | r1 | \break
    % -------------------- </Episode 1> ---------------------

    % -------------------- <Subject IV> ---------------------
    | g4_"G"^"Subject IV" a8[bes] c4 g8[f] | d4_"D" a'8[bes] c4 ees4 | a,8_"A"[bes c ees] d4. a8 | ees4_"Eb" d c bes | \break
    % -------------------- </Subject IV> --------------------

    % -------------------- <Episode 2> ----------------------
    | r1^"Episode 2" | r1 | r1 | r1 | \break
    % | r1 | r1 | r1 | r1 | \break
    % -------------------- </Episode 2> ---------------------

    % ----------------------- <Coda> ------------------------
    | r1^"Coda" | r1 | r1 | r1 | d'1 |
    % ----------------------- <Coda> ------------------------
  }
}

bassMusic = \relative d {
  \new Voice {
    % -------------------- <Exposition> ---------------------
    | d4 e8[f] g4 d8[c] | a4 e'8[f] g4 bes4 | e,8[f g bes] a4. e8 | bes4 a g f | \break
    | c'2 b8 e4 b8 | g8[e] f2 a8[c] | d4 f8 a4 f8 d4 | a8[f c e] f2 | \break
    % -------------------- <\Exposition> --------------------

    % -------------------- <Episode 1> ---------------------
    | e'4^"E" d8^"D"[c] d4^"D" e8^"E"[f] | e1^"E" | r1 | r1 | \break
    % | r1 | r1 | r1 | r1 | \break
    % -------------------- </Episode 1> ---------------------

    % -------------------- <Subject IV> ---------------------
    | r1 | r1 | r1 | r1 | \break
    % -------------------- </Subject IV> --------------------

    % -------------------- <Episode 2> ----------------------
    | r1 | r1 | r1 | r1 | \break
    % | r1 | r1 | r1 | r1 | \break
    % -------------------- </Episode 2> ---------------------

    % ----------------------- <Coda> ------------------------
    | r1 | r1 | r1 | r1 | d'1 |
    % ----------------------- <Coda> ------------------------
  }
}

\score {
  \midi {}
  \new PianoStaff <<
    \new Staff = "Piano" <<
      \tempo 4 = 102
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