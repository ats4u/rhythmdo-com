\include "lilypond-book-preamble.ly"
\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \voiceOne
        \time 3/4
        do4 do4 do4
        do4 do4 do4
        do4 do4 do4
        do4 s2
      }
    >>
    \new Lyrics \lyricsto "v" {
      "1" "2" "3" "4" "5" "6" "7" "8" "9" "1"
    }
    \new Lyrics \lyricsto "v" {
    }
  >>
}
