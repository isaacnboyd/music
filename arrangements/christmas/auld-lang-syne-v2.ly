\version "2.24.0"

\header {
  title = "Auld Lang Syne - Variation 2"
  arranger = "Arranged by Isaac Boyd"
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

pianoRight = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4

  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  \repeat volta 2 {
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  }
  \bar "|."
}

pianoLeft = \relative c {
  \clef bass
  \key f \major
  \time 4/4

  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  \repeat volta 2 {
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  }
  \bar "|."
}

accordionRight = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4

  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  \repeat volta 2 {
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  }
  \bar "|."
}

accordionLeft = \relative c {
  \clef bass
  \key f \major
  \time 4/4

  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  \repeat volta 2 {
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  }
  \bar "|."
}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Piano"
      midiInstrument = "acoustic grand"
    } <<
      \new Staff = "right" {
        \pianoRight
      }
      \new Staff = "left" {
        \pianoLeft
      }
    >>
    \new PianoStaff \with {
      instrumentName = "Accordion"
      midiInstrument = "accordion"
    } <<
      \new Staff = "right" {
        \accordionRight
      }
      \new Staff = "left" {
        \accordionLeft
      }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}

\markup {
  \fill-line {
    \column {
      \line { "Accordion does melody" }
      \line { "Guitar does harmony" }
      \line { "Piano does harmony" }
    }
  }
}
