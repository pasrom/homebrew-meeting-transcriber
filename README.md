# Homebrew Tap for Meeting Transcriber

Auto-transcribe and summarize meetings. macOS menu bar app that detects active meetings (Teams, Zoom, Webex), records audio, transcribes via WhisperKit, and generates protocols with Claude.

## Install

**Stable release:**
```bash
brew tap pasrom/meeting-transcriber
brew install --cask meeting-transcriber
```

**Beta (pre-release / release candidate):**
```bash
brew tap pasrom/meeting-transcriber
brew install --cask meeting-transcriber@beta
```

> Note: The stable and beta casks conflict with each other. To switch between them, uninstall one before installing the other.

## Upgrade

```bash
brew upgrade --cask meeting-transcriber
# or
brew upgrade --cask meeting-transcriber@beta
```

## Uninstall

```bash
brew uninstall --cask meeting-transcriber
# or
brew uninstall --cask meeting-transcriber@beta
```

## Requirements

- macOS 14+ (Sonoma) on Apple Silicon
