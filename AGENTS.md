# OpenCode Instructions

This repository is a Typst-based resume.

## Build Commands

- **Standard Build:** `typst compile --font-path ./fonts resume.typ`
- **Targeted Build:** Use the `TARGET_SECTORS` environment variable to include
  specific tailored content (e.g.,
  `TARGET_SECTORS=ai,education typst compile resume.typ`).

## Architecture & Conventions

- **Entry point:** `resume.typ`
- **Content:** Modules are located in `profile_en/` (`work.typ`, `skills.typ`,
  etc.).
- **Configuration:** `metadata.toml` contains personal information, design
  tweaks, and template settings.
- **Template:** This project uses the `@preview/brilliant-cv` package
  (referenced in `requirements.typ`).
