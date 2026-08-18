source "https://rubygems.org"

# Local build pins Jekyll 4 directly (lightweight, works on Ruby 2.6+).
# If you deploy via GitHub Actions, the official academicpages workflow
# installs the full `github-pages` gem group instead — both produce the
# same site from this repo.
gem "jekyll", "~> 4.3.0"
gem "ffi", "~> 1.15" # listen dep; last line supporting Ruby 2.6

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-sitemap"
end
