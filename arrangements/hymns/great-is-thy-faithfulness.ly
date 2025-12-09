\version "2.24.1"

\header {
  title = "Great is Thy Faithfulness"
  subtitle = "Arrangement for Accordion"
  composer = "Arranged by Isaac Boyd"
  tagline = ##f
}

accordionRight = \relative c' {
  \clef treble
  \key d \major
  \numericTimeSignature
  \time 3/4
  
      <d fis>4 <d fis>4 <d fis>4 |
      <d fis>4. <d e>8 <d e>4 |
    <<
    { g2. }
    \\
    { cis,4 d4 e4 }
    >>
      <d g>4 <d fis>2 |
      <d b'>4 <d cis'>4 <d b'>4 |
      <d a'>4. <cis g'>8 <d fis>4 |
      e4 <dis fis>4 <d gis>4 |
      <cis e a>2. |
  <g' a>4 <g b>4 <g cis>4 |
  <fis d'>4. <a cis>8 <g b>4  |
  <fis a>4 <e g>4 <d fis>4 |
  <d fis>4 <d e>2 |
  <eis b'>4 <eis cis'>4 <eis d'>4 |
  <fis d'>4. <fis a>8 <fis a>4 |
  <d fis>4 <cis fis>4 <a e'>  |
  <a d>2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
}

accordionLeft = \relative c' {
  \clef bass
  \key d \major
  \numericTimeSignature
  \time 3/4
  
    <<
    { r4 d,2^\markup { "M" } }
    \\
    { d,2. }
    >>
    <<
    { r4 g'2^\markup { "M" } }
    \\
    { g,2. }
    >>
      a4 b4 cis4 |
      g4 <d d'>2 |
    <<
    { r4 g'2^\markup { "M" } }
    \\
    { g,2. }
    >>
    fis4._\markup { "_" } a8 d,4 |
      gis4_\markup { "_" } <b b'>4^\markup { "M" } e,4 |
      <a a'>2. |
    <<
    { r4 a'2^\markup { "7" } }
    \\
    { a,2. }
    >>  
    a4 b4 cis4 |
    <<
    { r4 d2^\markup { "M" } }
    \\
    { d,2. }
    >>  
    <<
    { r4 g'2^\markup { "M" } }
    \\
    { g,2. }
    >>  
  <gis b'>2.^\markup { "m" }_\markup { "_" } | % Bm/G#
  <d d'>2.^\markup { "M" } |
  a'2. |
  <d d'>2.^\markup { "M" } |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
  r2. |
}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Accordion"
    } <<
      \new Staff = "right" \accordionRight
      \new Staff = "left" \accordionLeft
    >>
  >>
  
  \layout { }
  \midi {
    \tempo 4 = 90
  }
}
