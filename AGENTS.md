# Working on the organization profile

FieldmouseWorks/.github holds what GitHub shows for the whole organization.
`profile/README.md` is the page at github.com/FieldmouseWorks, live as soon as
it lands on `main`.

<!-- house:rules v1 begin. Copied from FieldmouseWorks/burrow house/rules.md, verbatim. Change it there, not here: burrow's house sync rewrites everything between these markers. -->
## House rules

These hold in every repo. This file's own sections add to them and win where
they're more specific.

- Design the class, not the instance. When a bug, finding or stall shares a
  cause with others, fix the cause once, where it lives (one owning path, a
  type, a check), so none of its cases come back.
- Do work once. Look for what's already open or built first, extend the
  shared crate, client or job that does it rather than write another copy,
  and never run work twice that once would do.
- Fix the whole cause: no workarounds, shims, fallbacks or half-migrations.
  When you replace something, delete the old path in the same change.
- One fact, one home. Each rule or fact lives in one place; link to it
  instead of restating it.
- Before you edit, say what done looks like and how it will be checked.
- Report only the checks you ran and what they said. Skipped, unavailable
  or "should pass" is never a pass. Keep local and CI results apart.
- A new check comes with proof that it fails on the bug it's for.
- The code is the memory. When something goes wrong, make the code, a type,
  a test or a check stop it happening again; a new rule here is the last
  resort. Say in the PR which one you did.
- Keep going on work you were asked to do: don't ask again for what's
  already been asked for.
- Never commit what the repo keeps private: secrets, tokens, personal data,
  and anything under this file's "Private" section.
- `Closes #N` only when the issue is fully done; otherwise `Refs #N`.

CI's house check holds every PR to its title's style and to the rules below,
each of which a PR can pass with a line in its body starting as shown and a
reason of four words or more. Editing the body or title runs it again.

- Rust by default, shell included: new code meant to last starts in Rust
  unless its platform picks the language, and a coin toss goes to Rust. A PR
  that adds Python, or grows Python and shell past a fix, says `Why not
  Rust:` (a file a tool generates, glue that only runs another program, a
  throwaway script, a tool still being tuned). Port existing Python and
  shell whenever Rust buys anything, system and pipeline code first.
- Work starts from an event (a push, a webhook, a unit finishing), not a
  clock. A PR that adds a timer or a cron schedule says `Why a timer:`.
- Split a code file before it passes 1,000 lines, or say `Why not split:`.
- AGENTS.md is a map: what the repo is, its own rules, and where things live
  (a feature map, the doc that owns each subject). Detail goes in the doc
  that owns it, linked from here. A PR that grows the repo's own part (the
  lines outside these blocks) past 100 lines says `Why a longer guide:`.
- Tracked files never name a model: which model does what is the machine's
  business, and names go stale in weeks. A line that has to (a recorded
  screen in a test) says `Why a model name:`.

### Commits

Subjects are `area: plain sentence`, the area being the module, directory or
tool the change is about (`autoland: merge only the head that was checked`):
lowercase after the colon, no trailing period, no `feat:`/`fix:`. The body,
if any, says why. A PR's title is the subject main gets, so it's written the
same way. Keep the git identity your machine gives you: a commit signed with
a key that isn't its author's shows as Unverified, and CI fails it.
<!-- house:rules end -->

## The profile

- `profile/README.md` is the org page; `profile/assets/` holds its banners, a
  light and a dark one picked by `<picture>`.
- The page loads its images by absolute URL from
  `raw.githubusercontent.com/FieldmouseWorks/.github/main/`, because GitHub
  doesn't resolve relative image paths on the org page. Renaming or deleting
  an asset breaks the live page; the `links` check catches it.
- What the page says about each project follows that project's own README and
  status docs. Don't claim more than they do.
- Everything here is public, and GitHub reads files under `.github/` in this
  repo as defaults for every repo in the org that has none of its own. Adding
  one (issue templates, `SECURITY.md`, workflow templates) changes every repo.

## Build and test

There's nothing to build. `nix flake check` is the gate, the same locally and
in CI: lychee, offline, over every Markdown file, with the profile's
`raw.githubusercontent.com` URLs for this repo mapped onto the checkout, so
every local link, image and `#fragment` must be found. External links aren't
checked. `nix develop` has lychee.

## Pull requests

Open PRs ready for review, never as drafts, and leave them to the steward: it
asks Codex for a review, and once Codex finds nothing on your head, every
review thread is resolved and CI is green, it merges the PR. Fix or answer
every finding: push the fix and reply with the commit, or reply with why it's
wrong, then resolve the thread. Don't merge it yourself.

## Code Review Rules

For reviewers, Codex included. Flag as P1:

- a change that makes a check pass without fixing the thing it checks
- tests or checks weakened, skipped or deleted to get green
- secrets, tokens or personal data in the diff or the logs it adds
- behavior changed beyond what the PR says it does
- a broken org page: an image, link or `#fragment` that no longer resolves,
  or an asset renamed or removed while the page still points at it
- a claim about a project (status, features, license) its own README doesn't
  back up
- a new file under `.github/` (issue or PR templates, `SECURITY.md`,
  `FUNDING.yml`, workflow templates) the PR doesn't call out as becoming the
  default for every repo in the org
