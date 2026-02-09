\version "2.24.0"

\paper {
  #(set-paper-size "letter")
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.25\in
  right-margin = 0.25\in
  ragged-last-bottom = ##f
  system-system-spacing.basic-distance = #12
}

\header {
  title = "Stuff You Should Know Themes"
  tagline = ""
  composer = "Arrangements by Isaac Boyd"
}

themeOne = \new PianoStaff <<
  \new Staff {
    \clef treble
    \key g \major
    \time 4/4
    \relative c'' {
      b4~ b8 d8 b4 a4 |
      g4 a4 b4 g4 |
      e1 |
      <b d g>2 <c e g>2 |
      <d g b>1 |
    }
  }
  \new Staff {
    \clef bass
    \key g \major
    \time 4/4
    g,2 fis,2 |
    e,4 fis,4 g,4 d,4 |
    c,1 |
    g,2 c,2 |
    g,1 |
  }
>>

themeTwo = \new PianoStaff <<
  \new Staff {
    \clef treble
    \key g \major
    \time 4/4
    \relative c'' {
      <d, b'>4~ <d b'>8 <g d'>8 <d b'>4 <d a'>4 |
      <e g>4 <fis a>4 <g b>4 <e g>4 |
      <c e g>1 |
      <b d g>2 <c e g>2 |
      <d g b>1 |
    }
  }
  \new Staff {
    \clef bass
    \key g \major
    \time 4/4
    g,2 fis,2 |
    c,4 d,4 e,2 |
    c,1 |
    g,2 c,2 |
    g,1 |
  }
>>

themeThree = \new PianoStaff <<
  \new Staff {
    \clef treble
    \key g \major
    \time 4/4
    \relative c'' {
      <g b>2. <b d>4 |
      <g b>2 <fis a>2 |
      <d g>2 <fis a>2 |
      <g b>2 <d g>2 |
      <c e g>1~ |
      <c e g>1 |
      <b d g>1 |
      <a c fis>1 |
      <b d g>1 |
      <b d g>4 r2. |

    }
  }
  \new Staff {
    \clef bass
    \key g \major
    \time 4/4
    g,4 g4 d,4 g4 |
    g,4 g4 d,4 g4 |
    g,4 g4 d,4 g4 |
    g,4 g4 d,4 g4 |
    c,4 c4 g,4 c4 |
    c,4 c4 g,4 c4 |
    g,4 g4 d,4 g4 |
    c,4 d,4 e,4 fis,4 |
    g,4 g4 d,4 g4 |
    <g, g>4 r2.
  }
>>

themeFour = \new PianoStaff <<
  \new Staff {
    \clef treble
    \key g \major
    \time 4/4
    \relative c'' {
      <g b>8 <b d>4 <a c>8 <g b>4 <fis a>4 |
      <d g>4 <fis a>4 <g b>4 <d g>4 |
      <c e g>1 |
      <b d g>8 <b d g>2.~ <b d g>8 |
      <a c fis>1 |
      <b d g>8 <b d g>2.~ <b d g>8 |
      <b d g>4 r2. |

    }
  }
  \new Staff {
    \clef bass
    \key g \major
    \time 4/4
    g,4 g4 d,4 g4 |
    g,4 g4 d,4 g4 |
    c,4 c4 g,4 c4 |
    g,4 g4 d,4 g4 |
    c,4 d,4 e,4 fis,4 |
    g,4 g4 d,4 g4 |
    <g, g>4 r2.
  }
>>

themeFive = \new PianoStaff <<
  \new Staff {
    \clef treble
    \key g \major
    \time 3/4
    \relative c'' {
    b2 d4 |
    b2 a4 |
    g2 a4 |
    b2 g4 |
    e2.~ |
    e2. |
    g2. |
    e2 d4|
    g2. |
    }
  }
  \new Staff {
    \clef bass
    \key g \major
    \time 3/4
    g,4 g4 g4 |
    g,4 g4 g4 |
    e,4_\markup { "_" } g4 g4 |
    e,4_\markup { "_" } g4 g4 |
    c,4 c4 c4 |
    c,4 c4 c4 |
    g,4 g4 g4 |
    d,4^\markup { "7" } d4 d4 |
    g,4 g4 g4 |
  }
>>


\score {
  \header {
    piece = "Theme 1 - Clarinet with treble bass"
  }
  \themeOne
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}

\score {
  \header {
    piece = "Theme 2 - Clarinet with treble bass"
  }
  \themeTwo
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}

\score {
  \header {
    piece = "Theme 3 - Polka"
  }
  \themeThree
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}

\score {
  \header {
    piece = "Theme 4 - Polka"
  }
  \themeFour
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}

\score {
  \header {
    piece = "Theme 5 - Waltz"
  }
  \themeFive
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}

