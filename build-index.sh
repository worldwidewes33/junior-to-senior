#!/usr/bin/env bash
# Regenerates index.html from lessons/*.html and reference/*.html.
# Titles come from each page's <title>. Run via ./publish.sh; safe to run alone.
set -euo pipefail
cd "$(dirname "$0")"

title_of() { grep -oE '<title>[^<]*</title>' "$1" | head -1 | sed -E 's/<\/?title>//g'; }

list() {
  local dir=$1
  for f in $(ls "$dir"/*.html 2>/dev/null | sort -r); do
    printf '      <li><a href="%s">%s</a></li>\n' "$f" "$(title_of "$f")"
  done
}

lessons=$(list lessons)
reference=$(list reference)
[ -n "$lessons" ] || lessons='      <li class="empty">No lessons yet.</li>'
[ -n "$reference" ] || reference='      <li class="empty">Nothing here yet.</li>'

cat > index.html <<HTML
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Junior to Senior</title>
<style>
  :root{--ink:#1a1a1a;--muted:#6b6b6b;--rule:#d9d4c9;--bg:#fbfaf6;--accent:#7a3b2e;
        --serif:Georgia,'Iowan Old Style',serif;--sans:-apple-system,system-ui,sans-serif}
  @media (prefers-color-scheme: dark){
    :root{--ink:#ece9e1;--muted:#a09c93;--rule:#3a3733;--bg:#151412;--accent:#d08a75}
  }
  body{margin:0;background:var(--bg);color:var(--ink);font-family:var(--serif);line-height:1.55}
  main{max-width:38rem;margin:0 auto;padding:3rem 1rem 4rem}
  .kicker{font-family:var(--sans);font-size:.72rem;letter-spacing:.22em;text-transform:uppercase;color:var(--accent);font-weight:600}
  h1{font-size:2rem;margin:.3rem 0 .4rem}
  .dek{color:var(--muted);font-style:italic;margin:0 0 2.2rem}
  h2{font-family:var(--sans);font-size:.78rem;letter-spacing:.18em;text-transform:uppercase;font-weight:700;color:var(--accent);margin:2.4rem 0 .8rem}
  ul{list-style:none;padding:0;margin:0}
  li{border-top:1px solid var(--rule)}
  li:last-child{border-bottom:1px solid var(--rule)}
  li a{display:block;padding:.9rem .2rem;color:var(--ink);text-decoration:none;font-size:1.05rem}
  li a:hover{color:var(--accent)}
  .empty{padding:.9rem .2rem;color:var(--muted)}
  footer{margin-top:3rem;font-family:var(--sans);font-size:.75rem;color:var(--muted)}
</style>
</head>
<body>
<main>
  <div class="kicker">Junior to Senior</div>
  <h1>Strategic programming, one lesson at a time</h1>
  <p class="dek">Lessons and references, newest first.</p>

  <h2>Lessons</h2>
  <ul>
$lessons
  </ul>

  <h2>Reference</h2>
  <ul>
$reference
  </ul>

  <footer>Updated $(date '+%Y-%m-%d')</footer>
</main>
</body>
</html>
HTML
echo "index.html rebuilt"
