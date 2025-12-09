\version "2.24.1"

\header {
  title = "Fairest Lord Jesus"
  subtitle = "Arrangement for Accordion"
  composer = "Arranged by Isaac Boyd"
  tagline = ##f
}

accordionRight = \relative c' {
  \clef treble
  \key f \major
  \numericTimeSignature
  \time 4/4
  
  <f c'>2 <f d'>4 <f c'>4 |
  <<
    { c'4 a4 <g bes>2 }
    \\
    { fis2 s2 }
  >>
  <d bes'>2 <d c'>4 <d bes'>4 |
  <<
    { bes'4 g4 <f a>4 <f a>4 }
    \\
    { e2 s2 }
  >>
  <f a>4 <f a>4 <f c'>4 <f bes>4 |
  <f a>2 <e g c>2 |
  <c f a>1 \bar "||"
  \repeat volta 2 {
  <c f>2 <c f>4 <c f>4 |
  <d g>4 <c e>4 <c f>2 |
  <f a>4. <f a>8 <fis a>4 <fis a>4   |
  <g bes>4 <e g>4 <f a>2 |
  <f c'>2 <f f'>4 <f d'>4 |
  <f c'>2 <g bes>4 <f a>4 |
  <e bes'>2 <f a>2 |
  <e c'>1 |
  <f c'>2 <f d'>4 <f c'>4 |
  <<
    { c'4 a4 <g bes>2 }
    \\
    { fis2 s2 }
  >>
  <d bes'>2 <d c'>4 <d bes'>4 |
  <<
    { bes'4 g4 <f a>4 <f a>4 }
    \\
    { e2 s2 }
  >>
  <f a>4 <f a>4 <f c'>4 <f bes>4 |
  <f a>2 <e g c>2 |
  <a c f>1 |
  }
}

accordionLeft = \relative c {
  \clef bass
  \key f \major
  \numericTimeSignature
  \time 4/4
  
  f,2 bes4 f4 |
  d'2 g,2 |
  g1 |
  bes2 f2 |
  c2 d2 |
  c2 bes'2 |
  f1 \bar "||"
  \repeat volta 2 {
  f1 |
  bes4 c,4 f2 |
  f2 d2 |
  bes'4 c4 f,2 |
  f2 bes2 |
  f2 g4 f4 |
  bes2 f2 |
  c4 bes'4 a4_\markup { "_" } g4 |
  f2 bes4 f4 |
  d'2 g,2 |
  g1 |
  bes2 f2 |
  c2 d2 |
  c2 bes'2 |
  f1
  }
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
