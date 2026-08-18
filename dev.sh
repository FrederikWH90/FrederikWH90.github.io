#!/bin/sh
# Build/serve the site locally.
#
# Uses bundler 2.4.22 (last line supporting the system Ruby 2.6) installed in
# the user gem dir. The ffi pin in the Gemfile keeps the native build sane.
export GEM_HOME=$HOME/.gem
unset GEM_PATH
BUNDLE=$HOME/.gem/bin/bundle

cd "$(dirname "$0")"

if [ ! -x "$BUNDLE" ]; then
  echo "bundler not found in ~/.gem — reinstall:"
  echo "  GEM_HOME=\$HOME/.gem gem install --local \$HOME/.gem/cache/bundler-2.4.22.gem"
  exit 1
fi

if [ "$1" = "build" ]; then
  [ -f Gemfile.lock ] || "$BUNDLE" install
  "$BUNDLE" exec jekyll build
  echo "Site built to ./_site (open _site/index.html)"
else
  [ -f Gemfile.lock ] || "$BUNDLE" install
  "$BUNDLE" exec jekyll serve
fi
