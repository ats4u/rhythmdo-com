### Appendix
```{.lilypond}
\score {
  <<
    \new Voice = "v"
    \relative  do' {
      \voiceOne
        \time 3/4
        \autoLineBreaksOff
        do4  di re ri mi fa fi sol si la li ti | \break
        do4  ti te la le sol se fa mi me re ra | \break
        do4  di re ri mi fa fi sol si la li ti | \break
        do4  ti te la le sol se fa mi me re ra | \break
        do
    }
    \new Lyrics \lyricsto "v" {
       do di re ri mi fa fi sol si la li ti |
       do ti te la le sol se fa mi me re ra |
       do di re ri mi fa fi sol si la li ti |
       do ti te la le sol se fa mi me re ra |
       do
    }
  >>
}
```

```{mermaid}
flowchart LR
  A[Hard edge] --> B(Round edge)
  B --> C{Decision}
  C --> D[Result one]
  C --> E[Result two]
```

```{.lilypond}
\score {
  <<
    \new RhythmicStaff = "rhythm"  <<
      \new Voice = "v" {
        \voiceOne
        \time 3/8
        \partial 4
                                                                    \tuplet 3/2 { r4 do8 } |
        \tuplet 3/2 { do8 do8 do8 }  \tuplet 3/2 { do8 do8 do8 }  \tuplet 3/2 { do8 do8 do8 } |
        \tuplet 3/2 { do8 do8 do8 }  \tuplet 3/2 { do8 do8 do8 }  \tuplet 3/2 { do8 do8 do8 } |
        \tuplet 3/2 { do8 do8 do8 }  \tuplet 3/2 { do8 do8 do8 }  \tuplet 3/2 { do8 do8 do8 } |
        \tuplet 3/2 { do8 do8 do8 }
      }
    >>

    \new Lyrics \lyricsto "v" {
        \markup { | w } ʌ  n
        \markup { | t } uː\markup { _ }
        \markup { | θɹ } iː \markup { _ }
        \markup { | f } ɔ ɹ
        \markup { | f } aɪ v
        \markup { | s } ɪ ks
        \markup { | ˈs } ɛ vən
        \markup { | ʔ } eɪ t
        \markup { | n } aɪ n
        \markup { | w } ʌ  n
        _ _
    }
    \new Lyrics \lyricsto "v" {
        \markup { | o } - ne
        \markup { | t } - wo
        \markup { | thr } - ee
        \markup { | f } - our
        \markup { | f } -i ve
        \markup { | s } -i x
        \markup { | se } -ve n
        \markup { | ʔ } -eigh t
        \markup { | n } -i ne
        \markup { | o } - ne
        _ _
    }
  >>
}
```
-->




