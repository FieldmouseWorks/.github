<p align="center">
  <img src="https://raw.githubusercontent.com/FieldmouseWorks/fieldmouseworks.github.io/main/assets/fieldmouse-works-avatar-512.png" alt="Fieldmouse Works: a field mouse looking up from a rock" width="128" height="128">
</p>

<h1 align="center">Fieldmouse Works</h1>

<p align="center"><strong>Open tools for closed systems.</strong></p>

<p align="center">
  <a href="#projects">Projects</a> ·
  <a href="#principles">Principles</a> ·
  <a href="https://fieldmouseworks.com">Website</a> ·
  <a href="https://github.com/TusanHomichi">The person behind the work</a>
</p>

Fieldmouse Works builds open-source software for ecosystems that are expensive, restrictive, or difficult to leave. You should be able to run the software, understand how it behaves, move your data, and keep operating on your own terms.

Built and maintained by **[Peter Permenter](https://github.com/TusanHomichi)**. The current focus is upgrade paths for old Linux machines and self-hosted software for emergency communications.

## Projects

### [wend](https://github.com/FieldmouseWorks/wend)
**Proven upgrade routes for old Linux machines**

Upgrade a 2007 server to today, one release at a time, along a path someone already proved works. wend is a map of small, reviewed fixes for the places where a plain release upgrade breaks, pinned into release-to-release routes. Every route carries evidence: replays from scratch on test machines in which every health check stayed green. The machine's native package manager stays in charge.

Routes with passing replays now cover **Debian 4.0 etch (2007) to Debian 13**, **Ubuntu 14.04 to 26.04**, and **CentOS 5, 7, and 8 to AlmaLinux 10**, including the yum-to-dnf crossing and the /usr merge, with no model calls during a replay. A static Rust client is in progress. It will fingerprint a machine, pick a route, snapshot before each hop, and roll back if a check fails, using no model and no network beyond the distribution's mirrors. When a hop breaks, a scrubbed gap report that the user reviews before submitting feeds the next fix.

**Status:** early. Routes cover userland only; kernels, bootloaders, and reboots are not covered yet. The fix format may still change, and existing fixes will be migrated by script.

[Repository](https://github.com/FieldmouseWorks/wend) · [Spec](https://github.com/FieldmouseWorks/wend/blob/main/SPEC.md) · [Contributing](https://github.com/FieldmouseWorks/wend/blob/main/CONTRIBUTING.md) · [Agent playbook](https://github.com/FieldmouseWorks/wend/blob/main/AGENTS.md)

### [Consolebook](https://github.com/FieldmouseWorks/consolebook)
**Self-hosted training records for emergency communications**

Training programs, Daily Observation Reports, weekly summaries, task signoffs, and trainee histories, with agency-owned data and portable records. Implemented workflows include versioned programs, assignment-scoped access, immutable finalized records, acknowledgments, amendments, retention policies and holds, verifiable record exports, trainee packets, and a complete installation export that carries everything except credentials.

Rust and Axum, SQLite, and an embedded SvelteKit interface: **one executable and one data directory per installation**. A one-command Linux installer handles install and upgrade, and every upgrade that migrates the database takes a validated backup first. The design targets a small center's ability to operate its own system without a collection of external services.

**Status:** pre-alpha, [v0.3.0](https://github.com/FieldmouseWorks/consolebook/releases/latest). Usable for development and evaluation only; do not use production or personnel data. Confirmed disposition, deterministic PDFs, and restore drills on real hosts remain on the [roadmap](https://github.com/FieldmouseWorks/consolebook/blob/main/docs/roadmap.md).

[Repository](https://github.com/FieldmouseWorks/consolebook) · [Install guide](https://github.com/FieldmouseWorks/consolebook/blob/main/docs/install.md) · [Architecture](https://github.com/FieldmouseWorks/consolebook/blob/main/docs/architecture.md) · [Product principles](https://github.com/FieldmouseWorks/consolebook/blob/main/PRINCIPLES.md) · [Contributing](https://github.com/FieldmouseWorks/consolebook/blob/main/CONTRIBUTING.md)

## Principles

- **Operate on your own terms.** Self-hosting, understandable deployments, and freedom from permanent vendor dependence are design priorities.
- **Make state and recovery explicit.** Inspectable behavior, durable records, useful exports, and reproducible recovery matter as much as the happy path.
- **Keep the claims honest.** Implemented features, experiments, and future plans should be clearly separated. Each project's README and status documents describe its actual readiness.

Licensing is project-specific: wend's code and content use **MIT OR Apache-2.0**. Consolebook uses **AGPL-3.0-only**. See each repository's license files for the terms.

## Elsewhere

The website, [fieldmouseworks.com](https://fieldmouseworks.com), is built from [its own repository](https://github.com/FieldmouseWorks/fieldmouseworks.github.io).

For Peter's native game reconstruction, persistent-world games, and runtime research, see his [personal profile](https://github.com/TusanHomichi).

## Why the field mouse?

A small creature willing to take on something much larger than itself. That is a useful model for the work here: understand the closed system, then build the open door.

## Get involved

Start with the README and contribution guide in the project that interests you. Reproducible bug reports, documentation corrections, and feedback grounded in real workflows are welcome. For wend, a gap report from a real upgrade that broke is the most useful contribution, and fixes come in as pull requests that CI replays. For Consolebook, use invented examples and never submit real personnel records or operational data.

[fieldmouseworks.com](https://fieldmouseworks.com) · [Peter's profile](https://github.com/TusanHomichi) · [peter@conary.io](mailto:peter@conary.io)
