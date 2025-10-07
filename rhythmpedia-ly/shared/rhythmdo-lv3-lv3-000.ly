\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \voiceOne
        \time 9/8
        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8
      }
      \new NullVoice = "aligner" {
        \relative do' {
          \voiceOne
          % \partial 8
          % do8

          do4. do4. do4.
          do4. do4. do4.
          do4. do4. do4.
          do4.
        }
      }
    >>

    \new Lyrics  \lyricsto "v" {
       % _
       \markup { |1 } & a
       \markup { |2 } & a
       \markup { |3 } & a
       \markup { |4 } & a
       \markup { |5 } & a
       \markup { |6 } & a
       \markup { |7 } & a
       \markup { |8 } & a
       \markup { |9 } & a
       \markup { |1 } & a
       _
    }
  >>
}
