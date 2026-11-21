// Fills this browser's save for the game with everything: every level
// reached and beaten, every gem, every ship, every ship's upgrade, and a
// bank that still covers the dearest ship. Run it inside the game's page
// (it reads the game's own SHIPS, LEVELS and *_KEY values), then reload.
// It only adds: a bank or best run already higher than these is kept.
(() => {
  const allUps = {};
  for (const s of SHIPS) allUps[s.id] = UP_MAX;
  const allSpent = SHIPS.length * UP_MAX * UP_PRICE;
  const dearest = Math.max(0, ...SHIPS.map((s) => s.bank || 0));
  const bestNeed = Math.max(0, ...SHIPS.map((s) => s.need || 0));
  const curBank = Number(localStorage.getItem(BANK_KEY)) || 0;
  const curBest = Number(localStorage.getItem(BEST_KEY)) || 0;
  localStorage.setItem(RUNG_KEY, String(LEVELS.length));
  localStorage.setItem(DONE_KEY, "1");
  localStorage.setItem(GEM_KEY, JSON.stringify(LEVELS.map((_, i) => i + 1)));
  localStorage.setItem(BEST_KEY, String(Math.max(curBest, bestNeed)));
  localStorage.setItem(BANK_KEY, String(Math.max(curBank, dearest + allSpent)));
  localStorage.setItem(UP_KEY, JSON.stringify(allUps));
  localStorage.setItem(SPEND_KEY, String(allSpent));
  return Object.keys(localStorage)
    .filter((k) => /^ai-(rung|done|gems|best|bank|ups|spent)$/.test(k))
    .map((k) => k + " = " + localStorage.getItem(k))
    .join("\n");
})();
