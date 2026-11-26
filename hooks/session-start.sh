#!/bin/sh
# Hyperfocus: load the rules at the start of every Claude Code session.
# Off for good: touch ~/.claude/.hyperfocus-off   (delete the file to turn it back on)

[ -f "$HOME/.claude/.hyperfocus-off" ] && exit 0

skill="${CLAUDE_PLUGIN_ROOT:-$(dirname "$0")/..}/skills/hyperfocus/SKILL.md"
[ -f "$skill" ] || exit 0

echo "Hyperfocus is on for this session (on by default). Apply these rules to every reply:"
echo
# Print SKILL.md without its front matter.
awk 'n >= 2 { print; next } /^---[[:space:]]*$/ { n++ }' "$skill"
