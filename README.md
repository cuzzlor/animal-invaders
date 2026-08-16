# Animal Invaders 🐄🍼

Space Invaders with animals — defend Earth from cows firing milk bottles!

This is **your** game. You came up with it, and you can change it however you like.

## How to play it

Just **double-click `index.html`** and it opens in your web browser. That's it —
nothing to install, no internet needed.

| Action | Keys |
|--------|------|
| Move left / right | ← →  (or `A` / `D`) |
| Shoot | `Spacebar` |
| Pause / un-pause | `P` (or tap the ⏸ button, top-left) |
| Play again after you win or lose | `Enter` |
| Restart the stage you're on | `R` (or tap the ⏮ button, top-left) |
| Open the ship shop | `S` (or tap the 🛒 button / SHOP button) |

The game pauses itself if you switch tabs or click away, so nothing happens
while you're not looking.

Shoot all the cows to win. Dodge the milk bottles — if one hits you, you lose a
life. Lose all 3 lives (or let the cows reach the bottom) and it's game over.

## The Big Chick 🐣

Get to **stage 15** and there's no herd at all. One ginormous baby chicken
comes down on its own, still wearing the top of its egg as a hat — and it takes
**45 hits** to see off, where an ordinary animal takes one. A bar across the top
shows how much of it is left. It's back again on stage 30, 45, and so on.

It lays **clutches of three eggs that EXPLODE.** The middle egg of every clutch
is aimed at wherever you're standing, and wherever an egg lands it blows a hole
in it — so hiding behind a base doesn't work for long. It will take your cover
apart while you're standing under it.

Two things make it a fair fight rather than a nasty one:

- An aimed egg drifts sideways more slowly than you can fly, so **you can
  always outrun the one that's coming for you.** Keep moving and you'll live;
  stand still and you won't last half a minute.
- On a boss stage, losing a whole base **doesn't** end the run the way it does
  against the herd. Blowing your cover apart is the point of its eggs, and
  ending the game the moment it manages it would be no fun. You just have to
  finish the fight out in the open.

It gets faster and faster as you wear it down, so the last few hits are the
hardest. Beating it is worth **500 points**, plus the usual stage bonus.

Different ships make very different work of it. Roughly, how long one chicken
takes to beat:

| Ship | How long |
|------|----------|
| Red Laser | ~16 s — a beam can't miss something that big |
| Twin Blaster | ~23 s |
| Electric Arc | ~24 s |
| Blast Cannon | ~26–41 s |
| Scout | ~32–43 s |
| Rapid Fire | ~70–79 s |

Rapid Fire is the slow way to do it, and that's its own trade-off: half-strength
bullets are the worst possible thing to bring to something with real armour.
The beams do best, because you never have to lead a target that's sweeping
across the screen.

## The ship shop 🚀

Better ships are **earned by scoring big in a single game**. Not added up over
lots of games — all in one run. Manage it once and the ship is yours forever,
however badly the next game goes.

Visit the **SHOP** to fly what you've earned: from the start screen, from the
game-over screen, or mid-game with the 🛒 button next to the pause button. Going
in mid-game freezes your run and pauses it, so you swap ships and come straight
back to exactly where you were — the new ship is in your hands immediately.

| Ship | To earn it | What it does |
|------|------------|--------------|
| **Scout** | yours already | The rocket you start with. One shot at a time. |
| **Rapid Fire** | score 2,500 in one game | **Hold** the button and it pours out five shots a second — but each one only hits half as hard, so most animals take two. |
| **Twin Blaster** | score 5,000 in one game | Two cannons — two bullets every shot, so you clear the herd twice as fast. |
| **Blast Cannon** | score 7,500 in one game | Lobs a shell that **blows up** where it lands, clearing whatever it hits and the whole ring of animals around it — about seven at a time in the thick of the herd. Half a second to reload. |
| **Red Laser** | score 10,000 in one game | A red beam that smashes clean through every animal it touches (and melts their shots). Burns for 3 seconds, then reloads for 1. |
| **Electric Arc** | score 15,000 in one game | Lightning instead of a laser: the current **jumps sideways** from animal to animal, up to three deep either side of the beam. Burns for 5 seconds, then reloads for 1. |

Rapid Fire is the only ship you **hold** the button for; every other one fires
once per press. An animal that's been hit but not finished off fades, so you can
see which ones need one more.

The shop shows a bar creeping toward each ship, so you can see how close your
best run has come.

Neither beam is a delete key. Animals have to be **held in the beam** for a
moment before they go — swing away too soon and they cool off — and a lit beam
is heavy, so you steer slowly while it burns. Pick your column and hold your
nerve. At best the Red Laser takes out about half a wave and the Electric Arc
about three quarters, so you'll need more than one burn either way. Both pass
straight over your own bases, so they can't wreck your cover.

The two beams want opposite things from you. The Red Laser likes to be **swept**
— parked on one spot it manages only a column. The Electric Arc is the other way
round: it pays best when you **park it** and let the current do the walking.

That's because the Arc's current doesn't stop at the beam. It **walks out
through the herd**, animal to animal, up to three deep on each side — and every
hop keeps only half the punch of the hop before it. The animals beside the beam
take half strength, the ones past them a quarter, the ones past THOSE an eighth.
So the column you're aimed at drops first, the ones beside it follow, and the
far ones take most of the burn to go. Reach deep, bite soft: that fall-off is
what stops one burn taking the whole wave.

And the current gutters. Each hop bites a different amount every single frame,
so no two animals ever go in the same order twice — and the frames it gutters
out to nothing are exactly the frames you see no bolt at all. What's on the
screen is precisely what the lightning is doing.

No two moments of it look the same. The bolt is torn into a fresh shape every
frame, with branches forking off it and dying away, and every jump crackles at
its own brightness — so it gutters and flickers like a live wire instead of
sitting there like a painted line.

Your best run, your ship, and the high scores are all kept in this browser on
this computer — there's no internet server, so they don't follow you to another
device.

Ships out of reach? Each one's `need` lives in the `SHIPS` list near the top of
`index.html` — make the numbers smaller and the good ships arrive sooner.

Want to meet the Big Chick without playing fifteen stages? Change `BOSS_EVERY`
to `1` and it turns up straight away. `BOSS_HP` makes it tougher or softer,
`BOSS_CLUTCH` is how many eggs it lays at once, and `BOSS_RELOAD` is how long
it waits between clutches — a smaller number means more eggs.

## 4 easy things to try changing first

Open `index.html` in a text editor and look near the top for the big box that
says **"CHANGE THESE TO CUSTOMISE YOUR GAME!"**. Change something, **save the
file**, then refresh your browser to see it.

1. **Swap the animals.** Change `🐄` to `🐷`, `🐔`, `🐸`, or `🦖`.
2. **Swap what they shoot.** Change `🍼` to `🥛`, `💧`, `⭐`, or `🔥`.
3. **Make it harder or easier.** Make `COLS` bigger for more cows, or make
   `INVADER_SPEED` bigger so the herd moves faster.
4. **More milk everywhere!** Make `SHOOT_CHANCE` bigger (try `0.01`) and watch
   the milk rain down.

## Using your own drawings instead of emoji

Make a picture in a sprite tool (like Sprite AI or OpenArt), save the PNG next
to this file (a `sprites/` folder works too), then follow the commented example
inside the config block. It's a **one-line** change — the game already knows how
to draw both emoji and pictures.

Have fun! 🚀
