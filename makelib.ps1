# Delete previous files
Remove-Item 'docs\library' -Force -Recurse -ErrorAction SilentlyContinue
Remove-Item 'docs\index.html' -Force -ErrorAction SilentlyContinue


# Tiddlywiki select edition: 5.1.21, 5.1.22, fix-syncer
$edition = "5.1.24"

# Make library
node d:/Tiddlywiki/$edition/tiddlywiki.js . --output docs/library --build library
node d:/Tiddlywiki/$edition/tiddlywiki.js  docs --output docs --build index
