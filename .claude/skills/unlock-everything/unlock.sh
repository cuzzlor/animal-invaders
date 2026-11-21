#!/bin/zsh
# Fill the local game's save in Chrome with everything (see unlock.js), then
# reload the tab and print what the game itself now reports.
# Needs Chrome's View > Developer > Allow JavaScript from Apple Events.
#
# JavaScript sent from AppleScript runs in an isolated world: it shares the
# page's localStorage and DOM but cannot see the game's variables (SHIPS,
# LEVELS, ...). So each piece of code is put into the page as a <script>
# tag, which runs as part of the game, and leaves its answer on <html> for
# AppleScript to read back.
set -e
here=${0:A:h}
game="file://${here:h:h:h}/index.html"

# inPage FILE -> JS that runs FILE's code in the page and returns its result
inPage() {
  local b64=$(base64 < "$1" | tr -d '\n')
  print -r -- "(function(){
    var code = decodeURIComponent(escape(atob('$b64')));
    var s = document.createElement('script');
    s.textContent = 'document.documentElement.dataset.cheat = (function(){ try { return String(' + code.trim().replace(/;\$/, '') + '); } catch (e) { return \"ERROR: \" + e; } })();';
    document.documentElement.appendChild(s); s.remove();
    var out = document.documentElement.dataset.cheat;
    delete document.documentElement.dataset.cheat;
    return out;
  })()"
}

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
inPage "$here/unlock.js" > "$tmp/write.js"
print -r -- "SHIPS.filter(s => unlocked(s)).length + ' of ' + SHIPS.length + ' ships earned, ' + SHIPS.filter(s => upsOn(s) >= UP_MAX).length + ' upgraded, gems ' + gems() + ' of ' + LEVELS.length + ', bank ' + bank + ', left to spend ' + purse()" > "$tmp/check.src"
inPage "$tmp/check.src" > "$tmp/check.js"

osascript - "$game" "$tmp/write.js" "$tmp/check.js" <<'EOF'
on findTab(game)
  tell application "Google Chrome"
    repeat with w in windows
      set i to 0
      repeat with t in tabs of w
        set i to i + 1
        if URL of t starts with game then return {w, i}
      end repeat
    end repeat
  end tell
  return missing value
end findTab

on run argv
  set game to item 1 of argv
  set writeJs to read POSIX file (item 2 of argv) as «class utf8»
  set checkJs to read POSIX file (item 3 of argv) as «class utf8»
  tell application "Google Chrome"
    if (count of windows) is 0 then make new window
    set found to my findTab(game)
    if found is missing value then
      tell front window to make new tab with properties {URL:game}
      delay 1
      set found to my findTab(game)
    end if
    set w to item 1 of found
    set t to tab (item 2 of found) of w
    repeat while loading of t
      delay 0.2
    end repeat
    set wrote to execute t javascript writeJs
    tell t to reload
    delay 0.5
    repeat while loading of t
      delay 0.2
    end repeat
    set check to execute t javascript checkJs
    set active tab index of w to (item 2 of found)
    set index of w to 1
    activate
  end tell
  return "Wrote:" & linefeed & wrote & linefeed & linefeed & "Game now reports: " & check
end run
EOF
