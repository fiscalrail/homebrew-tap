# FiscalRail Homebrew tap

Install the [FiscalRail CLI](https://github.com/fiscalrail/fiscalrail-cli):

```sh
brew install fiscalrail/tap/fiscalrail
fiscalrail --help
```

The formula installs the matching release binary for Apple Silicon macOS, Intel
macOS, arm64 Linux, or x86-64 Linux. To update after a new CLI release:

```sh
brew update
brew upgrade fiscalrail/tap/fiscalrail
```

The CLI's [README](https://github.com/fiscalrail/fiscalrail-cli#readme) covers
credentials and commands. This tap currently tracks CLI version 0.5.1. Update
`Formula/fiscalrail.rb` with the new release URLs and SHA-256 hashes when a new
version ships, then run the tap's install checks before merging.
