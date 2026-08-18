# Deep-On tap

```sh
brew tap deep-on/tap
brew trust deep-on/tap          # Homebrew asks this of every tap it did not write
brew install --cask small-commander
```

## Small Commander

A dual-pane file manager for macOS whose remote panes feel like local ones. It
speaks SSH directly and never mounts anything, which is why a folder on a server
across the internet opens in about 60 ms rather than the 6,900 ms a kernel SMB
mount takes.

Free, no account, no third-party code. <https://deepon.kr/small-commander>

---

Casks here are written by the release script from the artefact it has just
notarised, so the version and the checksum always belong to the build being
shipped.
