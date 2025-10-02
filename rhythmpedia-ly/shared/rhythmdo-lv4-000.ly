\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \voiceOne
        \time 9/8
        \partial 4
        do8 do8 \bar "||"
        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8 do8 do8 do8 do8 do8 do8 \bar "||"
        do8
      }
      \new NullVoice = "aligner" {
        \relative do' {
          \voiceOne
          \partial 4
          do8 do8

          do4. do4. do4.
          do4. do4. do4.
          do4. do4. do4.
          do4.
        }
      }
    >>

    \new Lyrics  \lyricsto "v" {
       % _
       a \markup { 1 }
       \once \override LyricText.self-alignment-X = #RIGHT
       \markup { ‖& } a
       \markup { 2 } \markup {  |& } a
       \markup { 3 } \markup {  |& } a
       \markup { 4 } \markup {  |& } a
       \markup { 5 } \markup {  |& } a
       \markup { 6 } \markup {  |& } a
       \markup { 7 } \markup {  |& } a
       \markup { 8 } \markup {  |& } a
       \markup { 9 } \markup {  |& } a
       \markup { 1 }
       \once \override LyricText.self-alignment-X = #RIGHT
       \markup { ‖& }
       _
    }
  >>
}
