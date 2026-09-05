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
| Start the whole run again | `R` (or tap the ⏮ button, top-left) |
| Open the ship shop | `S` (or tap the 🛒 button / SHOP button) |

The game pauses itself if you switch tabs or click away, so nothing happens
while you're not looking.

The **⏮ button** starts your whole run again: back to stage 1, no score, all
three lives, a fresh board. It is the "I have had enough of this run, let me
begin again" button — not a way to retry the wave you are on. A ship you earned
along the way is kept: the best score you reached is banked before the run is
wiped, so pressing it at 16,000 points does not quietly cost you the Electric
Arc. It leaves the high-score board alone, though; that is for runs you play out
to the end.

## The same speed on every device ⏱️

The game keeps its own clock, so it plays at the same speed on a phone, a
tablet and a computer.

That used to be a problem. Everything in the game moves by so much **a frame** —
your ship goes 4 pixels, a beam burns for 180 frames — and how many frames a
second you get depends on the device. A computer usually draws 60. A new iPad
draws up to 120. An iPhone in Low Power Mode, or one that has got warm, draws
only 30 — and at 30 frames a second the whole game ran in slow motion. Half
speed, but perfectly smooth, which is what made it hard to spot.

Now the game looks at how much **real** time has gone by since the last frame
and moves everything on by that much. What changed is how many steps a frame
gets: a phone drawing 30 frames a second takes two steps each frame, and plays
at exactly the same speed as a computer.

If a device gets so slow that it cannot keep up — below about 12 frames a second
— the game stops trying to catch up and runs slow instead. Stalling would be
worse than slowing.

### How fast is "the same speed"? 🏃

`GAME_SPEED`, near the top of `index.html`, is the pace of the whole game. It is
set to **2**, which means double the speed the numbers in the game were first
written for.

There is a story behind that. Before the game kept its own clock it took one
step per screen refresh — so on a 120Hz screen, like a recent Mac or iPad Pro,
it took 120 steps a second instead of 60 and played at **double speed**. That
turned out to be the pace everybody liked, and it is why the game felt slow on
a plain 60Hz iPhone: the phone was right and the Mac was fast. So double speed
is now simply what the game is, on every device.

`GAME_SPEED` is a safe number to play with, and the most fun one in the file. It
moves the herd, your ship, the bullets, the reloads and the beams all together,
so nothing becomes easier or harder **relative** to anything else — only the
clock moves. Try 3. Try 0.5 for slow motion. The shop works its seconds out from
it, so the cards never tell you a beam burns for three seconds when it burns for
one and a half.

The game also does much less work to draw a frame now, so a phone has a better
chance of reaching its full frame rate. Every animal is a grid of little
coloured squares, and each square used to be painted one at a time — about 4000
squares a frame for a full herd, one cow alone being 123 of them. Now each
animal is painted once when the game opens, and after that it is stamped down in
one go. The stars behind the game were blurred 220 times a frame; now each
colour of star is blurred one time and stamped as well. Altogether the game asks
the browser to draw about **75,000** things a second where it used to ask for
**646,000**, and the picture is the same to the pixel.

Want to see what your phone is really doing? **Tap the SCORE** while you are
playing and a small line appears under the buttons: the frames a second, the
steps per frame, and how long a frame takes. Tap it again to put it away. (On a
computer you can also put `?fps` on the end of the address.)

On a 60Hz screen at `GAME_SPEED` 2 it says something like
`60fps · 2.00 ticks · 16.7ms`; on a 120Hz screen, `120fps · 1.00 ticks · 8.3ms`.
Different frame rates, the same steps a second, the same game. On a phone in Low
Power Mode you should see `30fps · 4.00 ticks · 33.3ms` — a quarter of the
frames of that iPad, four times the steps in each, still the same speed.

`TICK_MS` is how long one step of game time is and `MAX_CATCHUP` is how many
steps one frame may make up; both are worked out from `GAME_SPEED`, so the
12-frames-a-second floor stays put however fast you set it.

## Which copy am I playing? 🏷️

The foot of the start screen shows a **build** in small grey text, like
`build 2026-08-22 restart` — a date, and a word for what changed.

It is there for one job. The game is shared as a link, and a phone can hold on
to an old copy of a web page for a long time — so "I changed it but nothing
changed on my iPad" is nearly always the iPad still playing yesterday's game.
Look at the build on the start screen: if it is not the one you expect, the
device has an old copy and nothing you changed is running yet. Close the tab and
open the link again.

`BUILD` is near the top of `index.html`. Change it whenever you change something
you need to see on another device.

## The sound of space 🌌

Underneath the pews and the bangs there's a drone — the sound of being out
there. It's five low notes and a slow wash of noise drifting over the top like
solar wind, all made up on the spot by the browser. There's no music file to
download.

Two of the notes are a fraction apart (55 and 55.3 vibrations a second), so
they slide in and out of step with each other and the drone slowly throbs
instead of sitting flat. The same pair is stacked an octave up, at 110, because
a laptop or a phone can't push air at 55 vibrations a second at all — their
little speakers give up around 150, so a drone built only from the deep notes
is silent on most machines however loud you turn it up. The octave carries the
same throb up to where every speaker can reach it. A filter opens and closes
over the noise on a twenty-second breath, so it never quite repeats.

It fades up when you start playing and fades away again when you pause, mute,
open the shop, or click off to another tab — so it's never droning at you when
you've stopped. Press `M` (or the 🔊 button) to turn all the sound off. Want it
louder or quieter? `SPACE_LEVEL` near the sound code in `index.html`.

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
  stand still and you won't last twenty seconds.
- On a boss stage, losing a whole base **doesn't** end the run the way it does
  against the herd. Blowing your cover apart is the point of its eggs, and
  ending the game the moment it manages it would be no fun. You just have to
  finish the fight out in the open.

It gets faster and faster as you wear it down, so the last few hits are the
hardest. Beating it is worth **500 points**, plus the usual stage bonus.

Different ships make very different work of it. Roughly, how long one chicken
takes to beat at the default `GAME_SPEED` of 2 — double these if you set it to 1:

| Ship | How long |
|------|----------|
| Red Laser | ~8 s — a beam can't miss something that big |
| Twin Blaster | ~12 s |
| Electric Arc | ~12 s |
| Blast Cannon | ~13–21 s |
| Scout | ~16–22 s |
| Rapid Fire | ~35–40 s |

Rapid Fire is the slow way to do it, and that's its own trade-off: half-strength
bullets are the worst possible thing to bring to something with real armour.
The beams do best, because you never have to lead a target that's sweeping
across the screen.

## A hardier herd 🐄🐄

Beat the Big Chick and the animals come back **twice as tough.** From stage 16
on, every ordinary animal has **2 health instead of 1**, so most guns need two
hits where one used to do — and Rapid Fire's half-strength bullets need four.
An animal you've hurt but not finished fades, and the fainter it is the less of
it is left, so you can always see which ones need another.

There's still time, though less of it than it sounds: a wave takes about 45
seconds to reach the bottom, and the slowest ship clears one in about half that.

| Ship | What changes |
|------|--------------|
| Scout, Twin Blaster | two bullets per animal instead of one |
| Rapid Fire | four bullets instead of two |
| Red Laser | you must hold the beam on each animal twice as long — about 5 of a wave per burn, down from 10 |
| Electric Arc | the same, but it copes better because it holds a crowd at once — about 17 per burn, down from 26 |
| **Blast Cannon** | **nothing at all** |

The Blast Cannon is the exception. A shell already does 3 damage, and 2 health
doesn't save you from 3 — so it clears exactly the same ring of animals it
always did. That makes it far and away the best wave-clearer once the herd
toughens up.

Want the change somewhere else, or bigger? `TOUGH_AFTER` is the last stage
before it kicks in, and `TOUGH_HP` is how much health those animals get.

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
| **Rapid Fire** | score 2,500 in one game | **Hold** the button and it pours out ten shots a second — but each one only hits half as hard, so most animals take two. |
| **Twin Blaster** | score 5,000 in one game | Two cannons — two bullets every shot, so you clear the herd twice as fast. |
| **Blast Cannon** | score 7,500 in one game | Lobs a shell that **blows up** where it lands, clearing whatever it hits and the whole ring of animals around it — about seven at a time in the thick of the herd. A quarter of a second to reload. |
| **Red Laser** | score 10,000 in one game | A red beam that smashes clean through every animal it touches (and melts their shots). Burns for 1.5 seconds, then reloads for half a second. |
| **Electric Arc** | score 15,000 in one game | Lightning instead of a laser: the current **jumps sideways** from animal to animal, up to three deep either side of the beam. Burns for 2.5 seconds, then reloads for half a second. |

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
