cask "small-commander" do
  version "1.0"
  sha256 "01b9067501eddd560ba940113f541138470c0627f50d8f4063388b8891b6e16e"

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
