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
        \tuplet 3/2 4 { r4 \tuplet 3/1 8 { r4 do8] }  }
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three
      }
      \new NullVoice = "aligner" {
        \relative do' {
          \voiceOne
          \time 3/4
          \partial 4
          \tuplet 9/2 4 { do8 do8 do8 do8 do8 do8 do8 do8 do8 }
          \tuplet-three \tuplet-three \tuplet-three
          \tuplet-three \tuplet-three \tuplet-three
          \tuplet-three \tuplet-three \tuplet-three
          \tuplet-three
        }
      }
    >>

    \new Lyrics \with { instrumentName = "" } \lyricsto "aligner" {
      % _
      _ _ _ _ _ _ _ _ _
      \markup { |1  } - - & - - a - -
      \markup { |2  } - - & - - a - -
      \markup { |3  } - - & - - a - -
      \markup { |4  } - - & - - a - -
      \markup { |5  } - - & - - a - -
      \markup { |6  } - - & - - a - -
      \markup { |7  } - - & - - a - -
      \markup { |8  } - - & - - a - -
      \markup { |9  } - - & - - a - -
      \markup { |1  } - - & - - a - -
      _
    }

    \new Lyrics \lyricsto "aligner" {
      _ _ _ _ _ _ _ _
      \markup { w   } \markup { | ʌ  } n
      \markup { _   } \markup { | ə  } \markup { n  }
      \markup { _   } \markup { | ə  } \markup { _  }

      \markup { t   } \markup { | uː} \markup { _ }
      \markup { _   } \markup { | ə  } \markup { n  }
      \markup { _   } \markup { | ə  } \markup { _  }

      \markup { θɹ } \markup { | iː} \markup { _ }
      \markup { _   } \markup { | ə  } \markup { n  }
      \markup { _   } \markup { | ə  } \markup { _  }

      \markup { f   } \markup { | ɔ  } ɹ
      \markup { _   } \markup { | ə  } \markup { n  }
      \markup { _   } \markup { | ə  } \markup { _  }

      \markup { f   } \markup { | aɪ } v
      \markup { _   } \markup { | ə  } \markup { n  }
      \markup { _   } \markup { | ə  } \markup { _  }

      \markup { s   } \markup { | ɪ  } ks
      \markup { _   } \markup { | ə  } \markup { n  }
      \markup { _   } \markup { | ə  } \markup { _  }

      \markup { ˈs  } \markup { | ɛ  } vən
      \markup { _   } \markup { | ə  } \markup { n  }
      \markup { _   } \markup { | ə  } \markup { _  }

      \markup { ʔ   } \markup { | eɪ } t
      \markup { _   } \markup { | ə  } \markup { n  }
      \markup { _   } \markup { | ə  } \markup { _  }

      \markup { n   } \markup { | aɪ } n
      \markup { _   } \markup { | ə  } \markup { n  }
      \markup { _   } \markup { | ə  } \markup { _  }

      \markup { w   } \markup { | ʌ  } n
      \markup { _   } \markup { | ə  } \markup { n  }
      \markup { _   } \markup { | ə  } \markup { _  }

      _ _
    }
  >>
}
