# Academic Personal Website

A local personal website in the style of [danaesavi.github.io](https://danaesavi.github.io/) —
built on the **AcademicPages** Jekyll template (MIT license, a fork of the Minimal
Mistakes theme). Sidebar with photo + bio + social icons, home page with news,
Publications / Talks / Teaching / CV pages.

All personal content is placeholder — replace it with yours.

## Run locally

```bash
bundle install
bundle exec jekyll serve
# → http://localhost:4000
```

Requires Ruby (system Ruby 2.6 works; Jekyll 4 is pinned in the Gemfile).
After editing `_config.yml` you must restart the server.

## Where to edit what

| What                          | File                                                        |
| ----------------------------- | ----------------------------------------------------------- |
| Name, avatar, bio, email, socials (sidebar) | `_config.yml` → `author:` block |
| Avatar photo                  | `images/profile-photo.jpg` (square, ≥600px recommended)     |
| Site title / description      | `_config.yml` → `title`, `description`                      |
| Nav menu                      | `_data/navigation.yml`                                      |
| Home page (bio + News)        | `_pages/about.md`                                           |
| Publications list             | `_pages/publications.md` (one `<div class="columns">` block per paper) |
| CV page + blog log            | `_pages/cv.md`; the CV PDF itself lives in `files/CV.pdf`   |
| Teaching                      | `_pages/teaching.md`                                        |
| Talks (auto-listed)           | one file per talk in `_talks/YYYY-MM-slug.md` (see template format in `markdown_generator/talks.tsv`) |

## Adding a publication

Copy a `<div class="columns"> … </div>` block in `_pages/publications.md` and update:
1. the venue badge — `{% include button.html button_name="COLM" %}` (any short label),
2. the title line + author list (your own name in `<b>…</b>`),
3. the buttons — `{% include buttonLink.html button_name="Paper" button_class="primary" button_link="URL" %}`
   (Paper / Code / Data / Slides / Poster — add as many as you like),
4. the 1–2 sentence summary in the `<ul class="custom">`.

Newest first. There is also a BibTeX/TSV → markdown generator in
`markdown_generator/` if you prefer that workflow.

## Deploying (later)

1. Push this repo to GitHub as `<username>/<username>.github.io`.
2. In `_config.yml` set `url: https://<username>.github.io`.
3. GitHub Pages builds with the `github-pages` gem (see
   [academicpages.github.io](https://academicpages.github.io/) for the standard
   workflow file) — same source, no changes needed.
