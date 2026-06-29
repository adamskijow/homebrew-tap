# Homebrew Tap for Hearth

[Hearth](https://github.com/adamskijow/Hearth) is a background supervisor that
keeps a local LLM runner alive and serving on a headless Mac.

## Install

```sh
brew install --cask adamskijow/tap/hearth
```

That is shorthand for `brew tap adamskijow/tap` followed by
`brew install --cask hearth`.

## Updating the cask

On each Hearth release, set `version` and `sha256` in `Casks/hearth.rb` to the
published DMG's (printed by `scripts/release.sh`), then commit and push here.
