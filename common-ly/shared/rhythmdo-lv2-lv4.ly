\include "lilypond-book-preamble.ly"
\include "common-ly/lilypond-preamble.ly"
tuplet-three = \tuplet 3/2 {
  \tuplet 3/1 8 { do8[ do8 do8] }
  \tuplet 3/1 8 { do8[ do8 do8] }
  \tuplet 3/1 8 { do8[ do8 do8] }
}
tuplet-nine = \tuplet 9/2 8 {
  do8[ do8 do8]
  do8[ do8 do8]
  do8[ do8 do8]
}

\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \voiceOne
        \time 3/4
        \partial 4
        \override TupletBracket.bracket-visibility = ##t
        \autoBeamOff % do this once per Voice, not per tuplet
        \tuplet 3/2 4 {
          r8
          \tuplet 3/1 8 {
            do8[ do8 do8]
          }
          \tuplet 3/1 8 {
            do8[ do8 do8]
          }
        }
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three \tuplet-three \tuplet-three
        \partial 4
        \tuplet 3/2 4 {
          \tuplet 3/1 8 {
            do8[ do8 do8]
          }
          \tuplet 3/1 8 {
            do8 r4
          }
          r8
        }
      }
      \new NullVoice = "aligner" {
        \voiceOne
        \time 3/4
        \partial 4
        \tuplet 9/2 4 { do8 do8 do8 do8 do8 do8 do8 do8 do8 }
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three
      }
    >>

    \new Lyrics \with { instrumentName = "" } \lyricsto "aligner" {
      % _
      _ _ _ % _ _ _ % _ _ _
      a - -
      \markup { |1  } - - & - - a - -
      \markup { |2  } - - & - - a - -
      \markup { |3  } - - & - - a - -
      \markup { |4  } - - & - - a - -
      \markup { |5  } - - & - - a - -
      \markup { |6  } - - & - - a - -
      \markup { |7  } - - & - - a - -
      \markup { |8  } - - & - - a - -
      \markup { |9  } - - & - - a - -
      \markup { |1  } - - & - - % a - -
      _
    }

    \new Lyrics \lyricsto "aligner" {
      _ _ %_ _ _ % _ _ _
      \markup { ʔ }
      \markup { | ə  } \markup { _   }
      \markup { w   } \markup { | ʌ  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }

      \markup { t   } \markup { | uː} \markup { _   }
      \markup { (w) } \markup { | ə  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }

      \markup { θɹ } \markup { | iː} \markup { _   }
      \markup { (y) } \markup { | ə  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }

      \markup { f   } \markup { | ɔ  } \markup { _   }
      \markup { ɹ   } \markup { | ə  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }

      \markup { f   } \markup { | aɪ } \markup { _   }
      \markup { v   } \markup { | ə  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }

      \markup { s   } \markup { | ɪ  } \markup { _   }
      \markup { ks  } \markup { | ə  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }

      \markup { ˈs  } \markup { | ɛ  } \markup { _   }
      \markup { vən } \markup { | ə  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }

      \markup { (r) } \markup { | eɪ } \markup { _   }
      \markup { t   } \markup { | ə  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }

      \markup { n   } \markup { | aɪ } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }

      \markup { w   } \markup { | ʌ  } \markup { _   }
      \markup { n   } \markup { | ə  } \markup { _   }
      \markup { n   } % \markup { | ə  } \markup { _   }

      _ _
    }
  >>
}
