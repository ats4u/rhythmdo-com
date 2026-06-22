\include "lilypond-book-preamble.ly"
\include ".project-lilypond/lilypond-preamble.ly"

gone = { \tuplet 3/2 { do16   do16_~ do16] }  }
gtwo = { \tuplet 3/2 { do16_~ do16 do16] }  }
gthr = { \tuplet 3/2 { do16   do16 do16] }  }

\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "counting" {
        \voiceOne
        \time 3/4
        \partial 4
        \autoLineBreaksOff
        \override TupletBracket.bracket-visibility = ##t

        \tuplet 3/2 4 { r4 do8           }     % 1
        \bar "||"
        \tuplet 3/2 4 { do8[  do8 \gone  }     % 2
        \tuplet 3/2 4 { do8[  do8 \gthr  }     % 3
        \tuplet 3/2 4 { do8[  do8 \gone  }     % 4
        |
        \tuplet 3/2 4 { do8[  do8 \gone  }     % 5
        \tuplet 3/2 4 { do8[  do8 \gone  }     % 6
        \tuplet 3/2 4 { do8[  do8 \gthr  }     % 7
        |
        \tuplet 3/2 4 { do8[  do8 \gthr  }     % 8
        \tuplet 3/2 4 { do8[  do8 \gone  }     % 9
        \tuplet 3/2 4 { do8[  do8 \gone  }     % 1
        \bar "||"
        \tuplet 3/2 4 { do8[  do8 \gone  }
      }

      \new NullVoice = "aligner" {
        \voiceOne
        \time 3/4
        \partial 4
        r4

        do4  do4  do4
        do4  do4  do4
        do4  do4  do4
        do4
      }

      \new Lyrics \with { instrumentName = "" } \lyricsto "aligner" {
        _
        \markup { |1  }
        \markup { |2  }
        \markup { |3  }
        \markup { |4  }
        \markup { |5  }
        \markup { |6  }
        \markup { |7  }
        \markup { |8  }
        \markup { |9  }
        \markup { |1  }
        _
      }

      \new Lyrics \with { instrumentName = "" } \lyricsto "counting" {
                                                   \markup {     w   }
        \markup { | ʌ  } "-"   \markup {  n      } \markup {     t   }
        \markup { | uː} "-"   \markup {         } \markup {     θ  } \markup {  ɹ }
        \markup { | iː} "-"   \markup {         } \markup {     f   }
        \markup { | ɔ  } "-"   \markup {   ɹ     } \markup {     f   }
        \markup { | aɪ } "-"   \markup {   v     } \markup {     s   }
        \markup { | ɪ  } "-"   \markup {  k      } \markup {     s   } \markup {     s   }
        \markup { | ɛ  } "-"   \markup {   v     } \markup {     ə   } \markup {     n   }
        \markup { | eɪ } "-"   \markup {  t      } \markup {     n   }
        \markup { | aɪ } "-"   \markup {  n      } \markup {     w   }
        \markup { | ʌ  } n
           _ _
      }
    >>
  >>
}
