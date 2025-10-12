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
        % \partial 8
        %                               do8 |
        \once \override TupletBracket.bracket-visibility = ##t
        \autoBeamOff % do this once per Voice, not per tuplet
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three
      }
      \new NullVoice = "aligner" {
        \relative do' {
          \voiceOne
          % \partial 8
          % do8
          \tuplet-three \tuplet-three \tuplet-three
          \tuplet-three \tuplet-three \tuplet-three
          \tuplet-three \tuplet-three \tuplet-three
          \tuplet-three
        }
      }
    >>

    \new Lyrics \with { instrumentName = "" } \lyricsto "aligner" {
       % _
       \markup { |1  } - - - - - - - -
       \markup { |2  } - - - - - - - -
       \markup { |3  } - - - - - - - -
       \markup { |4  } - - - - - - - -
       \markup { |5  } - - - - - - - -
       \markup { |6  } - - - - - - - -
       \markup { |7  } - - - - - - - -
       \markup { |8  } - - - - - - - -
       \markup { |9  } - - - - - - - -
       \markup { |1  } - - - - - - - -
       _
    }

    \new Lyrics \lyricsto "aligner" {
        \markup { | w   } \markup { ʌ  } n
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | t   } \markup { uː} \markup { _ }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | θɹ } \markup { iː} \markup { _ }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | f   } \markup { ɔ  } ɹ
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | f   } \markup { aɪ } v
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | s   } \markup { ɪ  } ks
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | ˈs  } \markup { ɛ  } vən
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | ʔ   } \markup { eɪ } t
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | n   } \markup { aɪ } n
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | w   } \markup { ʌ  } n
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        _ _
    }
  >>
}
