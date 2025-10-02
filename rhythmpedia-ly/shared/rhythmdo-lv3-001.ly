\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \voiceOne
        \time 9/8
        \partial 8
        do8 \bar "||"
        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8 do8 do8 do8 do8 do8 do8 \bar "||"
        do8 do8 do8
      }
      \new NullVoice = "aligner" {
        \relative do' {
          \voiceOne
          \partial 8
          do8

          do4. do4. do4.
          do4. do4. do4.
          do4. do4. do4.
          do4.
        }
      }
    >>

    \new Lyrics  \lyricsto "v" {
       % _
       \once \override LyricText.self-alignment-X = #LEFT
       \markup { 1 } \markup { ‖& } a
       \markup { 2 } \markup { |& } a
       \markup { 3 } \markup { |& } a
       \markup { 4 } \markup { |& } a
       \markup { 5 } \markup { |& } a
       \markup { 6 } \markup { |& } a
       \markup { 7 } \markup { |& } a
       \markup { 8 } \markup { |& } a
       \markup { 9 } \markup { |& } a
       \once \override LyricText.self-alignment-X = #LEFT
       \markup { 1 } \markup { ‖& } a
       _
    }
  >>
}
