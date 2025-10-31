\include "lilypond-book-preamble.ly"
\include "common-ly/lilypond-preamble.ly"

%{
\paper {
  #(set-paper-size "a5" 'landscape)
  % paper-width = 205\mm
  paper-height = 90\mm
}
%}

\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \voiceOne
        \time 4/4
        do4 do4 do4 do4
        do4 do4 do4 do4
        do4 s2
      }
    >>
    \new Lyrics \lyricsto "v" {
      "1" "2" "3" "4" "5" "6" "7" "8" "1"
    }
    \new Lyrics \lyricsto "v" {
    }
  >>
}


% phMQAdKlAe34XgE5JiwMyw==

