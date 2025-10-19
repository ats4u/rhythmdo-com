\include "lilypond-book-preamble.ly"
\include "common-ly/lilypond-preamble.ly"

three-tuplet =
  \tuplet 3/2 4 {
    do8[ do8 do8]
  }

\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \voiceOne
        \time 3/4
        \override TupletBracket.bracket-visibility = ##t
        \autoBeamOff
        \partial 4
        \tuplet 3/2 4 {
          r4 do8
        }
        \three-tuplet \three-tuplet \three-tuplet |
        \three-tuplet \three-tuplet \three-tuplet |
        \three-tuplet \three-tuplet \three-tuplet |
        \three-tuplet
      }
      \new NullVoice = "aligner" {
        \voiceOne
        \time 3/4
        \partial 4
        do4

        do4 do4 do4
        do4 do4 do4
        do4 do4 do4
        do4
      }
    >>

    \new Lyrics \with { instrumentName = "" } \lyricsto "aligner" {
       \set ignoreMelismata = ##t   % <-- crucial
       %
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

    \new Lyrics \lyricsto "v" {
        \set ignoreMelismata = ##t   % <-- crucial
        %                     \markup { -     }
        \markup { o       } \markup { | -     }  ne
        \markup { tw      } \markup { | -     }  o
        \markup { thr     } \markup { | -     }  ee
        \markup { f       } \markup { | -     }  our
        \markup { f       } \markup { | -i    }  ve
        \markup { s       } \markup { | -i    }  x
        \markup { s       } \markup { | -eve   }  n
        \markup { ʔ       } \markup { | eigh  }  t
        \markup { n       } \markup { | -i    }  ne
        \markup { o       } \markup { | -     }  ne
        _ _
    }

    \new Lyrics \lyricsto "v" {
        \set ignoreMelismata = ##t   % <-- crucial
        \markup {   w   } \markup { | ʌ  } n
        \markup {   t   } \markup { | uː} \markup { _ }
        \markup {   θɹ } \markup { | iː} \markup { _ }
        \markup {   f   } \markup { | ɔ  } ɹ
        \markup {   f   } \markup { | aɪ } v
        \markup {   s   } \markup { | ɪ  } ks
        \markup {   ˈs  } \markup { | ɛ  } vən
        \markup {   ʔ   } \markup { | eɪ } t
        \markup {   n   } \markup { | aɪ } n
        \markup {   w   } \markup { | ʌ  } n
        _ _
    }
  >>
}
