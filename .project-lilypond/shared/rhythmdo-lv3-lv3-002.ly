% \include "lilypond-book-preamble.ly"
\include ".project-lilypond/lilypond-preamble.ly"
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
        \partial 4

        \tuplet 3/2 {
          r4
          \tuplet 3/1 8 {
            r8
            \tuplet 3/1 8 {
              r4 do8
            }
            \tuplet 3/1 8 {
              do8[ do8 do8]
            }
          }
        }
        \tuplet-three \break \tuplet-three \break \tuplet-three \break 
        \tuplet-three \break \tuplet-three \break \tuplet-three \break 
        \tuplet-three \break \tuplet-three \break \tuplet-three \break 
        \tuplet-three
      }
      \new NullVoice = "aligner" {
        \voiceOne
        \partial 4
        \tuplet 3/2 {
          r4
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
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three \tuplet-three \tuplet-three
        \tuplet-three
      }
    >>

    \new Lyrics \with { instrumentName = "" } \lyricsto "aligner" {
       _ _ _ _ _ _ % _ _ _
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
        _ _ _ _ _ % _ _ _
        \markup { w   } \markup {  |ʌ  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { (n) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        %

        \markup { t   } \markup {  |uː} \markup { _ }
        \markup { (w) } \markup {  |ə  } \markup { n  }
        \markup { _   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { (n) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        %

        \markup { θɹ } \markup {  |iː} \markup { _ }
        \markup { (y) } \markup {  |ə  } \markup { n  }
        \markup { _   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { (n) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        %

        \markup { f   } \markup {  |ɔ  } \markup { _  }
        \markup { ɹ   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { (n) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        %

        \markup { f   } \markup {  |aɪ } \markup { _  }
        \markup { v   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { (n) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        %

        \markup { s   } \markup {  |ɪ  } \markup { _ }
        \markup { ks  } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { (n) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        %

        \markup { ˈs  } \markup {  |ɛ  } \markup { _ }
        \markup { vən } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { (n) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        %

        \markup { (r) } \markup {  |eɪ } \markup { _  }
        \markup { t   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { (n) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        %

        \markup { n   } \markup {  |aɪ } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        \markup { (r) } \markup {  |ə  } \markup { _  }
        \markup { (n) } \markup {  |ə  } \markup { _  }
        \markup { n   } \markup {  |ə  } \markup { _  }

        %

        \markup { w   } \markup {  |ʌ  } \markup { n  }
        \markup { _   } \markup {  |ə  } \markup { n  }
        \markup { _   } \markup {  |ə  } \markup { _  }

        _ _
    }
  >>
}
