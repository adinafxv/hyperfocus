# Hyperfocus

A Claude skill for people who read only the last message.

Hyperfocus makes Claude lead with the outcome, say where to see it, keep your steps separate from its own, and use concrete values instead of vague words. It was written by a busy product designer who checks results between other work and needs every reply to stand on its own.

**Current version:** 1.0.0 · [Changelog](CHANGELOG.md)

## What changes

| Without | With Hyperfocus |
| --- | --- |
| "I've gone ahead and looked into a few options…" | "10 design directions are drafted. Open `designs/index.html`." |
| "A softer purple" | "#CAACFB lilac" |
| Questions mixed into the middle of the answer | One question per decision, at the end, with a recommendation first |
| Check-ins after every small step | Finishes the whole task, stops only before something hard to undo |
| Endless "try this" loops | After two failed fixes, names the wrong assumption and checks it |

## Install

### Claude Code

Copy the skill folder into your skills directory:

```bash
git clone https://github.com/adinafxv/hyperfocus.git
mkdir -p ~/.claude/skills
cp -r hyperfocus/skills/hyperfocus ~/.claude/skills/
```

Use `.claude/skills/` inside a project instead to enable it for that project only.

### Claude.ai

1. Download [`skills/hyperfocus`](skills/hyperfocus) as a ZIP (the folder containing `SKILL.md`).
2. Go to **Settings → Capabilities → Skills** and upload it.

## Use

Claude picks the skill up when it fits. To call it directly in Claude Code, type `/hyperfocus`.

## Repository layout

```
skills/hyperfocus/SKILL.md   the skill itself
CHANGELOG.md                 what changed in each version
LICENSE                      MIT
```

## Versions

Hyperfocus uses [semantic versioning](https://semver.org):

- **Major** (2.0.0): a rule is removed or reverses behaviour.
- **Minor** (1.1.0): a new rule or section.
- **Patch** (1.0.1): wording fixes that keep the same behaviour.

Each release updates `metadata.version` in `SKILL.md`, adds an entry to `CHANGELOG.md`, and gets a git tag (`v1.0.0`).

## License

[MIT](LICENSE) © 2026 Adina
