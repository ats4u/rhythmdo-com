
\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \voiceOne
        \time 9/8
        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8 do8 do8 do8 do8 do8 do8 \bar "||"

        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8 do8 do8 do8 do8 do8 do8 |
        do8 do8 do8 do8 do8 do8 do8 do8 do8 \bar "||"

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
          do4. do4. do4.
          do4. do4. do4.
          do4. do4. do4.
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
       \markup { |& } & a
       \markup { |a } & a

       \markup { |2 } & a
       \markup { |& } & a
       \markup { |a } & a

       \markup { |3 } & a
       \markup { |& } & a
       \markup { |a } & a

       \markup { |4 } & a
       \markup { |& } & a
       \markup { |a } & a

       \markup { |5 } & a
       \markup { |& } & a
       \markup { |a } & a

       \markup { |6 } & a
       \markup { |& } & a
       \markup { |a } & a

       \markup { |7 } & a
       \markup { |& } & a
       \markup { |a } & a

       \markup { |8 } & a
       \markup { |& } & a
       \markup { |a } & a

       \markup { |9 } & a
       \markup { |& } & a
       \markup { |a } & a

       \markup { |1 } & a
       \markup { |& } & a
       \markup { |a } & a
       _
    }
  >>
}
