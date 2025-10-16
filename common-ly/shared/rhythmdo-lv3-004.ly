\include "lilypond-book-preamble.ly"
\include "common-ly/lilypond-preamble.ly"
nine = \tuplet 9/2 { do8[ do8 do8 do8 do8 do8 do8 do8 do8] }
nine-end = \tuplet 9/2 { do8[ do8 do8 do8] s4 s4 }

tuplet-nine =
        \tuplet 3/1 {
          \override TupletBracket.bracket-visibility = ##t
          \autoBeamOff
          \tuplet 3/2 { do8[ do8 do8] } \tuplet 3/2 { do8[ do8 do8] } \tuplet 3/2 { do8[ do8 do8] }
        }

tuplet-nine-end =
        \tuplet 3/1 {
          \override TupletBracket.bracket-visibility = ##t
          \autoBeamOff
          \tuplet 3/2 { do8[ do8 do8] } s4 s4
        }

\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \override TupletBracket.bracket-visibility = ##t
        \autoBeamOff
        \voiceOne
        \time 3/4
        \partial 4
        \tuplet 3/2 4 {
          \tuplet 3/1 { r8   do8[ do8] }
          \tuplet 3/1 { do8[ do8  do8] }
          \tuplet 3/1 { do8[ do8  do8] }
        }
        \tuplet-nine \tuplet-nine \tuplet-nine \bar "|"  \break
        \tuplet-nine \tuplet-nine \tuplet-nine \bar "|"  \break
        \tuplet-nine \tuplet-nine \tuplet-nine \bar "||"

        % \partial 4
        \tuplet-nine
      }

      \new NullVoice = "aligner" {
        \voiceOne
        \partial 4
        \nine

        \nine
        \nine
        \nine

        \nine
        \nine
        \nine

        \nine
        \nine
        \nine

        % \partial 4
        \nine
      }
    >>

    \new Lyrics  \lyricsto "aligner" {
      _ % _ _ _ % _ _ _   _ _
      \markup { a }
      \markup { | a } & a
      \markup { | 1 } & a
      \markup { | & } & a
      \markup { | a } & a

      \markup { | 2 } & a
      \markup { | & } & a
      \markup { | a } & a

      \markup { | 3 } & a
      \markup { | & } & a
      \markup { | a } & a

      \markup { | 4 } & a
      \markup { | & } & a
      \markup { | a } & a

      \markup { | 5 } & a
      \markup { | & } & a
      \markup { | a } & a

      \markup { | 6 } & a
      \markup { | & } & a
      \markup { | a } & a

      \markup { | 7 } & a
      \markup { | & } & a
      \markup { | a } & a

      \markup { | 8 } & a
      \markup { | & } & a
      \markup { | a } & a

      \markup { | 9 } & a
      \markup { | & } & a
      \markup { | a } & a

      \markup { | 1 } & a
      \markup { | & } & a
      \markup { | a } & \markup { a | }
    }
  >>
}

