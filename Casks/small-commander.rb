cask "small-commander" do
  version "1.0.3"
  sha256 "ef38a02903c251fa81eea0a4f161ebee10eb3b16e5014a2bd67fd5f5ef3ffd57"

  url "https://deepon.kr/downloads/SmallCommander-#{version}.dmg"
  name "Small Commander"
  desc "Dual-pane file manager whose remote panes feel like local ones"
  homepage "https://deepon.kr/small-commander"

  # A bare symbol means "this version or newer"; the string form Homebrew
  # used to take is deprecated and warns on every tap.
  depends_on macos: :sonoma

  app "SmallCommander.app"

  # What the app writes. Left behind by an ordinary uninstall, which is not what
  # somebody typing `brew uninstall --zap` is asking for.
  zap trash: [
    "~/Library/Preferences/com.deep-on.SmallCommander.plist",
    "~/Library/Caches/com.deep-on.SmallCommander",
    "~/Library/Saved Application State/com.deep-on.SmallCommander.savedState",
  ]
end
