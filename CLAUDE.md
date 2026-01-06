# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Hugo static site for "Kammermusikkonzerte Hondrich" (chamber music concerts in Hondrich, Switzerland). The website displays concert seasons, individual concert details, and handles seat reservations.

## Development Commands

```bash
# Run local development server with drafts enabled
hugo server -D --disableFastRender

# Build the site
hugo
```

## Architecture

### Content Structure

- **Concerts**: Located in `content/saisons/{year}/` with markdown files named `YYYYMMDD_concert_name.md`
- **Season index files**: Each season folder has `_index.md` defining the `saison` parameter and layout
- **Static pages**: `content/kontakt.md`, `content/infos.md`, `content/_index.md` (homepage)

### Concert Frontmatter

Concert markdown files require these frontmatter fields:
- `title`: Concert title
- `date`: Concert date/time (format: `2026-01-10T17:00:00+01:00`)
- `publishDate`: When the concert should become visible
- `image`: Path to concert image (e.g., `/2026_i_galanti.jpg`)
- `concertId`: Beachtowel reservation system ID (format: `e-XXXXX`)
- `musicians`: List of performer names with instruments
- `homepage`: Optional external website

Optional fields:
- `date_unknown`: Set if concert date is TBD
- `location`: Custom venue (defaults to Hondrich)
- `booked`: Set to show "almost fully booked" warning

### Theme & Layouts

- Custom theme in `themes/kmkh/`
- Special layouts in `layouts/special/`:
  - `konzerte.html`: Season concert list
  - `saison.html`: All seasons overview
  - `simple.html`: Simple static pages

### Key Configuration

In `config.toml`:
- `params.currentSaison`: Controls which season shows as "current" and enables reservations

### Reservation System

The site uses "Beachtowel" (external service) for seat reservations. Reservations are only enabled for concerts in the current season that have a `concertId`.

### Data Files

- `data/monate.yaml`: German month names
- `data/tage.yaml`: German weekday names

### CMS Configuration

`.pages.yml` configures CloudCannon or similar CMS for content editing.
