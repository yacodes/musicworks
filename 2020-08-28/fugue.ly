\header {
  title = "Fugue #1"
  composer = "A. I. Yakunichev"
  tagline = ""
}

pianoMusic = \relative e'' {
  \new Voice {
    % -------------------- EXPOSITION -------------------- %
    | r1^"Subject" | r1 | r1 | r1 | \break
    | b4.^"Countersubject V" cis8 d4. fis8 | e4. d8[e fis g a] | fis4 e8[d cis] b[cis d] | e[cis] b2 g8[e] | \break
    % -------------------- EXPOSITION -------------------- %
    
    % -------------------- INTERMEDIA #1------------------ %
    | cis8^"Intermedia #1"[fis g] fis4. d8[cis] | b8[e fis] e4. cis8[b] | a[d e] d4. b8[a] | g[cis d] cis4. e8[d] | \break
    | gis4. fis8(e4.) g8 | fis4. e8(d4.) fis8 | e4. d8(cis4.) e8 | d4. c8(b4.) d8 | \break
    % -------------------- INTERMEDIA #1------------------ %

    % -------------------- COUNTERSUBJECT ---------------- %
    | a'8^"Countersubject IV"(g4.) f8(e4) g8 | f8[e] d2 c8[d] | e8[f e] b4 c8[e g] | \break
    % -------------------- COUNTERSUBJECT ---------------- %

    % -------------------- INTERMEDIA #2 ----------------- %
    | a8^"Intermedia #2"[f e f e c] b4 | b'8[g f g f d] c4 | e8 d4.~d8 c8[d e] | f8 e4.~e8 d8[e d] | \break
    % -------------------- INTERMEDIA #2 ----------------- %

    % -------------------- CODA ----------------- %
    | b'8^"Coda | Cadence V/ii"[cis d cis b a b fis] | e4^"Cadence I/V" a g fis | e8[fis g a b c] d4 | e1^"I/I"~e1 \break
    % -------------------- CODA ----------------- %
  }
}

bassMusic = \relative e {
  \new Voice {
    % -------------------- EXPOSITION -------------------- %
    | e4. fis8 g4. b8 | a4. g8[a b c d] | b4 a8[g fis] e[fis g] | a[fis] e2 cis8[a] | \break
    | b8(a4.) g8(fis4) a8 | g8[fis] e2 d8[e] | fis8[g fis] cis2 b8 | d4. e8 fis4. a8 | \break
    % -------------------- EXPOSITION -------------------- %

    % -------------------- INTERMEDIA #1 ----------------- %
    | gis4. fis8(e4.) g8 | fis4. e8(d4.) fis8 | e4. d8(cis4.) e8 | d4. cis8(b4.) d8 | \break
    | cis'8[fis g] fis4. d8[cis] | b8[e fis] e4. cis8[b] | a[d e] d4. b8[a] | g[cis d] c4. e8[d] | \break
    % -------------------- INTERMEDIA #1 ----------------- %

    % -------------------- COUNTERSUBJECT ---------------- %
    | a4. b8 c4. e8 | d4. c8[d e f g] | e4 d8[c b] a[b c] | \break 
    % -------------------- COUNTERSUBJECT ---------------- %

    % -------------------- INTERMEDIA #2 ----------------- %
    | c8 b4.~b8 a8[b c] | d8 c4.~c8 b8[c d] | c8[a g a g e] d4 | d'8[b a b a f] e[g] | \break
    % -------------------- INTERMEDIA #2 ----------------- %

    % -------------------- CODA ----------------- %
    | d4 g e fis | b8[cis d cis b a b fis] | b1 | e1~e1 | \break
    % -------------------- CODA ----------------- %
  }
}

\score {
  \midi {}
  \new PianoStaff <<
    \new Staff = "Piano" <<
      \tempo 4 = 102
      \key e \minor
      \pianoMusic
    >>
    \new Staff = "Bass" <<
      \key e \minor
      \clef "bass"
      \bassMusic
    >>
  >>
}