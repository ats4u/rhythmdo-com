% \include "lilypond-book-preamble.ly"
\include "common-ly/chromatic-solfege.ly"
\language "chromatic-solfege"
padX =
#(define-music-function (L R) (number? number?)
  #{
    % Make the mark exist in all break contexts
    \once \override Score.RehearsalMark.break-visibility = #'#(#t #t #t)
    % Add a zero-height, fixed-width markup at x=0
    \mark \markup \with-dimensions #'(-$L . $R) #'(0 . 0) \null
  #})

\paper {
  left-margin   = 3\mm
  right-margin  = 3\mm
  top-margin    = 10\mm
  bottom-margin = 10\mm
  indent = 0
  tagline = ##f
  page-color = #(x11-color 'white)
}
\layout {
  \context {
    \Lyrics
    \override LyricText.font-name = "Charis SIL Bold Italic"
    \override InstrumentName.font-size = #2
    \override InstrumentName.font-series = #'bold
    \override InstrumentName.font-name = "Charis SIL Bold Italic"
  }
}

