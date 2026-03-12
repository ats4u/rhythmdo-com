# Internal Analysis Note: `_variables.yml` and `offbeat-count/master-ja.md`

Date: 2026-03-10
Purpose: internal reference for future editing, terminology maintenance, and structural cleanup.

## Executive summary

- [`_variables.yml`](/Users/ats/rhythmdo-com/_variables.yml) is the terminology registry and display layer for the project. It stores coined theory names, ruby markup, and at least one reusable inline link, not just plain labels.
- [`offbeat-count/master-ja.md`](/Users/ats/rhythmdo-com/offbeat-count/master-ja.md) is a single long manuscript that depends on that registry for concept naming consistency.
- The two files form a clear source-of-truth split: terminology in `_variables.yml`, argument/training content in `master-ja.md`.
- Variable usage inside `master-ja.md` is internally consistent. No undefined `{{<var ...>}}` references were found.

## Concrete facts

- `_variables.yml` is 127 lines long and defines 78 keys.
- `offbeat-count/master-ja.md` is 12,171 lines long.
- `master-ja.md` contains 279 `{{<var ...>}}` expansions across 57 unique keys.
- 21 keys in `_variables.yml` are currently unused by this specific document.

## `_variables.yml` analysis

- This file is presentation-aware configuration, not neutral metadata.
- Many values contain `<ruby>` HTML rather than plain strings.
- Some values encode reusable navigational content, for example `LINK_SCHIZORHYTHMOS_AND_SOLIRHYTHMOS`.
- The file is the canonical naming layer for the manuscript's coined concepts and should remain the first place to edit when terminology changes.
- Key clusters visible in the file:
- series / brand terms: `RDO`, `OFBC`, `OFBCT`
- groove / beat-orientation theory: `MLWBOR`, `CONDITIONS_OF_GROOVE`, `CONDITIONS_OF_TATENORI`
- phonology / prosody: `MiOP`, `MOP`, `MPOP`, `MMOP`, `NI`, `PNI`, `MNI`
- ordering / cognition: `TOP`, `PRTOA`, `PROACTIVE_TEMPORAL_ORDERING`, `REACTIVE_TEMPORAL_ORDERING`
- supporting labels / abbreviations: dialect labels and short reusable display terms

## `offbeat-count/master-ja.md` structural analysis

- This file is not a narrowly scoped article. It is an omnibus manuscript combining theory, pedagogy, glossary material, phonetics reference material, and appendix-like catalog content.
- Major blocks by section start:
- lines 34-677: introduction plus groove / tatenori framing
- lines 689-1534: rhythm-language interface, phonorhythmatology, mora-speaker framing, schizorhythmos / solirhythmos, metre
- lines 1637-5757: multi-layered weak-beat precedence and multidimensional division space theory
- lines 5766-6974: `3^-n` groove, distributed groove, weak-beat / strong-beat framing
- lines 6974-9987: offbeat-count method, listening, phonetics, prosodic notation strictification
- lines 10072-11135: polyrhythm appendix and base-rhythm catalog material
- lines 11146-11761: final definitions, mechanism, cognition, and psychology framing

## Variable dependency signal

- The manuscript is concept-dense around a relatively small core vocabulary.
- Most-used variables in `master-ja.md`:
- `REACTIVE_TEMPORAL_ORDERING`: 24
- `MOP`: 18
- `NI`: 17
- `PNI`: 15
- `MPOP`: 13
- `PROACTIVE_TEMPORAL_ORDERING`: 11
- `SOLIRHYTHMOS`: 11
- `MMOP`: 9
- `MiOP`: 9
- `PNS`: 9
- Interpretation:
- the later cognition sections lean heavily on the proactive / reactive ordering axis
- the practical phonology and training sections lean heavily on onset / nuclear isochrony and strictification terms
- the document's conceptual backbone is more concentrated than the total page length suggests

## Integrity and drift observations

- No undefined variable tokens were found in `master-ja.md`.
- Unused `_variables.yml` keys relative to this file:
- `2TONR`
- `3TONR`
- `ANI`
- `BAL`
- `BOTTOM_ALIGNING`
- `HAL`
- `HGT`
- `IRSK`
- `MiPOP`
- `NOH`
- `PROACTIVE_DIVISIONISM_ENG`
- `RDOE`
- `REACTIVE_APPENDISM_ENG`
- `RKS`
- `RMOP`
- `SAA`
- `SBL`
- `SOUL`
- `WAA`
- `WBL`
- `YES`
- `LINK_SCHIZORHYTHMOS_AND_SOLIRHYTHMOS` currently points to `/hypergroove/...`, while the analyzed manuscript lives under `/offbeat-count/...`.
- No local `hypergroove` directory was found in this repository during this analysis.
- Treat the `/hypergroove/...` link target as either:
- an intentional published route alias
- or a legacy namespace that can drift silently
- `master-ja.md` contains suspicious English H2 headings at lines 4548, 4555, 4815, and 4822:
- `Go one directory up from the current working dir`
- `now imports from project root work`
- These look like code-export leakage rather than intentional book structure.
- The phonetics block also contains multiple `(非表示)` subsections, which suggests the file mixes reader-facing narrative with authoring/reference material.

## Editing guidance

- When renaming a coined concept, edit `_variables.yml` first, then verify all `{{<var ...>}}` consumers.
- When changing argument structure or pedagogy, edit `master-ja.md` first and only add a new variable if the term is intended to be globally reusable.
- Avoid hardcoding ruby labels directly into prose when an existing reusable variable already covers the term.
- Highest-value future cleanup targets:
- remove or isolate accidental export artifacts from prose
- decide whether `/hypergroove/...` is the canonical public route namespace
- trim or document currently unused `_variables.yml` keys
- separate hidden/reference phonetics material from reader-facing narrative if maintainability becomes a problem

## Practical takeaway

- Treat `_variables.yml` as the canonical terminology source of truth.
- Treat `offbeat-count/master-ja.md` as a concept-heavy compiled manuscript whose maintainability depends on preserving that shared vocabulary layer.
- If this manuscript is split later, the variable registry should remain centralized unless there is a strong reason to scope terminology per module.
