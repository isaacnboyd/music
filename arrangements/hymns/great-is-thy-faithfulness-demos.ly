\version "2.24.0"

\header {
  title = "Great is Thy Faithfulness Demos"
  composer = "Arranged by Isaac Boyd"
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

\score {
  \header {
    piece = "Demo 1"
  }
  \new PianoStaff <<
    \new Staff \relative c' {
      \clef treble
      \key d \major
      \time 3/4
      <d fis>4 <d fis>4 <d fis>4 |
      <d fis>4. <d e>8 <d e>4 |
      <cis g'>4 <d g>4 <e g>4 |
      <d g>4 <d fis>2 |
      <d b'>4 <d cis'>4 <d b'>4 |
      <d a'>4. <cis g'>8 <d fis>4 |
      e4 <dis fis>4 <d gis>4 |
      <cis e a>2. |
    }
    \new Staff \relative c' {
      \clef bass
      \key d \major
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
      g4 a4 g4 |
      <d d'>2. |
      gis4_\markup { "_" } <b b'>4^\markup { "M" } e,4 |
      <a a'>2. |
    }
  >>
  \layout { }
}

\score {
  \header {
    piece = "Demo 2"
  }
  \new PianoStaff <<
    \new Staff \relative c' {
      \clef treble
      \key d \major
      \time 3/4
      <d fis>4 <d fis>4 <d fis>4 |
      <d fis>4. <d e>8 <d e>4 |
      <cis g'>4 <d g>4 <e g>4 |
      <d g>4 <d fis>2 |
      <d b'>4 <d cis'>4 <d b'>4 |
      <d a'>4. <cis g'>8 <d fis>4 |
      e4 <dis fis>4 <d gis>4 |
      <cis e a>2. |
    }
    \new Staff \relative c' {
      \clef bass
      \key d \major
      \time 3/4
      d,,2. |
      g2. |
      a4 b4 cis4 |
      g4 d2 |
      g4 a4 g4 |
      fis4._\markup { "_" } a8 d,4 |
      gis4_\markup { "_" } a4 b4 |
      a2. |
    }
  >>
  \layout { }
}

\score {
  \header {
    piece = "Demo 3"
  }
  \new PianoStaff <<
    \new Staff \relative c' {
      \clef treble
      \key d \major
      \time 3/4
      <d fis>4 <d fis>4 <d fis>4 |
      <d fis>4. <d e>8 <d e>4 |
      <cis g'>4 <d g>4 <e g>4 |
      <d g>4 <d fis>2 |
      <d b'>4 <d cis'>4 <d b'>4 |
      <d a'>4. <cis g'>8 <d fis>4 |
      e4 <dis fis>4 <d gis>4 |
      <cis e a>2. |
    }
    \new Staff \relative c' {
      \clef bass
      \key d \major
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
    <<
    { r4 a'2^\markup { "7" } }
    \\
    { a,2. }
    >>
      g4 <d d'>2 |
    <<
    { r4 g'2^\markup { "M" } }
    \\
    { g,2. }
    >>      
    <<
    { r4 d'2^\markup { "M" } }
    \\
    { d,2. }
    >>           
    <<
    { r4 e'2^\markup { "7" } }
    \\
    { e,2. }
    >>           
    <a a'>2. |
    }
  >>
  \layout { }
}

\score {
  \header {
    piece = "Demo 4"
  }
  \new PianoStaff <<
    \new Staff \relative c' {
      \clef treble
      \key d \major
      \time 3/4
      <d fis>4 <d fis>4 <d fis>4 |
      <d fis>4. <d e>8 <d e>4 |
      <cis g'>4 <d g>4 <e g>4 |
      <d g>4 <d fis>2 |
      <d b'>4 <d cis'>4 <d b'>4 |
      <d a'>4. <cis g'>8 <d fis>4 |
      e4 <dis fis>4 <d gis>4 |
      <cis e a>2. |
    }
    \new Staff \relative c' {
      \clef bass
      \key d \major
      \time 3/4
      R2. |
      R2. |
      R2. |
      R2. |
      R2. |
      R2. |
      R2. |
      R2. |
    }
  >>
  \layout { }
}

\score {
  \header {
    piece = "Demo 5"
  }
  \new PianoStaff <<
    \new Staff \relative c' {
      \clef treble
      \key d \major
      \time 3/4
      <d fis>4 <d fis>4 <d fis>4 |
      <d fis>4. <d e>8 <d e>4 |
      <cis g'>4 <d g>4 <e g>4 |
      <d g>4 <d fis>2 |
      <d b'>4 <d cis'>4 <d b'>4 |
      <d a'>4. <cis g'>8 <d fis>4 |
      e4 <dis fis>4 <d gis>4 |
      <cis e a>2. |
    }
    \new Staff \relative c' {
      \clef bass
      \key d \major
      \time 3/4
      R2. |
      R2. |
      R2. |
      R2. |
      R2. |
      R2. |
      R2. |
      R2. |
    }
  >>
  \layout { }
}