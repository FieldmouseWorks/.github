<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/FieldmouseWorks/.github/main/profile/assets/banner-dark.png">
    <img src="https://raw.githubusercontent.com/FieldmouseWorks/.github/main/profile/assets/banner-light.png" alt="Fieldmouse Works: a field mouse on a rock looking up into a shaft of light. Open tools for closed systems." width="520">
  </picture>
</p>

<p align="center">
  <a href="https://fieldmouseworks.com">Website</a> ·
  <a href="#projects">Projects</a> ·
  <a href="#principles">Principles</a> ·
  <a href="#get-involved">Get involved</a>
</p>

Fieldmouse Works builds open-source software for ecosystems that are expensive, restrictive, or difficult to leave. You should be able to run the software, understand how it behaves, move your data, and keep operating on your own terms.

Built and maintained by **[Peter Permenter](https://github.com/TusanHomichi)**. The current focus is upgrade paths for old Linux machines, machines run by AI coding agents, and self-hosted software for emergency communications.

## Projects

### [Consolebook](https://github.com/FieldmouseWorks/consolebook) · training records for emergency communications

Self-hosted training records for emergency communications centers, with agency-owned data, written by a working 911 dispatcher. `npm run demo` serves a throwaway installation full of invented records; the README has screenshots.

- **The training record, end to end.** Versioned programs, Daily Observation Reports, weekly summaries, task signoffs, and trainee histories, with assignment-scoped access.
- **Records you can defend.** Finalized records are immutable; corrections create amendments or successor versions. Acknowledgments, retention policies, and holds are built in.
- **Data you can take with you.** Verifiable record exports, trainee packets, and a complete installation export that carries everything except credentials.
- **Small enough to run yourself.** One executable and one data directory, installed with one command. Upgrades take a validated backup before any database migration.

**Status:** pre-alpha, [v0.3.0](https://github.com/FieldmouseWorks/consolebook/releases/latest), for development and evaluation only; never use real personnel data. AGPL-3.0-only.<br>
[Repository](https://github.com/FieldmouseWorks/consolebook) · [Install guide](https://github.com/FieldmouseWorks/consolebook/blob/main/docs/install.md) · [Roadmap](https://github.com/FieldmouseWorks/consolebook/blob/main/docs/roadmap.md) · [Contributing](https://github.com/FieldmouseWorks/consolebook/blob/main/CONTRIBUTING.md)

### [wend](https://github.com/FieldmouseWorks/wend) · proven upgrade routes for old Linux machines

Upgrade a 2007 server to today, one release at a time, along a path someone already proved works.

- **A map, not a magic upgrader.** Small, reviewed fixes for the places where a plain release upgrade breaks, pinned into release-to-release routes. The machine's own package manager stays in charge.
- **Five routes so far:** Debian 4.0 etch (2007) to Debian 13, Ubuntu 14.04 to 26.04, and CentOS 5, 7 and 8 to AlmaLinux 10, crossing yum to dnf and the /usr merge.
- **Every route carries evidence:** replays from scratch on test machines, with every health check green. Kernels, bootloaders and real reboots are tested separately in VMs.
- **No model at upgrade time.** A static Rust client (in progress) will snapshot before each hop and roll back if a check fails. When a hop breaks, a scrubbed gap report the user reviews feeds the next fix.

**Status:** early; the fix format may still change. MIT OR Apache-2.0.<br>
[Repository](https://github.com/FieldmouseWorks/wend) · [Spec](https://github.com/FieldmouseWorks/wend/blob/main/SPEC.md) · [Contributing](https://github.com/FieldmouseWorks/wend/blob/main/CONTRIBUTING.md)

### [burrow](https://github.com/FieldmouseWorks/burrow) · NixOS modules for a machine you run by talking to Claude

Give a coding agent the whole machine, and make nearly everything it does undoable instead of asking permission for it.

- **Undo instead of prompts.** Claude Code runs with permissions bypassed system-wide. A guard takes a ZFS snapshot before anything deletes files. The few one-way doors (wiping disks, flashing firmware, deleting remote data, force-pushing main) still ask.
- **System changes that revert themselves.** A new NixOS generation goes live but isn't the boot default; unless it's confirmed within 10 minutes, the old one comes back. A new kernel gets one trial boot and is dropped if it hangs.
- **Everything current, unattended.** Flake inputs and Claude Code are bumped, built, VM-tested and health-checked before and after; anything that breaks reverts and becomes an agent job. Renovate covers every repository, and new CVEs from CISA KEV, vulnix and osv-scanner become agent jobs the same hour.
- **One front door.** An always-on operator session you talk to from your phone changes the machine itself and hands project work to per-project sessions, or to a microVM per task with allowlisted egress and no GitHub token.

**Status:** in daily use on one machine; options may still move. MIT.<br>
[Repository](https://github.com/FieldmouseWorks/burrow) · [Example machine](https://github.com/FieldmouseWorks/burrow/blob/main/examples/minimal.nix)

## Principles

- **Operate on your own terms.** Self-hosting, understandable deployments, and freedom from permanent vendor dependence are design priorities.
- **Make state and recovery explicit.** Inspectable behavior, durable records, useful exports, and reproducible recovery matter as much as the happy path.
- **Keep the claims honest.** Implemented features, experiments, and future plans stay clearly separated. Each project's README and status documents describe its actual readiness.

## Get involved

Start with the README and contribution guide of the project that interests you. Reproducible bug reports, documentation corrections, and feedback grounded in real workflows are welcome.

- **wend:** a gap report from a real upgrade that broke is the most useful contribution. Fixes come in as pull requests that CI replays.
- **burrow:** a report from running it on a machine other than the one it was built on is the most useful thing right now.
- **Consolebook:** use invented examples. Never submit real personnel records or operational data.

## Why the field mouse?

A small creature willing to take on something much larger than itself. That is a useful model for the work here: understand the closed system, then build the open door.

<sub>[fieldmouseworks.com](https://fieldmouseworks.com) ([source](https://github.com/FieldmouseWorks/website)) · [peter@fieldmouseworks.com](mailto:peter@fieldmouseworks.com) · Peter's games and runtime research live on his [personal profile](https://github.com/TusanHomichi).</sub>
