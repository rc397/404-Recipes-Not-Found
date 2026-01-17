# 404 Recipes Not Found

A parody cookbook of failed recipes with code-style error messages. Built for easy collaboration.

## MVP
- Static site from Markdown
- Each recipe page includes: “error”, “stack trace”, “fix attempt”, and “postmortem”

## Stretch Goals
- Submit new recipes via PR template
- Tags and search
- Fun cover page styled like a terminal

## Suggested Stack
- Markdown + GitHub Pages

## Next Steps
- This project now includes a plain static HTML site (no Ruby/Jekyll needed)
- Start page: `docs/index.html`
- Recipes list: `docs/recipes.html`
- Add recipes in `docs/recipes/` (copy `docs/recipes/recipe-template.html`)

## Run locally
- Easiest: open `docs/index.html` in your browser
- Optional local server: run `./serve.ps1` (uses Python if installed)

## GitHub Pages
- In repo settings, set Pages source to the `docs/` folder
- `.nojekyll` is included so Pages serves the site as-is
