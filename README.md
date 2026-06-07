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
| Play again after you win or lose | `Enter` |

Shoot all the cows to win. Dodge the milk bottles — if one hits you, you lose a
life. Lose all 3 lives (or let the cows reach the bottom) and it's game over.

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
