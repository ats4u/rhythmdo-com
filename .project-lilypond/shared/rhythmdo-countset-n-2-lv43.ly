\include "lilypond-book-preamble.ly"
\include ".project-lilypond/lilypond-preamble.ly"
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
        \tuplet 3/2 {
          \override TupletBracket.bracket-visibility = ##t
          \autoBeamOff
          r8 do8[ do8]
        }
        \tuplet-three \tuplet-three \tuplet-three \bar "|"
        \once \override TupletBracket.bracket-visibility = ##t
        \autoBeamOff % do this once per Voice, not per tuplet
        \tuplet-three \tuplet-three \tuplet-three \bar "|"
        \tuplet-three \tuplet-three \tuplet-three \bar "||"
        \tuplet-three
      }

      \new NullVoice = "aligner" {
        \voiceOne
        \time 3/4
        \partial 4
        % do8
        \three
        \three \three \three
        \three \three \three
        \three \three \three
        \three
      }
    >>

    \new Lyrics  \lyricsto "aligner" {
       % _
         _ % _ % _
       a
       \markup {   1 } \markup{ | & } a
       \markup {   2 } \markup{ | & } a
       \markup {   3 } \markup{ | & } a
       \markup {   4 } \markup{ | & } a
       \markup {   5 } \markup{ | & } a
       \markup {   6 } \markup{ | & } a
       \markup {   7 } \markup{ | & } a
       \markup {   8 } \markup{ | & } a
       \markup {   9 } \markup{ | & } a
       \markup {   1 } \markup{ | & } a
       _
    }
  >>
}
