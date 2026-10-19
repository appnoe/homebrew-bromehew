# Bromehew

Downloads and Homebrew tap for **Bromehew**, a native macOS front end for [Homebrew](https://brew.sh).

## Install

```bash
brew install --cask appnoe/bromehew/bromehew
```

Or download the disk image of the [latest release](https://github.com/appnoe/homebrew-bromehew/releases/latest),
open it and drag Bromehew to Applications. Bromehew requires macOS 15 Sequoia or later and must be in the
Applications folder to open its menu bar item at login.

Bromehew updates itself (Bromehew › Check for Updates…). The app is signed with a Developer ID and
notarized by Apple.

## Contents

- `Casks/bromehew.rb` – the Homebrew cask
- `appcast.xml` – the update feed read by the app (Sparkle)
- Releases – the signed and notarized disk images

This repository is updated automatically by the release workflow of the (private) source repository.
