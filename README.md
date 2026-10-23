# .github

The [Fieldmouse Works](https://github.com/FieldmouseWorks) organization
profile: `profile/README.md` is the page GitHub shows at
github.com/FieldmouseWorks, and `profile/assets/` holds its light and dark
banners.

## Check it

`nix flake check` checks every link, image and `#fragment` in the Markdown
offline (lychee), including the banners the profile loads from
`raw.githubusercontent.com`. CI runs the same on every PR.

## Publish

Merge to `main`. GitHub shows the new profile straight away.

## License

No license yet: all rights reserved until a `LICENSE` file is added.
