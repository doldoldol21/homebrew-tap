# doldoldol21/homebrew-tap

Homebrew tap for [Dot Buddy](https://github.com/doldoldol21/dot-buddy), a pixel desktop pet for macOS 13+.

```sh
brew install --cask doldoldol21/tap/dot-buddy
```

## First launch

Dot Buddy is ad-hoc signed and not notarized. Homebrew keeps the macOS quarantine flag on, so Gatekeeper blocks the first launch.
Right-click `Dot Buddy.app` and choose Open, or go to System Settings > Privacy & Security and click "Open Anyway".

## Updates

The app updates itself (daily check, Ed25519 signature verified). The cask is marked `auto_updates true`, so a plain `brew upgrade` skips it.
To upgrade through Homebrew anyway: `brew upgrade --cask --greedy doldoldol21/tap/dot-buddy`.

## Remove

```sh
brew uninstall --cask --zap doldoldol21/tap/dot-buddy   # also deletes app data and preferences
```
