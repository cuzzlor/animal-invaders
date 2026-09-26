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
| Pause / un-pause | `P` (or tap the two bars, top-left) |
| Choose a level (LEVELS) | tap its line on the start screen, or press `1`–`6` |
| Play again after you win or lose | `Enter` |
| Start the whole run again | `R` (or tap the arrows that point back, top-left) |
| Open the ship shop | `S` (or tap the trolley, top-left, or the SHOP button) |
| Fill the screen | `F` (computers) |

The game pauses itself if you switch tabs or click away, so nothing happens
while you're not looking.

## Two ways to play 🎮

There are two games here. The buttons along the bottom of the start screen
choose between them. The gold button is the game you are set to, and the game
remembers your choice.

**ENDLESS** is the game as it has always been. Wave after wave, and each wave is
12% faster than the one before. It never ends. You play it for a score, and the
Big Chick turns up every 15 stages.

**LEVELS** is a set course with a finish. There are **10 levels**. Level 1 is
gentle: ten animals, slow, and they hardly ever shoot back. Each level puts more
animals on the screen, moves them faster, and lets them shoot more often. Level
5 is the Big Chick — a kinder one than the endless game's, 30 hits instead of
45. From level 7 on, a level can be **more than one wave** (see below). Level 10
is two Big Chicks, one after the other. Beat that and you have **finished the
game**.

| Level | Name | What comes at you | Waves | How fast |
|-------|------|-------------------|-------|----------|
| 1 | THE FARMYARD | 2 rows of 5 | 1 | 0.45 |
| 2 | THE MEADOW | 3 rows of 6 | 1 | 0.62 |
| 3 | THE HILLTOP | 3 rows of 8 | 1 | 0.80 |
| 4 | THE STORM | 4 rows of 8, and two hits each | 1 | 1.00 |
| 5 | THE BIG CHICK | the boss, 30 hits | 1 | 1.00 |
| 6 | THE ICE FLOE | 3 rows of 8 penguins, two hits each — **and their ice freezes you** | 1 | 1.10 |
| 7 | THE STAMPEDE | 4 rows of 8 cows, two hits each | **2** | 1.25 |
| 8 | THE TREETOPS | 3 rows of 8 monkeys — they aim at you 4 shots in 5 | **2** | 1.35 |
| 9 | THE DEEP FREEZE | 4 rows of 8 penguins, and the ice again | **3** | 1.40 |
| 10 | THE LAST CHICK | two Big Chicks, 45 hits each | **2** | 1.30 |

"How fast" is measured against the endless game's FIRST wave, which is 1. So the
animals in level 1 move at a bit under half that speed. A boss's number means
how fast the chicken sweeps, which is not the same thing as a herd's, so the two
kinds of level are only worth comparing to their own kind.

### Waves 🌊

A level can throw more than one herd at you. Clear the first and the next comes
straight down — **you keep your score and your lives**, so a wave is the next
round of the same fight, not a fresh start. Only the last wave of a level
finishes it.

Each wave is **10% faster** than the one before, so a three-wave level works up
rather than asking the same thing three times. The HUD says which wave you are
on (`LEVEL 9/10  W2/3`), and the list on the start screen marks the levels that
have more than one (`x2`, `x3`) so you know before you pick.

On a boss level it means that many Big Chicks, one after another. That is what
level 10 is.

### The Ice Floe 🧊🐧

The last level is penguins, and nothing but penguins. Every one of them throws
ice.

Ice hits you exactly as hard as milk, mud or an egg: it takes **one life**, the
same as any other shot. What it does **on top of that** is hold you still for
**three seconds**. You cannot move and you cannot shoot — your ship sits in a
block of ice with the word FROZEN over it, and a bar underneath that counts the
thaw down for you.

You are **safe for the whole three seconds**. The flashing you get after any hit
is stretched to cover the freeze, so nothing can touch you while you are stuck.
Being frozen costs you the seconds, not the rest of your lives — and the herd
uses those seconds to march closer.

The instant the ice lets go you are out in the open again. So the level is a
question of how much ground the penguins take while you can do nothing about it.

The penguin has always been in the game, mixed in with the cows and the pigs.
Its ice only freezes you **on this level** — see `freeze` in the level table
below.

### Choosing a level 🗺️

In LEVELS, the start screen lists the levels **where the high scores are in the
endless game**. One line each: its number, a face from it, its name, and where
you stand on it. Tap a line to play that level, or press its number.

You can only pick a level you have **reached**. Clear level 1 and level 2
opens, and so on — so the course still has to be walked once, in order. A level
you have not reached shows a dark shape instead of its animals, because what is
on it is part of what you are playing for. Starting on a level never opens the
next one; only clearing it does.

**When you beat a level the game says WELL DONE** and tells you which level
that just opened. There are two ways on from there, and you choose by doing
something or by doing nothing:

- **Tap** — and you go straight into the level it just named.
- **Wait** — and after four seconds it takes you back to the list, where you
  can pick any level you have reached.

So a level is a go in its own right: the score starts again each time, and a
level worth a lot still counts towards the ships.

Beating the **last** level is different — that finishes the whole game, and you
get the YOU WIN screen instead.

This is here so that dying on level 4 does not mean playing levels 1, 2 and 3
again to have another go at it. The game-over screen has a **CHOOSE LEVEL**
button that brings you back to the list.

The level board is still kept, and it is still shown when a game ends. It is
only the start screen that gives its room to the levels, because choosing one
is what you came to that screen to do. The level you have reached is remembered
on this device.

The two games keep **separate high-score boards**. A 6-level run is worth a few
thousand points, and an endless run can climb for ever — one board would mean a
level game never got onto it. Your **ships are shared**: a good level run earns
them the same way an endless run does.

### Add a level, or change one 🛠️

Find `const LEVELS` in `index.html`. Each level is one line. Add a line and you
have eleven levels. Nothing else needs changing, because the screens count the
table themselves: `LEVEL 3/10` becomes `LEVEL 3/11` on its own, and the list on
the start screen lays itself out to fit — one wide column up to six levels, then
two narrower ones, and shorter lines again if it has to.

| In the line | What it does |
|-------------|--------------|
| `rows`, `cols` | how many animals, and in what shape |
| `speed` | how fast they slide across, and how fast their shots fall |
| `reload` | frames between their shots — **bigger** means they shoot **less** |
| `aim` | the chance (0 to 1) that a shot is aimed AT you |
| `hp` | hits one animal takes |
| `boss` | `true` puts a Big Chick there instead of a herd, with `bossHp` hits |
| `herd` | make every animal one kind, by name: `"penguin"`, `"cow"`, `"pig"`, `"chicken"` or `"monkey"`. Leave it out for the usual mix. |
| `freeze` | steps the level's shots hold you still. Write it as `stepsFor(3)` for three seconds, **not** as `3 * 60` — see "Seconds, and steps" below. The shot still takes a life; the freeze is on top of it. |
| `waves` | how many herds the level throws at you. Leave it out for one. Each wave after the first is `WAVE_SPEEDUP` faster, and you keep your score and lives all the way through. On a boss level it is that many Big Chicks. |

A boss level has no herd, so `rows`, `cols`, `reload`, `aim` and `hp` do nothing
on that line. Only `speed` reaches the chicken, as how fast it sweeps.

`herd` and `freeze` are independent of each other. A level of nothing but pigs
that does not freeze you is one word; so is a mixed herd whose every shot
freezes you. A name that is not in the animal list is ignored, and you get the
usual mix — a typo cannot empty the screen.

### The four buttons in the corner 🕹️

Under the score there is a row of four: a **speaker** to turn the sound off and
on, **two bars** to pause (they become an arrow to start again), **arrows that
point back** to begin the whole run afresh, and a **trolley** for the ship shop.
The last three only appear while you are playing.

They are drawn from the same fat pixels as the animals and the ships, out of the
same kind of letter grid — look for `SOUND_ON_ART`, `PAUSE_ART`, `PLAY_ART`,
`RESTART_ART` and `SHOP_ART` near the animals in `index.html`. Change a letter to
change a button. They were emoji before, and an emoji is drawn by the device, not
by the game: an iPad drew one picture, a computer drew another, and neither one
was made of the same square pixels as the rest of the screen. These are.

### Make it bigger 🔍

The game is drawn as big as the **height** of the screen allows, keeping its
shape. So the way to make it bigger is to give it more height.

On a computer, press **`F`** for full screen. Your browser's tabs, address bar
and bookmarks can easily eat a third of the window, and full screen hands all of
it back. Press `F` again to come out.

Want it a little bigger or smaller than it comes? `--zoom` at the top of
`index.html` is how much of the screen the game fills. It is **0.96**, which
leaves a bit of space around the edges. Put it up to `1` to go right to the
edges, or down to `0.9` to stand further back.

### Make it bigger on an iPad or iPhone 📱

The game is drawn as big as the height of the screen allows, and on a phone or
tablet Safari's address bar takes about a tenth of that height away. **Add the
game to your Home Screen** and it opens with no address bar and no toolbar — so
everything is about a tenth bigger, and it looks like a game instead of a web
page. Tap the share button, then "Add to Home Screen".

(In portrait the game is limited by the WIDTH of the screen instead, so the bar
costs you nothing there and the space above and below is simply the shape of the
board. Turn the tablet sideways for the biggest picture.)

On a big screen the game grows past the 880×960 it is drawn at, rather than
sitting at that size in the middle of an empty window — so a full-screen laptop
gets about 900 across, and a large monitor about 1300.

The **start-again button** — the two arrows that point back to a bar, third
along the top-left — begins your whole run again: back to stage 1, no score, all
three lives, a fresh board. It is the "I have had enough of this run, let me
begin again" button — not a way to retry the wave you are on. A ship you earned
along the way is kept: the best score you reached is banked before the run is
wiped, so pressing it at 16,000 points does not quietly cost you the Electric
Arc. It leaves the high-score board alone, though; that is for runs you play out
to the end.

### No zooming 🚫🔍

The board is one fixed size that already fits your screen. If you could zoom in,
part of it would go off the edge — usually the score along the top, or your own
ship. In the middle of a fight that is a hard thing to get back from. So on a
phone or a tablet the game does not zoom.

Two gestures had to be turned off, and each one needs a different answer:

| The gesture | What stops it |
|-------------|---------------|
| Pinch | Safari's own `gesturestart` / `gesturechange` / `gestureend` events, refused |
| Double tap | The second tap is refused, if it comes less than `DOUBLE_TAP_MS` after the first |
| Drag and scroll | `touch-action: none` in the style block |

The `<meta name="viewport">` line at the top of `index.html` asks for no zooming
as well. That line is enough on a computer and on Android. **Safari on iOS has
ignored `user-scalable=no` since iOS 10** — Apple took the setting away so that a
page cannot trap a reader who needs to make the text bigger. That is why the two
gestures are turned off one at a time in the script instead.

The **first** tap always goes through. It is how you fire, and how you start a
game. Only the second of a fast pair is refused, and refusing it costs you
nothing, because every control in the game listens for `pointerdown` — which has
already happened by the time the touch ends.

The **name box** keeps all of its taps. It needs them to put the cursor in the
text field and to press its buttons, and there is nothing to zoom in there.

`DOUBLE_TAP_MS` is **400**. Make it bigger to refuse taps that are further
apart, or smaller to let more of them through.

### No selecting 🚫✍️

Hold a finger down on an iPad and the browser decides you want to read. It puts
a magnifying glass over the spot, paints the words blue, and offers you Copy and
Look Up. On a page you read that is helpful. On a game board it is in the way:
it covers the fight, and your finger was on FIRE, not on a word.

So nothing on the page can be selected.

| The rule | What it stops |
|----------|---------------|
| `user-select: none` | the blue words, the magnifying glass, and a drag that selects |
| `-webkit-touch-callout: none` | the Copy / Look Up menu Safari offers with them |
| `-webkit-tap-highlight-color: transparent` | the grey flash over a button when a finger lands on it |

Both spellings of the first rule are written: Safari reads `-webkit-user-select`,
and every other browser reads the plain `user-select`. One without the other
leaves half the devices selecting.

The **name box** is the one place in the game where you type, so it asks for its
words back by name. That is not tidiness — Safari will not put a cursor in a
field it believes cannot be selected, so without those three lines on
`#nameentry input` you could not enter your name at all.

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

### The Frost Thrower ❄️

The same gun as the Flamethrower, turned cold. Same cone, same reach, same
spread, same small bite. It sets nothing alight. What it does instead is
**stop** things.

| What it does | When |
|--------------|------|
| **Slows** what it touches to two fifths of its speed | at once, and for half a second after you swing away |
| **Freezes** an animal solid | after **four tenths of a second** of spray on it |
| **Holds** it frozen | for as long as you keep the spray on it |
| Lets it go | **one second** after you stop |

Frozen means frozen. A frozen animal does not walk, does not **come down with
the herd** when it turns at the edge, and cannot shoot. That last pair is the
whole point of the gun: it is the only one in the game that stops a wave
reaching your line at all, rather than racing it. The Big Chick can be frozen
too, and a frozen chick lays no eggs.

Because the herd is slowed animal by animal, a sweep **pulls it out of shape**.
The columns you are pointing at fall behind the ones you are not, and the neat
grid smears. That is the gun working.

The **tank** is three seconds, a little under the Flamethrower's three and a
half, and it fills at **1.75 a step** where the flame fills at 1:

| | |
|---|---|
| Four tenths of a second of spray | freezes something |
| Two and a half seconds more | is all the holding one tank buys |
| About 1.7 seconds to fill the tank | before you can go again |
| And a second of freezing | left over after you let go |

You cannot lean on the button. You pick your moment, hold a row still, and let
go while it fills.

(The fill is a step and a half, not a whole step, so the fuel can sit on a
**half** while a tank is filling. The gun's roar is timed off a rounded fuel
figure for that reason — off the raw number it would never come round on a
half, and the gun would fire in silence. A test holds that.)

It bites **three and a half times** as hard as the flame itself does — **seven
sixteenths** of an animal each time its heat fills, where the flame takes one
eighth — and it bites **twice as often**, every 20 steps at the mouth of the
spray where the flame needs 40. **Three** fills see off an ordinary animal and
**five** see off a tough one, so one animal held at the mouth goes in **63
steps** against the Flamethrower's 161. The Big Chick takes about **48
seconds**.

#### What lives long enough to freeze

The bite and the freeze pull against each other, and the freeze is what limits
how big the bite can get. An animal only freezes if it survives **48 steps** in
the spray. Held at the mouth, the numbers are:

| | Steps to kill it | Does it freeze? |
|---|---|---|
| An ordinary animal | 60 | **yes** — with 12 steps to spare |
| A **tough** animal (stage 17 on, and the Ice Floe) | 100 | **yes** |
| The Big Chick | 2,060 | **yes** |

Twelve steps is the whole margin, which is why the freeze came down from half a
second to four tenths when the bite went up. **Seven sixteenths is as hard as
this gun can bite and still be a freezing gun**: the next fraction up, a half,
needs only two fills — 40 steps — which is under the freeze, and nothing in the
herd would ever go solid again. Going from three eighths to seven sixteenths
changed nothing for an ordinary animal, which still takes three fills; what it
bought was the things that need more, a tough animal going from six fills to
five and the chicken from 120 to 103.

Two tests hold this: one that every size of animal outlives the freeze by at
least ten steps, and one that no kill lands **exactly** on the freezing step —
which of the two happened first would otherwise depend on the order of two lines
in `update()`.

Both numbers are knobs. Raise `ICE_BITE` and fewer things live long enough to
freeze; lower `ICE_FREEZE_AT` and more of them do. Keep them from landing on
exactly the same step, though — which happens first would then depend on the
order of two lines in `update()`, and a test holds that line.

The knobs are `ICE_SLOW`, `ICE_SLOW_TIME`, `ICE_FREEZE_AT`, `ICE_HOLD`,
`ICE_BITE`, `ICE_TANK` and `ICE_PRICE`, all together near the top of
`index.html`.

### Seconds, and steps ⏳

Everything in the game is timed in **steps**, and the game takes
**60 × `GAME_SPEED`** of them in one second — **120 a second** as it is set now.

That is an easy thing to get wrong, and a silent one, because a screen draws 60
times a second and `60` looks like the number of a second. It caught this game
once: the ice on the Ice Floe was written as `180`, which looks like three
seconds and is one and a half.

So never write the arithmetic out by hand. Two little helpers do it for you:

| | |
|---|---|
| `stepsFor(3)` | how many steps are in three seconds — use it **wherever you set a time** |
| `secs(360)` | what 360 steps is in seconds, written the way the shop writes it |

They are inverses of one another, and they both know about `GAME_SPEED`. Set a
time with `stepsFor`, and turning `GAME_SPEED` up or down can never leave the
game holding you still for half as long as it says.

## Which copy am I playing? 🏷️

The foot of the start screen shows a **build** in small grey text, like
`build 2026-08-22 zoom` — a date, and a word for what changed.

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
you've stopped. Press `M` (or the speaker button) to turn all the sound off. Want it
louder or quieter? `SPACE_LEVEL` near the sound code in `index.html`.

Shoot all the cows to win. Dodge the milk bottles — if one hits you, you lose a
life. Lose all 3 lives (or let the cows reach the bottom) and it's game over.

## The Big Chick 🐣

Get to **stage 15** in the endless game — or **level 5** in the level game —
and there's no herd at all. One ginormous baby chicken
comes down on its own, still wearing the top of its egg as a hat — and it takes
**45 hits** to see off, where an ordinary animal takes one. A bar across the top
shows how much of it is left. It's back again on stage 30, 45, and so on.

### The Rainbow Chick 🌈🐣

From **stage 30** the chick comes back grown up. It has thrown the eggshell away
and wears a **rainbow crown** instead — six coloured points, so you can tell at a
glance which one you are fighting — and it has **twice the health: 90 hits.**

Every boss stage from 30 on is the crowned one. The game only gets harder as you
climb, so there is no going back to the easy chick.

It is more than twice the fight. Stage 30 also sweeps faster than stage 15,
because every endless stage is faster than the one before, and a faster chick is
harder to hold a beam on. Measured with the Red Laser: **1,080 steps at stage 15
and 3,398 at stage 30** — three times over, not two. Wind its health back to 45
and it takes 1,576, so the health itself accounts for a little over double and
the speed accounts for the rest.

`CROWN_STAGE` is the stage it first turns up, and `CROWN_HP` is how many times
the ordinary chick's health it has. The **levels** game keeps its own chicks and
its own numbers; the crown belongs to the endless game.

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
hardest. That is measured against **its own** health, not against a fixed number,
so the crowned chick starts as calm as the plain one and works up the same way. Beating it is worth **500 points**, plus the usual stage bonus.

Different ships make very different work of it. Roughly, how long one chicken
takes to beat at the default `GAME_SPEED` of 2 — double these if you set it to 1:

| Ship | How long |
|------|----------|
| Red Laser | ~6 s — a beam can't miss something that big |
| Twin Blaster | ~12 s |
| Electric Arc | ~12 s |
| Blast Cannon | ~9–14 s |
| Scout | ~16–22 s |
| Rapid Fire | ~35–40 s |
| Flamethrower | ~40 s — it lights the chicken, but one chicken is not a herd |
| Frost Thrower | ~48 s — and it can **freeze** the chicken while it works |

Rapid Fire is the slow way to do it, and that's its own trade-off: half-strength
bullets are the worst possible thing to bring to something with real armour.
The beams do best, because you never have to lead a target that's sweeping
across the screen.

## The green bases 🛡️

The three green blobs are **cover**. Each one is a little grid of blocks, and
they wear away a block at a time. Four things eat into them:

| | |
|---|---|
| **Their shots** | one block per shot, which is what cover is for |
| **Your own bullets** | you shoot your own cover away too — mind where you aim |
| **The Big Chick's eggs** | a whole hole at once, wherever one lands |
| **The herd walking into them** | see below |

**Lose a whole base and the run is over.** Protect all three. It does not
matter what took it: their shots, your own bullets, or the herd eating it.

The one exception is a **boss stage**. Blowing your cover apart is the point of
the Big Chick's eggs, so there you lose the cover and fight on without it.

### When the herd reaches them 🐄

If the animals get low enough to touch the cover, they **eat it**. Any block an
animal is standing on crumbles away, and the herd chews a hole through your
shields as it slides across. They take only what they walk over, so a base off
to the side of the herd is left standing while the ones under it go.

Eating a base right down to nothing **ends the run**. Measured on THE STORM,
that happens while the herd is still inside the cover — about **4.5 rows before**
they would have reached your ship. So the herd getting into your shields is the
last warning you get, and the end of a wave is now a race: clear them, or they
clear your cover and the run is over.

Touching the cover is not enough on its own. They have to finish a whole base
off, and they only eat the blocks they stand on, so you have time to work.

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
| Red Laser | you must hold the beam on each animal twice as long. One burn swept across them clears about **16**, where a tough herd used to be the one thing a sweep could not touch at all |
| Electric Arc | the same, but it copes better because it holds a crowd at once — about 17 per burn, down from 26 |
| **Blast Cannon** | **nothing at all** |

The Blast Cannon is the exception. A shell does 5 damage, and 2 health doesn't
save you from 5 — so it clears exactly the same ring of animals it always did.
Even out at the edge of the blast, where a shell does only half, that is 2.5. That makes it far and away the best wave-clearer once the herd
toughens up.

Want the change somewhere else, or bigger? `TOUGH_AFTER` is the last stage
before it kicks in, and `TOUGH_HP` is how much health those animals get.

## The ship shop 🚀

Most ships are **earned by scoring big in a single game**. Not added up over
lots of games — all in one run. Manage it once and the ship is yours forever,
however badly the next game goes.

The **Flamethrower** is the one that is not. It is bought out of **the bank**,
which fills a little every time you play. See below.

Visit the **SHOP** to fly what you've earned: from the start screen, from the
game-over screen, or mid-game with the trolley button along the top-left. Going
in mid-game freezes your run and pauses it, so you swap ships and come straight
back to exactly where you were — the new ship is in your hands immediately.

| Ship | To earn it | What it does |
|------|------------|--------------|
| **Scout** | yours already | The rocket you start with. One shot at a time. |
| **Rapid Fire** | score 2,500 in one game | **Hold** the button and it pours out ten shots a second — but each one only hits half as hard, so most animals take two. |
| **Twin Blaster** | score 5,000 in one game | Two cannons — two bullets every shot, so you clear the herd twice as fast. |
| **Blast Cannon** | score 6,000 in one game | Lobs a shell that **blows up** where it lands, clearing whatever it hits and the whole ring of animals around it — **six** at a time in the thick of the herd, four along its bottom edge. A shell does **5** damage, so a tough herd costs it nothing. A quarter of a second to reload. |
| **Triple Blaster** | score 8,500 in one game | Three cannons instead of two. The middle barrel stands **forward** on the ship, so its bullet leaves from further up the screen — the three fly as an arrowhead with the point in front, and the middle one lands first. |
| **Double Rapid** | score 9,000 in one game | Rapid Fire with two barrels. **Hold** the button and it pours out ten **pairs** a second. Each bullet is half strength, like Rapid Fire's, so a pair downs an ordinary animal where a single bullet leaves it standing. |
| **Red Laser** | score 10,000 in one game | A red beam that smashes clean through every animal it touches (and melts their shots). Burns for **2 seconds**, then reloads in under half of one — so it is lit five sixths of the time, and one burn carries you nearly the whole width of a wave. |
| **Electric Arc** | score 15,000 in one game | Lightning instead of a laser: the current **jumps sideways** from animal to animal, up to three deep either side of the beam. Burns for 2.5 seconds, then reloads for half a second. |
| **Frost Thrower** | fill the bank to 500,000 | **Hold** and it sprays cold instead of fire. Everything it touches walks at **two fifths** of its speed; hold it on one animal for **four tenths of a second** and that animal **freezes solid** — it stops walking, stops coming down with the herd, and stops shooting. Keep holding and it stays frozen; let go and it has one second left. Bites seven sixteenths of an animal at a time, three times a second at the mouth, so three fills see one off. Three seconds of fuel a tank, and it refills in under two. |
| **Flamethrower** | fill the bank to 250,000 | **Hold** the button and it pours out fire. It burns what it touches **and sets it alight**, and the fire goes on eating long after you have swung away. Slow on any one animal, frightening on a herd. Three and a half seconds of fuel in a tank. |

Rapid Fire, the Double Rapid and the Flamethrower are the three ships you
**hold** the button for; every other one fires once per press.

The Triple Blaster's arrowhead keeps its shape the whole way up, because every
bullet in the game flies at the same speed. `TRIPLE_SPREAD` is how far out the
two side bullets sit and `TRIPLE_LEAD` is how far ahead the middle one starts —
both near the top of `index.html`. An animal that's been hit but not finished off fades, so you can
see which ones need one more.

The shop shows a bar creeping toward each ship, so you can see how close you
are. For most ships the bar measures your best single run. For the Flamethrower
it measures the bank.

### The bank 🏦

**Two** ships are paid for out of the bank: the Flamethrower at **250,000** and
the Frost Thrower at **500,000**. Both are far more than one game can make, so
neither is bought with one game.

**Every point you score, in every game you play, goes into the bank as well as
onto the scoreboard.** The bank keeps what it is given. It fills a little each
time you play — over days — and when it reaches a ship's price, that ship is
yours. The running total stays on screen until you own both of them.

Three things are worth knowing about it:

- **The bank is never spent.** It is a record of everything you have done, not a
  purse. Flying the ship does not empty it, and you can never lose the ship again.
- **Losing takes nothing out of it.** A bad game simply puts less in than a good
  one. There is no way to go backwards.
- **Every point counts, in both games.** Levels and Endless both pay into the
  same bank, and a run you give up on halfway still banks what it made.

You can watch it filling on the start screen, on the game-over screen, and at the
top of the shop. Once the ship is yours the number stops being shown, because it
has nothing left to say.

The price is `FLAME_PRICE` in `index.html`. Make it smaller and the ship arrives
sooner. Be careful raising it on a machine that has already earned the ship: the
lock asks whether the bank has reached the price, and nothing records that the
ship was once yours. A bank of 150,000 owned the ship at 100,000 and does not
own it at 250,000. Keep playing and it comes back.

### The Flamethrower 🔥

It is the only gun in the game that **stops**. Every other one reaches the top of
the screen; the flame licks **780 pixels** up and goes no further. That, and how
slow it is, are the bargain of it, and they change how you play:

- **The top row is safe — only just.** A herd starts 80 pixels down the screen,
  which is **800** above your ship's nose. The flame stops at 780, so the top row
  of a fresh wave is out of it by 20 pixels. **One drop** of the herd brings it
  in.
- **It sets things alight.** This is the whole gun. Every time the flame's heat
  fills, two things happen at once: the flame takes a **bite** out of the animal,
  and the animal **catches fire**. See below.
- **It is far slower than either beam.** Held on one animal at the mouth of the
  flame it takes about **161 steps** to finish it. The Red Laser sees one off in
  16 and the Electric Arc in 26. It works by holding a lot of the herd at once,
  not by being quick with any one animal.
- **It is slow to catch.** Heat has to build to `FLAME_CATCH` before anything
  happens at all, and that is **80**. The flame puts in 2 a step at its mouth and
  1 at its tip, so an animal held right over the nose catches after **40 steps**
  and one out at the far end after **80**.
- **It bites harder the closer they are.** An animal at the mouth of the flame
  takes heat twice as fast as one at the tip — that is where the 40 and the 80
  come from.
- **The flame spreads.** It leaves the nose 26 pixels across and is about 302
  across by the end of its reach — wide enough to hold **five columns** of the
  herd — so the further away a thing is, the wider a sweep you have.
- **Their falling shots burn up in it** — but only the ones that have come down
  far enough to be inside it. One still high up sails straight through.

#### The fire it leaves behind

The flame's own bite is tiny: an **eighth** of an animal, where a beam takes a
whole one. Eight fills of its heat to see off a single animal, against a beam's
one. On its own it is far and away the feeblest gun in the game.

The fire is what gives it back. Once something is alight:

- It burns for **four seconds**, and takes a **quarter** of an animal every third
  of a second — twice what the flame itself takes, and **three animals' worth**
  of damage in all, which is more than enough to finish anything in the herd. The
  fire, not the flame, is where almost all of this gun's damage comes from.
- **It eats slowly.** A fire does the same three animals' worth of damage it
  always did, but it takes twice as long to do it: twelve bites a third of a
  second apart, not a sixth.
  Slow is the point of this gun. You light a row and go and light the next while
  the first burns down behind you. End to end — the wait to catch, then the fire
  eating — an ordinary animal held at the mouth takes **161 steps** and a tough
  one **252**. Both still fit inside one tank of fuel, which is what keeps the
  gun usable.
- It burns **on its own**. You can swing the flame away, reload, or run for your
  life, and it goes on eating.
- **Nothing puts it out.** It burns for its four seconds and then dies down by
  itself. Point the flame at it again and the four seconds start over.
- You can see it: an animal that is alight carries little tongues of fire, and
  fades as the fire eats into it.

So the way to use this gun is **not** to hold it on one animal. It is to sweep
across as many as you can reach, set the lot of them alight, and go and light the
next lot while the first ones burn down behind you.

And it is the only gun with a **tank**. Holding the button drains it, letting go
fills it up again, and **running it dry means no fire at all until the tank is
full once more**. So the button cannot simply be held down from the first frame
of a wave to the last: you pick your moment and you let go. The gauge under your
ship shows what is left, and turns **red** when you have run it dry — which is
the game telling you why the button has stopped working.

The numbers are all together near the top of `index.html`: `FLAME_TANK`,
`FLAME_FILL`, `FLAME_REACH`, `FLAME_MOUTH`, `FLAME_SPREAD`, `FLAME_BURN` and
`FLAME_DRAG`.

The flame's **shape** and its **length** are separate on purpose:

| | |
|---|---|
| `FLAME_MOUTH` | how wide it is where it leaves the nose |
| `FLAME_TAPER` | how much wider it gets for each pixel it climbs |
| `FLAME_REACH` | how far up it goes — and **only** that |
| `FLAME_SPREAD` | the width at the tip, **worked out** from the three above |

So you can lengthen or shorten the flame with one number, and it stays the same
width at every height it already covered. `FLAME_SPREAD` used to be typed in by
hand, which made it easy to lengthen the flame and leave a thinner one behind.

Two numbers to keep an eye on:

- Keep `FLAME_REACH` **short of 800**. That is how far the top row of a fresh
  herd sits above your ship, and a flame that reaches it is a flame that clears a
  wave from where you are standing. A test holds that line.
- `FLAME_CATCH` is how much heat it takes before the flame bites and lights. The
  flame puts in 2 a step at the nose and 1 at the tip, so the number is **half**
  that many steps close up and **all** of them at the far end.
- `FLAME_BITE` is what the flame itself takes each time; `FIRE_BITE`, `FIRE_TICK`
  and `FIRE_TIME` are what the fire takes, how often, and for how long. Keep them
  to **halves, quarters, eighths and sixteenths**: a computer holds those
  exactly, and a size like 0.2 can leave an animal standing on a sliver of
  health it should not have. A test checks every damage size in the game.

Neither beam is a delete key. Animals have to be **held in the beam** for a
moment before they go — swing away too soon and they cool off — and a lit beam
is heavy, so you steer slowly while it burns. Pick your column and hold your
nerve. Swept out and back, one burn of the Red Laser takes about two thirds of
an ordinary wave and one of the Electric Arc can take all of it, so you will
still want more than one burn. Both pass straight over your own bases, so they
can't wreck your cover.

There is one thing worth knowing about **which way you sweep**. The herd is
always drifting one way or the other, and an animal only melts if the beam stays
on it long enough. Sweep the way the herd is going and each animal sits in your
beam for about 22 steps; sweep against it and you get only 18. Against a **tough**
herd, which has to be melted twice, that difference is the whole difference
between clearing half of what you pass and clearing none of it.

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

### A shop of ten 🏪

Past eight ships one column of cards is too short to hold a ship's name, what it
does and what it costs without one line landing on another. So the shop goes
into **two columns**, the same as the level list does — and two columns make the
cards **taller**, not shorter.

A narrow card has no room for a FLY THIS button beside it, so **the whole card
is the button**. Again the same as the level list, where you tap a line rather
than a box next to it.

The blurb's size is not picked by hand. It is worked out from the **longest line
any ship has** and the room a card leaves for it, so a wordy new ship shrinks the
writing instead of running it off the side. Courier is a typewriter face — every
letter is exactly 0.6 of the size across — which is what makes that a sum rather
than a guess.

Your best run, your ship, and the high scores are all kept in this browser on
this computer — there's no internet server, so they don't follow you to another
device.

Ships out of reach? Each one's `need` lives in the `SHIPS` list near the top of
`index.html` — make the numbers smaller and the good ships arrive sooner. The
Flamethrower has `bank` instead of `need`, because it is paid for out of the
bank rather than out of one run.

Want to meet the Big Chick without playing fifteen stages? Change `BOSS_EVERY`
to `1` and it turns up straight away — and `CROWN_STAGE` to `1` for the crowned
one. `BOSS_HP` makes it tougher or softer,
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

### The stars, and how sharp your screen is 🌟

The stars are drawn on their own canvas behind the game. A canvas has two
sizes: how big the page says it is, and how many real pixels it is built from.
An iPad packs **four real pixels into each pixel the page measures in** — two
across and two down.

The star canvas used to be built at the page size. The iPad then had to stretch
it to fit its screen, and stretching doubled every star and softened its edges.
That is why the stars looked like fat blobs on an iPad and like sharp points on
a computer.

Now the canvas is built at the real size, the drawing is scaled to match, and
the glow pictures are baked at the same sharpness so a stamp of one is never
stretched. Everything else still works in page pixels, in `skyW` and `skyH`, so
nothing had to change but the three lines that set the canvas up.

Measured, a star is now the same width in page pixels on both, and the sky costs
**0.13 ms a frame** either way — 1.6% of a frame — because the extra pixels are
the screen's work, not the game's.

Two is as sharp as it goes. Past that the picture is no better and a phone is
painting nine times the pixels for nothing.

### One place emoji do not belong 📵

An **animal, a shot or a ship** can be an emoji — those are drawn in the middle
of their own square and nothing else depends on how wide they turn out.

**Writing along the top of the screen is different.** The lives are laid out
from the **right-hand edge inwards**, so where the row starts depends on how
wide it is. An iPad does not measure an emoji the way a computer does, and the
lives used to be `"❤️".repeat(lives)`: on an iPad the row was measured far too
narrow, started too far right, and everything after the "L" of LIVES was off the
side of the screen.

The heart is now a pixel drawing like every other picture in the game
(`HEART_ART`), and `drawLives()` works out where each one goes from `HEART` and
`HEART_GAP` — numbers we know. Nothing is measured, so nothing can be measured
wrongly.

The tests now sweep **every screen in the game** and fail if any text drawn on
any of them carries an emoji. Putting the old line back is caught by 17 of them.

Have fun! 🚀
