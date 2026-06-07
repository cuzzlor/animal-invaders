# Handoff → Local Claude Code

This project (**Animal Invaders**) was built in a remote Claude Code web session.
This file is the handoff so a **local** Claude Code session (running on the
developer's own machine, with a real browser available) can pick it up.

## Where things stand

- **Branch:** `claude/intelligent-pasteur-PT30q` (pushed to origin). The default
  branch has no commits yet — everything lives on this branch.
- **No PR opened yet** (user hasn't asked for one).
- Files: `index.html` (the whole game), `README.md` (kid-facing), this file.

To get the code locally:
```bash
git fetch origin claude/intelligent-pasteur-PT30q
git checkout claude/intelligent-pasteur-PT30q
```

## What was built

A complete, single-file Space Invaders clone with animal invaders. See the
original spec for full intent. Key points:

- One `index.html`: HTML + CSS + JS, no build step, no libraries, double-click
  to run. Target was 250–450 lines; it's ~330.
- Gameplay implemented: player move (←/→ + A/D) and shoot (Space); marching grid
  of cows that drops/reverses at edges and **speeds up as fewer remain**; cows
  fire milk bottles; bounding-box collisions; 3 lives; score + ❤️ HUD; win/lose;
  restart with Enter (no reload).
- Customisation: a `// CHANGE THESE TO CUSTOMISE YOUR GAME!` config block near
  the top with emoji + tunable numbers. Emoji work with zero image files. A
  `loadImage()` helper + a single `drawThing()` draw path make a PNG swap a
  genuine one-line change, with a commented worked example pointing at
  `sprites/cow.png`.
- Decisions taken (spec defaults): arrows + WASD; no sound in v1 (easy to add);
  minimal win/lose screens.

## IMPORTANT: not yet verified in a real browser

The remote session had **no browser**, so the game was checked by reading the
logic, not by playing it. **First thing to do locally: actually play it.**

```bash
# from the repo folder, just open the file:
open index.html      # macOS
xdg-open index.html  # Linux
start index.html     # Windows
```

The `/verify` and `/run` skills can help drive a browser if you want automated
checking.

### Checklist to confirm by playing
- [ ] Ship moves left/right and stays on screen; can't leave the edges.
- [ ] Spacebar fires; cooldown feels right (not a firehose, not sluggish).
- [ ] Bullets destroy cows and score goes up (+10 each).
- [ ] Herd marches, drops a row and reverses at each edge.
- [ ] Herd noticeably speeds up as cows are cleared.
- [ ] Cows fire milk; getting hit costs a life; ❤️ count drops.
- [ ] Win screen when all cows cleared; game-over on 0 lives or cows reaching bottom.
- [ ] Enter restarts cleanly without a page reload.
- [ ] Arrow keys / Space don't scroll the page.
- [ ] Swap `INVADER` emoji → renders. Then test the one-line PNG swap with a real
      file in `sprites/` to confirm `loadImage()` + placeholder fallback work.

## Suggested next steps (only if asked)
- Add a `sprites/` folder with a sample cow/milk PNG to demo the swap end-to-end.
- Optional tiny beep on shoot/hit (spec marked this "easy to add later").
- A minimal title screen before play (spec said don't block on it).
- Open a PR once the developer has played it and is happy.

## Watch-outs / things to double-check
- Emoji rendering varies by OS/browser; confirm 🐄/🍼/🚀 look right on the
  developer's machine.
- The win check (`invaders.every(inv => !inv.alive)`) and the "reach the bottom"
  loss both happen in `update()` — confirm timing feels fair during real play.
- Keep edits beginner-readable: favour the obvious one-liner over clever
  abstractions, and comment generously (that's the whole point of this project).
