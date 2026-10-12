# Homebrew tap for Nova

```sh
brew install industrialai-inc/nova/nova
brew upgrade nova
```

`Formula/nova.rb` installs the `nova` command-line client from the release archives at <https://nova.endeavorai.com/dl>. `scripts/update-formula.sh` writes it from the newest release, and the Update formula workflow runs that every hour (or on demand) and commits the result. Don't edit the formula by hand.

Without Homebrew:

```sh
curl -fsSL https://nova.endeavorai.com/install.sh | sh
```
