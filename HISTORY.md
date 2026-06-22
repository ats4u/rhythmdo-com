# Rhythmdo History

Created: `20260507-025100`

## 20260507-025100 Directory Reorganization Tracker Moved To Rhythmpress

The directory reorganization tracker and policy notes now live in Rhythmpress:

- `/Users/ats/rhythmpress/docs/rhythmdo-directory-reorganization-progress.md`

Reason:

- `rhythmdo-com` is being used as a reference project for designing the next Rhythmpress project template system.
- The cleanup is not only a local directory rename.
- The purpose is to identify clean ownership boundaries for future Rhythmpress-generated projects.
- CSS, JavaScript, Quarto filters, templates, LilyPond sources, helper scripts, and config patches should become modular, dependency-aware plugin/package units instead of scattered project files.

Use the Rhythmpress tracker/policy file as the active planning reference for:

- directory naming conventions;
- public versus local-only file boundaries;
- Rhythmpress template-engine defaults;
- future plugin/package materialization rules;
- migration passes still needed in this repository.

`rhythmdo-com` remains the concrete reference project. Rhythmpress remains the canonical place for framework policy and future implementation specifications.
