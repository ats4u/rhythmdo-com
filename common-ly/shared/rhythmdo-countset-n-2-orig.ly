\include "lilypond-book-preamble.ly"
\include "common-ly/lilypond-preamble.ly"
three = \tuplet 3/2 { do8[ do8 do8] }
tuplet-three= \tuplet 3/2 {
  \override TupletBracket.bracket-visibility = ##t
  \autoBeamOff
  do8[ do8 do8]
}

\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \voiceOne
        \time 3/4
        \partial 4
        \once \override TupletBracket.bracket-visibility = ##t
        \autoBeamOff % do this once per Voice, not per tuplet
        r4
        \tuplet-three \tuplet-three \tuplet-three \bar "|"
        \tuplet-three \tuplet-three \tuplet-three \bar "|"
        \tuplet-three \tuplet-three \tuplet-three \bar "||"
        \tuplet-three
      }

      \new NullVoice = "aligner" {
        \relative do' {
          \voiceOne
          \partial 4
          % do8
          r4
          \three \three \three
          \three \three \three
          \three \three \three
          \three
        }
      }
    >>

    \new Lyrics  \lyricsto "aligner" {
       % _
       \markup { | 1 } & a
       \markup { | 2 } & a
       \markup { | 3 } & a
       \markup { | 4 } & a
       \markup { | 5 } & a
       \markup { | 6 } & a
       \markup { | 7 } & a
       \markup { | 8 } & a
       \markup { | 9 } & a
       \markup { | 1 } & a
       _
    }
  >>
}
