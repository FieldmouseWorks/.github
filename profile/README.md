<p align="center">
  <img src="https://raw.githubusercontent.com/FieldmouseWorks/fieldmouseworks.github.io/main/assets/fieldmouse-works-avatar-512.png" alt="Fieldmouse Works: a field mouse looking up from a rock" width="128" height="128">
</p>

<h1 align="center">Fieldmouse Works</h1>

<p align="center"><strong>Open tools for closed systems.</strong></p>

<p align="center">
  <a href="#projects">Projects</a> ·
  <a href="#principles">Principles</a> ·
  <a href="https://github.com/TusanHomichi">The person behind the work</a>
</p>

Fieldmouse Works builds open-source software for ecosystems that are expensive, restrictive, or difficult to leave. You should be able to run the software, understand how it behaves, move your data, and keep operating on your own terms.

Built and maintained by **[Peter Permenter](https://github.com/TusanHomichi)**. The current focus is Linux package infrastructure and self-hosted software for emergency communications.

## Projects

### [Conary](https://github.com/FieldmouseWorks/Conary)
**Cross-distro Linux package infrastructure**

A Rust package manager for RPM, DEB, Arch, and native CCS packages on Fedora, Ubuntu, and Arch. Source-format lifecycle contracts, dependency resolution, content-addressed storage, recorded changesets, and immutable system generations make package behavior and recovery explicit.

The same workspace contains **Remi**, the package-conversion and signed-catalog service. Public package-feed availability is tracked separately from the ability to build or run the client.

**Status:** pre-alpha preview; use a VM or disposable host. This is not a production replacement for the host's native package manager. Read the [current status](https://github.com/FieldmouseWorks/Conary#status) and [launch gates](https://github.com/FieldmouseWorks/Conary/blob/main/docs/roadmaps/launch-status.json) before testing.

[Repository](https://github.com/FieldmouseWorks/Conary) · [Documentation and website](https://conary.io) · [Roadmap](https://github.com/FieldmouseWorks/Conary/blob/main/ROADMAP.md) · [Discussions](https://github.com/FieldmouseWorks/Conary/discussions)

### [Consolebook](https://github.com/FieldmouseWorks/consolebook)
**Self-hosted training records for emergency communications**

Training programs, Daily Observation Reports, weekly summaries, task signoffs, and trainee histories, with agency-owned data and portable records. Implemented workflows include versioned programs, assignment-scoped access, immutable finalized records, acknowledgments, amendments, verifiable structured exports, and complete trainee packets.

Rust and Axum, SQLite, and an embedded SvelteKit interface: **one executable and one data directory per installation**. The design targets a small center's ability to operate its own system without a collection of external services.

**Status:** pre-alpha, usable for development and evaluation only. Do not use production or personnel data. Retention and holds, lawful disposition, attachments, PDF rendering, and stronger restore proof remain on the [roadmap](https://github.com/FieldmouseWorks/consolebook/blob/main/docs/roadmap.md).

[Repository](https://github.com/FieldmouseWorks/consolebook) · [Architecture](https://github.com/FieldmouseWorks/consolebook/blob/main/docs/architecture.md) · [Product principles](https://github.com/FieldmouseWorks/consolebook/blob/main/PRINCIPLES.md) · [Contributing](https://github.com/FieldmouseWorks/consolebook/blob/main/CONTRIBUTING.md)

## Principles

- **Operate on your own terms.** Self-hosting, understandable deployments, and freedom from permanent vendor dependence are design priorities.
- **Make state and recovery explicit.** Inspectable behavior, durable records, useful exports, and reproducible recovery matter as much as the happy path.
- **Keep the claims honest.** Implemented features, experiments, and future plans should be clearly separated. Each project's README and status documents describe its actual readiness.

Licensing is project-specific: Conary's client and libraries use **MIT OR Apache-2.0**; its Remi server uses **AGPL-3.0-or-later**. Consolebook uses **AGPL-3.0-only**. See each repository's license files for the terms.

## Elsewhere

The [Fieldmouse Works website source](https://github.com/FieldmouseWorks/fieldmouseworks.github.io) lives in its own repository.

For Peter's persistent-world games, native game reconstruction, and runtime research, see his [personal profile](https://github.com/TusanHomichi).

## Why the field mouse?

A small creature willing to take on something much larger than itself. That is a useful model for the work here: understand the closed system, then build the open door.

## Get involved

Start with the README and contribution guide in the project that interests you. Reproducible bug reports, documentation corrections, and feedback grounded in real workflows are welcome. For Consolebook, use invented examples and never submit real personnel records or operational data.

[Peter's profile](https://github.com/TusanHomichi) · [peter@conary.io](mailto:peter@conary.io)
