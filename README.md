<p align="center">
  <img src="assets/logo.svg" alt="Hyperfocus" width="120" />
</p>
<h1 align="center">Hyperfocus</h1>

<p align="center">
  <strong>Replies you can act on without scrolling back.</strong>
</p>
<p align="center">
  <a href="CHANGELOG.md"><img src="https://img.shields.io/badge/version-2.0.0-FF7F61?style=flat" alt="Version 2.0.0"></a>
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

Restart Claude Code. Hyperfocus is on from the next session. [Other agents and ways to install ↓](#other-ways-to-install)

## Use

Installed as a plugin, Hyperfocus is **on by default** in every Claude Code session.

- **Off for this session:** say "stop hyperfocus" or "normal mode".
- **Back on:** type `/hyperfocus`.
- **Off for good:** run `touch ~/.claude/.hyperfocus-off`. Delete that file to turn it back on. Or uninstall: `claude plugin disable hyperfocus`.
- **Copied the folder instead of installing the plugin?** Then it does not start by itself: type `/hyperfocus` in each session.

> **Best with `/focus`.** Claude Code's `/focus` hides the steps along the way, so you see only the final message. Hyperfocus makes that final message the one you need. In each session, Hyperfocus asks once whether you want `/focus` too.

## The rules

9 reply rules, 4 work rules and a check before sending. Full text in [SKILL.md](skills/hyperfocus/SKILL.md).

**The reply**

1. First line is the outcome.
2. Say where to see it.
3. State what was delivered, and what was not.
4. Your steps are numbered and kept separate.
5. Concrete values: hex codes, paths, counts, dates.
6. At most 5 bullets per group.
7. Tangents get one line, at the end.
8. One question per decision, recommendation first.
9. Plain and warm. Errors are cause and fix.

**The work**

- Keep momentum: finish in one go, stop only before something hard to undo.
- Fast path first: fewest tool calls that do the job.
- Respect what exists: match the design or code architecture you gave it.
- Break the debug spiral: after two failed fixes, check the assumption first.

**Before sending:** the first and last line must say what happened and what you do next.

## What it does

A skill for people who read only Claude's final message, between other work. The first line says what happened. The last line says what you do next. Everything in between is short, concrete and checkable.

It also respects what you already have. Designers get their grid, tokens and components kept. Engineers get their architecture, naming and libraries kept, with no new dependency where an existing one fits.

## What changes

**Design**

<table>
<tr>
<td width="50%">

Before

> I've gone ahead and explored a few directions for the onboarding screen. I tried a softer purple palette, which I think feels more welcoming, and adjusted some spacing. There were a couple of things I wasn't sure about, like whether to keep the illustration. Also, I noticed the button styles are a bit inconsistent across the app, which might be worth looking at sometime. Let me know what you think and if you'd like any changes!

</td>
<td width="50%">

After

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

**Code**

<table>
<tr>
<td width="50%">

Before

> Great question! I looked into the slow search endpoint. There are a few things going on: the query isn't using an index, and the results are serialized in a loop. I added a caching layer with Redis, which should make things much faster. I also refactored the service into a new repository pattern, since that's cleaner. You may want to run the tests. Let me know if you have questions!

</td>
<td width="50%">

After

> `/search` is faster: p95 840 ms → 210 ms on the seed data.
>
> - Added index on `products(name)` in `migrations/0042_search_index.sql`
> - Batched serialization in `src/search/service.ts:57`, same pattern as `orders/service.ts`
> - 38 of 38 search tests pass. Not checked against production data.
>
> 1. Run `npm run migrate` before deploying.
>
> Separately: Redis caching would cut another ~100 ms but adds a dependency. Want a proposal?

</td>
</tr>
</table>

## Other ways to install

**ChatGPT and Codex (workspaces).** A workspace admin can import Hyperfocus as a plugin, and it then updates daily from this repo:

1. Open **ChatGPT Admin Console → Plugins → Add → Import marketplace**.
2. Enter `https://github.com/adinafxv/hyperfocus`, leave **Path** empty, set **Branch** to `main`.
3. Authorize GitHub, import, and choose who can install it.

See OpenAI's guide: [Importing and syncing plugin marketplaces from GitHub](https://help.openai.com/en/articles/20001504-importing-and-syncing-plugin-marketplaces-from-github). The repo also ships a portable [`plugin.json`](plugin.json) in the [Agent Plugins](https://developers.openai.com/plugins/build/plugins) format.

**Any agent with skills.** Hyperfocus is a plain `SKILL.md` in the open [Agent Skills](https://agentskills.io) format, so any agent that reads skills can use it. Clone once:

```bash
git clone https://github.com/adinafxv/hyperfocus.git
```

Then copy `hyperfocus/skills/hyperfocus` into your agent's skills folder:

| Agent | Folder |
| --- | --- |
| Claude Code | `~/.claude/skills/` |
| Cursor | `~/.cursor/skills/` |
| GitHub Copilot | `~/.copilot/skills/` |
| Codex, OpenCode and others | `~/.agents/skills/` (shared folder; check your agent's docs) |

For example, Claude Code without the plugin system:

```bash
mkdir -p ~/.claude/skills
cp -r hyperfocus/skills/hyperfocus ~/.claude/skills/
```

Copied this way, it does not start by itself in Claude Code: type `/hyperfocus` in each session. Other agents may decide on their own when to use it.

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

[Semantic versioning](https://semver.org). Every release updates `SKILL.md`, `plugin.json`, both files in `.claude-plugin/`, [CHANGELOG.md](CHANGELOG.md), and gets a git tag.

- **Major** (2.0.0): a rule is removed or reverses behaviour.
- **Minor** (1.1.0): a new rule or section.
- **Patch** (1.0.1): wording fixes, same behaviour.

## Credits

Hyperfocus builds on [i-have-adhd](https://github.com/ayghri/i-have-adhd) by ayghri (MIT). Several reply rules, the debug-spiral rule and the first-and-last-line check come from it, and so does this README's layout. Hyperfocus adds rules about delivery (where to see it, what was and was not done), respecting existing work, and keeping momentum. It is written for any reader, not only people with ADHD.

## License

[MIT](LICENSE) © 2026 Adina

Star ⭐ if it saved you one scroll back up.
