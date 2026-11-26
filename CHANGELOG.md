# Changelog

All notable changes to Hyperfocus. Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), versions: [SemVer](https://semver.org).

## [2.0.0] - 2026-11-26

Major version: the default reverses. 1.2.0 made Hyperfocus off until `/hyperfocus`; it is now on by default.

### Changed
- On by default for Claude Code plugin installs: a `SessionStart` hook (`hooks/`) loads the rules in every session.
- "stop hyperfocus" turns it off for the session, `/hyperfocus` turns it back on.
- `/focus` question now comes in the first reply of each session.

### Added
- Off for good: `touch ~/.claude/.hyperfocus-off`, or `claude plugin disable hyperfocus`.

### Removed
- README tip to add "Use the hyperfocus skill for every reply." to `~/.claude/CLAUDE.md`. It could not work: `disable-model-invocation` stops Claude from loading the skill on its own.

## [1.4.0] - 2026-11-26

### Added
- Portable `plugin.json` at the repo root (Agent Plugins format), for ChatGPT and Codex.
- README: how a ChatGPT workspace admin imports Hyperfocus from GitHub with daily sync.

## [1.3.0] - 2026-11-26

### Added
- When turned on in Claude Code, Hyperfocus asks once per session whether you also want `/focus`, which hides the steps along the way.

### Changed
- README: rules moved up, right after "Use".

## [1.2.0] - 2026-11-26

### Changed
- Off by default. Turn on with `/hyperfocus`; it stays on for the session until "stop hyperfocus" or "normal mode" (`disable-model-invocation: true`).

### Added
- "Staying on" section in `SKILL.md`.
- README: how to use it, always-on tip, pairing with Claude Code's `/focus`, install folders for Cursor, Copilot, Codex and other agents.

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

[2.0.0]: https://github.com/adinafxv/hyperfocus/releases/tag/v2.0.0
[1.4.0]: https://github.com/adinafxv/hyperfocus/releases/tag/v1.4.0
[1.3.0]: https://github.com/adinafxv/hyperfocus/releases/tag/v1.3.0
[1.2.0]: https://github.com/adinafxv/hyperfocus/releases/tag/v1.2.0
[1.1.0]: https://github.com/adinafxv/hyperfocus/releases/tag/v1.1.0
[1.0.0]: https://github.com/adinafxv/hyperfocus/releases/tag/v1.0.0
