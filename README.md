# Personal Academic Website

A modular Jekyll-based GitHub Pages template for academic profiles (e.g., PhD applications). Content is separated from layout for easy updates.

## Structure

```
├── _config.yml          # Site config, your name, email, photo path
├── _data/
│   └── links.yml        # GitHub, ORCID, Google Scholar, etc.
├── _layouts/            # HTML templates (rarely need to edit)
├── _includes/           # Reusable components
├── _content/
│   ├── statement.md     # About me (edit this, supports Markdown)
│   └── publications.md # Publications (Markdown, separated by -----)
├── index.md             # Home page (uses layout)
└── assets/
    ├── css/main.css     # Styles
    └── images/          # Add photo.jpg here
```

## Editing Content

1. **Profile** — Edit `_config.yml`:
   - `author.name`, `author.email`
   - `author.photo` path (default: `/assets/images/photo.jpg`)

2. **Links** — Edit `_data/links.yml`:
   - Add/remove entries with `name` and `url`

3. **Publications** — Edit `_content/publications.md`:
   - All content in Markdown; each publication separated by `-----` (dashes do not appear in output)
   - Optional collapsible comment: use `<details><summary>**Title.** Authors...</summary>comment...</details>` (summary = citation; click to expand)
   - LaTeX math: use `$...$` (inline) or `$$...$$` (display)

4. **About me** — Edit `_content/statement.md` (full Markdown support)

5. **Photo** — Place `photo.jpg` in `assets/images/`

## Local preview

```bash
jekyll serve
```

Then open http://localhost:4000. (Install Jekyll with `gem install jekyll` if needed.)

## Deploy

Push to GitHub. The site builds automatically and will be live at `https://GJCPP.github.io`.
