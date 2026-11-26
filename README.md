<h1 align="center">Hyperfocus</h1>

<p align="center">
  <strong>Replies you can act on without scrolling back.</strong>
</p>
<p align="center">
  <a href="CHANGELOG.md"><img src="https://img.shields.io/badge/version-1.0.0-CAACFB?style=flat" alt="Version 1.0.0"></a>
  <a href="LICENSE"><img src="https://img.shields.io/github/license/adinafxv/hyperfocus?style=flat" alt="License"></a>
</p>

## Install

Paste this into Claude Code:

```text
Install the hyperfocus skill from https://github.com/adinafxv/hyperfocus, following its README.
```

Or install it yourself:

```bash
claude plugin marketplace add adinafxv/hyperfocus
claude plugin install hyperfocus@hyperfocus
```

Restart Claude Code, then type `/hyperfocus`. [Other ways to install ↓](#other-ways-to-install)

## What it does

A skill for people who read only Claude's final message, between other work. The first line says what happened. The last line says what you do next. Everything in between is short, concrete and checkable.

Written by a product designer, so it also respects your designs: it matches the frame you give it and offers variants with real values instead of opinions.

## What changes

<table>
<tr>
<td width="50%">

### Before

> I've gone ahead and explored a few directions for the onboarding screen. I tried a softer purple palette, which I think feels more welcoming, and adjusted some spacing. There were a couple of things I wasn't sure about, like whether to keep the illustration. Also, I noticed the button styles are a bit inconsistent across the app, which might be worth looking at sometime. Let me know what you think and if you'd like any changes!

</td>
<td width="50%">

### After

> 3 onboarding variants are drafted in `designs/onboarding.html`.
>
> - A: #CAACFB lilac background, 24px gutters
> - B: same, illustration removed
> - C: #1F1B2E dark, 32px gutters
>
> Not checked visually on mobile.
>
> Keep the illustration? **Yes (recommended: it carries the empty state)** / No
>
> Separately: button styles differ on 4 screens. Want me to list them?

</td>
</tr>
</table>

## The rules

10 reply rules and 4 work rules. Full text in [SKILL.md](skills/hyperfocus/SKILL.md).

**The reply**

1. First line is the outcome.
2. Say where to see it.
3. State what was delivered, and what was not.
4. Your steps are numbered and kept separate.
5. Concrete values: hex codes, paths, counts, dates.
6. At most 5 bullets per group.
7. Tangents get one line, at the end.
8. One question per decision, recommendation first.
9. Reply in your language.
10. Plain and warm. Errors are cause and fix.

**The work**

- Keep momentum: finish in one go, stop only before something hard to undo.
- Fast path first: fewest tool calls that do the job.
- Respect the design: match what you gave it, keep what you liked.
- Break the debug spiral: after two failed fixes, check the assumption first.

**Before sending:** the first and last line must say what happened and what you do next.

## Other ways to install

**Claude Code, without the plugin system.** Copy the skill folder:

```bash
git clone https://github.com/adinafxv/hyperfocus.git
mkdir -p ~/.claude/skills
cp -r hyperfocus/skills/hyperfocus ~/.claude/skills/
```

Use `.claude/skills/` inside a project to enable it for that project only.

**Claude.ai.** Download [`skills/hyperfocus`](skills/hyperfocus) as a ZIP, then upload it in **Settings → Capabilities → Skills**.

## Tune it

Fork the repo, edit `skills/hyperfocus/SKILL.md`, then install your fork instead:

```bash
claude plugin uninstall hyperfocus
claude plugin marketplace remove hyperfocus
claude plugin marketplace add <your-username>/hyperfocus
claude plugin install hyperfocus@hyperfocus
```

## Versions

[Semantic versioning](https://semver.org). Every release updates `SKILL.md`, both files in `.claude-plugin/`, [CHANGELOG.md](CHANGELOG.md), and gets a git tag.

- **Major** (2.0.0): a rule is removed or reverses behaviour.
- **Minor** (1.1.0): a new rule or section.
- **Patch** (1.0.1): wording fixes, same behaviour.

## Credits

README layout inspired by [i-have-adhd](https://github.com/ayghri/i-have-adhd) by ayghri.

## License

[MIT](LICENSE) © 2026 Adina

Star ⭐ if it saved you one scroll back up.
