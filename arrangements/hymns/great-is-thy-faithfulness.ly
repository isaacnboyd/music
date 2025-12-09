\version "2.24.1"

\header {
  title = "Great is Thy Faithfulness"
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
      <d b'>4 <d cis'>4 <d b'>4 | \break
      <d a'>4. <cis g'>8 <d fis>4 |
      <b e>4 <b dis fis>4 <b d gis>4 |
      <cis e a>2. | 
  <e g a>4 <e g b>4 <e g cis>4 | 
  <fis a d>4. <a cis>8 <g b>4  | \break
  <fis a>4 <e g>4 <d fis>4 |
  <d fis>4 <d e>2 | 
  <eis b'>4 <eis cis'>4 <eis d'>4 | 
  <fis a d>4. <fis a>8 <fis a>4 |
  <d fis>4 <cis fis>4 <a e'>  | \break
  <a d fis>2. | 
  <cis e a>4 <cis e a>4 <cis e>4 | 
  <d g>8. <d fis>16 <d fis>2 |
  <dis fis a b>4 <dis fis a b>4 <dis fis>4 |
  <cis e a>8. <cis e g>16 <cis e g>2 | \break
  <g' a>4 <g b>4 <g cis>4 | 
  <fis a d>4 <fis a>4 <f b>4 |
  <e cis'>4 <fis d'>4 <d b'>4 |
  <cis e a>2. | 
  <g' a>4 <g b>4 <g cis>4 | \break
  <fis d'>4. <a cis>8 <g b>4 | 
  <fis a>4 <e g>4 <d fis>4 |
  <d fis>4 <d e>2 | \break
  <eis b'>4 <eis cis'>4 <eis d'>4 | 
  <fis a d>4. <fis a>8 <fis a>4 |
  <d fis>4 <cis fis>4 <a e'>  |
  <a d fis>2. | 
 
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
      fis4._\markup { "_" } e8 a4 |
      gis4_\markup { "_" } a4 b4_\markup { "_" } |
      a2. |
      cis2. |
    a4 b4_\markup { "_" } cis4_\markup { "_" } |
    d2 a4 | 
    g2. 
    gis2.
  d2. |
  a'2 cis4_\markup { "_" } |
  d2. |
  a2 e4 |
  a2 d8 cis8_\markup { "_" } |
  b2_\markup { "_" } a4 |
  e2 cis'8_\markup { "_" } b8_\markup { "_" } |
  a2._\markup { "_" } |
  d2.  |
  a2 g4 |
  a2. |
  cis2._\markup { "_" } |
    a4 b4_\markup { "_" } cis4_\markup { "_" } |
    d2. 
    g,2. |
    gis2._\markup { "_" } |
  d'2. |
  a2 cis4_\markup { "_" } |
  d2. |
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
