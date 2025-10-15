\include "lilypond-book-preamble.ly"
tuplet-three = \tuplet 3/2 {
  \tuplet 3/1 8 {
    \tuplet 3/1 8 {
      do8[ do8 do8]
    }
    \tuplet 3/1 8 {
      do8[ do8 do8]
    }
    \tuplet 3/1 8 {
      do8[ do8 do8]
    }
  }
  \tuplet 3/1 8 {
    \tuplet 3/1 8 {
      do8[ do8 do8]
    }
    \tuplet 3/1 8 {
      do8[ do8 do8]
    }
    \tuplet 3/1 8 {
      do8[ do8 do8]
    }
  }
  \tuplet 3/1 8 {
    \tuplet 3/1 8 {
      do8[ do8 do8]
    }
    \tuplet 3/1 8 {
      do8[ do8 do8]
    }
    \tuplet 3/1 8 {
      do8[ do8 do8]
    }
  }
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
        \override TupletBracket.bracket-visibility = ##t
        \override Staff.BarLine.bar-extent = #'(-2 . +2)
        \autoBeamOff % do this once per Voice, not per tuplet
        % \partial 8
        %                               do8 |
        \tuplet-three \break \tuplet-three \break \tuplet-three \break 
        \tuplet-three \break \tuplet-three \break \tuplet-three \break 
        \tuplet-three \break \tuplet-three \break \tuplet-three \break 
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
       \markup { |1  } - - & - - a - -
       \markup { |&  } - - & - - a - -
       \markup { |a  } - - & - - a - -

       \markup { |2  } - - & - - a - -
       \markup { |&  } - - & - - a - -
       \markup { |a  } - - & - - a - -

       \markup { |3  } - - & - - a - -
       \markup { |&  } - - & - - a - -
       \markup { |a  } - - & - - a - -

       \markup { |4  } - - & - - a - -
       \markup { |&  } - - & - - a - -
       \markup { |a  } - - & - - a - -

       \markup { |5  } - - & - - a - -
       \markup { |&  } - - & - - a - -
       \markup { |a  } - - & - - a - -

       \markup { |6  } - - & - - a - -
       \markup { |&  } - - & - - a - -
       \markup { |a  } - - & - - a - -

       \markup { |7  } - - & - - a - -
       \markup { |&  } - - & - - a - -
       \markup { |a  } - - & - - a - -

       \markup { |8  } - - & - - a - -
       \markup { |&  } - - & - - a - -
       \markup { |a  } - - & - - a - -

       \markup { |9  } - - & - - a - -
       \markup { |&  } - - & - - a - -
       \markup { |a  } - - & - - a - -

       \markup { |1  } - - & - - a - -
       _
    }

    \new Lyrics \lyricsto "aligner" {
        \markup { | w   } \markup { ʌ  } n
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { _  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        %

        \markup { | t   } \markup { uː} \markup { _ }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { _  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        %

        \markup { | θɹ } \markup { iː} \markup { _ }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { _  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        %

        \markup { | f   } \markup { ɔ  } ɹ
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { _  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        %

        \markup { | f   } \markup { aɪ } v
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { _  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        %

        \markup { | s   } \markup { ɪ  } ks
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { _  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        %

        \markup { | ˈs  } \markup { ɛ  } vən
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { _  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        %

        \markup { | ʔ   } \markup { eɪ } t
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { _  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        %

        \markup { | n   } \markup { aɪ } n
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        \markup { | _   } \markup { ə  } \markup { _  }
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        %

        \markup { | w   } \markup { ʌ  } n
        \markup { | _   } \markup { ə  } \markup { n  }
        \markup { | _   } \markup { ə  } \markup { _  }

        _ _
    }
  >>
}
