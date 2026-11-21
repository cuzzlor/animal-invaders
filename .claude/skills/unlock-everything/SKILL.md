---
name: unlock-everything
description: Give the local copy of the game (file:///Users/sam/dev/animal-invaders/index.html in Chrome) a save with everything unlocked — all levels beaten, all gems, all ships, all upgrades. Use when asked to unlock everything, max out, or put "all the stuff" back in the local save for testing.
---

# Unlock everything in the local game

A cheat for local development. It is not in the game: the game has no
cheat code or URL parameter, and must not get one. The save is written from
outside, by driving Chrome with AppleScript.

The save lives in Chrome's localStorage for the address the game is opened
from, so this applies only to `file:///Users/sam/dev/animal-invaders/index.html`
in Chrome on this Mac.

## Run it

```sh
.claude/skills/unlock-everything/unlock.sh
```

It finds the local game's tab (or opens one), writes the save, reloads the
tab, brings it to the front, and prints what it wrote and what the game now
reports. Expect something like:

```
Game now reports: 11 of 11 ships earned, 11 upgraded, gems 20 of 20, bank 1600000, left to spend 500000
```

Pass that line on to the user. If a count is short, say so.

## Why AppleScript, not the Claude in Chrome extension

The extension refuses `file://` pages ("Can't interact with browser-internal
or unparseable URLs"), even with "Allow access to file URLs" turned on. So
the script uses Chrome's `execute javascript` instead.

If it fails with "Executing JavaScript through AppleScript is turned off",
ask the user to turn on View → Developer → Allow JavaScript from Apple
Events in Chrome. Do not turn it on yourself.

## How it works

- [unlock.js](unlock.js) is the cheat. It reads the game's own `SHIPS`,
  `LEVELS`, `UP_MAX`, `UP_PRICE` and `*_KEY` values, so new ships, levels
  or prices are covered without editing it. If one of those names is
  renamed in `index.html`, update unlock.js to match.
- AppleScript's JavaScript runs in an isolated world that shares the page's
  localStorage but cannot see the game's variables. unlock.sh therefore
  adds the code to the page as a `<script>` tag and reads the result back
  from an attribute on `<html>`.

What it writes: `ai-rung` (last level), `ai-done` (1), `ai-gems` (every
level), `ai-best` (the highest ship `need`), `ai-bank` (dearest bank price
plus every upgrade), `ai-ups` (every ship at UP_MAX), `ai-spent` (those
upgrades). A bank or best run already higher is kept. It leaves high
scores, player name, sound and chosen ship alone.
