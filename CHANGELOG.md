# Changelog

All notable changes to Hyperfocus. Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), versions: [SemVer](https://semver.org).

## [1.1.0] - 2026-11-26

### Changed
- For everyone, not only designers: examples and wording now cover code too.
- "Respect the design" is now "Respect what exists": keep the design system *or* the code architecture, naming and libraries; no new dependency where an existing one fits.
- "State the delivery" covers anything not checked (visually, by tests, on a device).
- Concrete values and debug-spiral examples include engineering cases.

### Added
- Logo (`assets/logo.svg`), light and dark.
- Coding Before/After example in the README.
- Credits to i-have-adhd for the rules Hyperfocus builds on.

### Removed
- "Match their language" rule. Claude already does this by default.

## [1.0.0] - 2026-11-26

First public release.

### Added
- **The reply:** 10 rules: outcome first, where to see it, delivery status, numbered user steps, concrete values, short groups, tangents last, one question per decision, match the user's language, plain and warm.
- **The work:** keep momentum, fast path first, respect the design, break the debug spiral.
- **Before sending:** first-and-last-line check.
- Claude Code plugin manifest (`.claude-plugin/`) for `claude plugin install`.

[1.1.0]: https://github.com/adinafxv/hyperfocus/releases/tag/v1.1.0
[1.0.0]: https://github.com/adinafxv/hyperfocus/releases/tag/v1.0.0
