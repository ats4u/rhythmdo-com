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
        \voiceOne
        \time 3/4
        \partial 4
        \override TupletBracket.bracket-visibility = ##t
        \autoBeamOff
        \tuplet 3/2 4 {
          \tuplet 3/1 8 { r4        do8  }
          \tuplet 3/1 8 { do8[ do8  do8] }
          \tuplet 3/1 8 { do8[ do8  do8] }
        }
        \tuplet-nine \tuplet-nine \tuplet-nine |
        \tuplet-nine \tuplet-nine \tuplet-nine |
        \tuplet-nine \tuplet-nine \tuplet-nine \bar "||"

        % \partial 4
        \tuplet-nine
      }

      \new NullVoice = "aligner" {
        \relative do' {
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
      }

    >>

    \new Lyrics  \lyricsto "aligner" {
       % _
       % _ _ _ _ % _ _ _ % _ _
       _
       _
       \markup {   a } \markup { | & } a

       \markup {   1 } \markup { | & } a
       \markup {   & } \markup { | & } a
       \markup {   a } \markup { | & } a

       \markup {   2 } \markup { | & } a
       \markup {   & } \markup { | & } a
       \markup {   a } \markup { | & } a

       \markup {   3 } \markup { | & } a
       \markup {   & } \markup { | & } a
       \markup {   a } \markup { | & } a

       \markup {   4 } \markup { | & } a
       \markup {   & } \markup { | & } a
       \markup {   a } \markup { | & } a

       \markup {   5 } \markup { | & } a
       \markup {   & } \markup { | & } a
       \markup {   a } \markup { | & } a

       \markup {   6 } \markup { | & } a
       \markup {   & } \markup { | & } a
       \markup {   a } \markup { | & } a

       \markup {   7 } \markup { | & } a
       \markup {   & } \markup { | & } a
       \markup {   a } \markup { | & } a

       \markup {   8 } \markup { | & } a
       \markup {   & } \markup { | & } a
       \markup {   a } \markup { | & } a

       \markup {   9 } \markup { | & } a
       \markup {   & } \markup { | & } a
       \markup {   a } \markup { | & } a

       \markup {   1 } \markup { | & } a
       \markup {   & } \markup { | & } a
       \markup {   a } \markup { | & } \markup { a | }
    }
  >>
}
