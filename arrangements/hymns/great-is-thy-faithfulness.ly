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
  
      <a d fis>4 <a d fis>4 <a d fis>4 |
      <b d fis>4. <b d e>8 <b d e>4 |
    <<
    { g'2. }
    \\
    { cis,4 d4 e4 }
    >>
      <d g>4 <d fis>2 |
      <d b'>4 <d cis'>4 <d b'>4 |
      <d a'>4. <cis g'>8 <d fis>4 |
      <b e>4 <b dis fis>4 <b d gis>4 |
      <cis e a>2. |
  <e g a>4 <e g b>4 <e g cis>4 |
  <fis a d>4. <a cis>8 <g b>4  |
  <fis a>4 <e g>4 <d fis>4 |
  <d fis>4 <d e>2 |
  <eis b'>4 <eis cis'>4 <eis d'>4 |
  <fis a d>4. <fis a>8 <fis a>4 |
  <d fis>4 <cis fis>4 <a e'>  |
  <a d fis>2. |
  <cis a'>4 <cis a'>4 <cis e>4 |
  <d g>8. <d fis>16 <d fis>2 |
  <dis b'>4 <dis b'>4 <dis fis>4 |
  <e a>8. <e g>16 <e g>2 |
  <g a>4 <g b>4 <g cis>4 |
  <fis d'>4 <fis a>4 <f b>4 |
  <e cis'>4 <fis d'>4 <d b'>4 |
  <cis a'>2. |
  <g' a>4 <g b>4 <g cis>4 |
  <fis d'>4. <a cis>8 <g b>4 |
  <fis a>4 <e g>4 <d fis>4 |
  <d fis>4 <d e>2 |
  <eis b'>4 <eis cis'>4 <eis d'>4 |
  <fis d>4. <fis a>8 <fis a>4 |
  <d fis>4 <cis g'>4 <a cis>4 |
  <a d>2.
}

accordionLeft = \relative c' {
  \clef bass
  \key d \major
  \numericTimeSignature
  \time 3/4
  
      d,,2. |
      g2. |
      a4 b4_\markup { "_" } cis4_\markup { "_" } |
      b4_\markup { "_" } a2 |
      g4 a4 g4 |
      fis4._\markup { "_" } e8^\markup { "'A' or 'E'" } a4 |
      gis4_\markup { "_" } a4 b4 |
      a2. |
      cis2. |
    a4 b4 cis4 |
    d,2. 
    g2. 
    gis2.
  d2. |
  a'2 cis4 |
  d,2. |
  <a' a'>2.^\markup { "M" } |
  <d, d'>2^\markup { "M" } d8 cis8 |
  <b' b'>2.^\markup { "7" } |
  <a a'>2^\markup { "m"} cis8 b8 |
  <a a'>2.^\markup { "7"} |
  r2. |
  r2. |
  r2. |
  cis2. |
    a4 b4 cis4 |
    d,2. 
    g2. |
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

\markup {
  \vspace #2
  \column {
    \line { \bold "Questions:" }
    \vspace #0.5
    \line { • How to know where to put notes on bass clef d'2 vs d,2? Measure 16 for example.}
    \line { • With all of these hymns sometimes the bass is louder than the right hand, for example measure 13.}

  }
}