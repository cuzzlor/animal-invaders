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

Rapid Fire is the only ship you **hold** the button for; every other one fires
once per press. An animal that's been hit but not finished off fades, so you can
see which ones need one more.

The shop shows a bar creeping toward each ship, so you can see how close your
best run has come.

The Red Laser is powerful, but it isn't a delete key. Animals have to be **held
in the beam** for a moment before they melt — swing away too soon and they cool
off — and the beam is heavy, so you steer slowly while it's lit. Pick your
column and hold your nerve. At best one beam takes out about a third of a wave,
so you'll need a few. It passes straight over your own bases, so it can't wreck
your cover.

Your best run, your ship, and the high scores are all kept in this browser on
this computer — there's no internet server, so they don't follow you to another
device.

Ships out of reach? Each one's `need` lives in the `SHIPS` list near the top of
`index.html` — make the numbers smaller and the good ships arrive sooner.

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
