cask "ghostty" do
  version "1.3.2-dev.quickterm-tab.20260516"
  sha256 "32c8b21c3dabd52f6cd3abd6868d48aa26bb688569e46d96d39a5dfab77ca308"

  url "https://github.com/giggs-lynx/ghostty/releases/download/quickterm-tab/ghostty-macos.zip"
  name "Ghostty (Quickterm Tab)"
  desc "Terminal emulator with custom quickterm tab modifications"
  homepage "https://github.com/giggs-lynx/ghostty"

  app "Ghostty.app"
  binary "#{appdir}/Ghostty.app/Contents/MacOS/ghostty"

  zap trash: [
    "~/Library/Application Support/com.mitchellh.ghostty",
    "~/Library/Caches/com.mitchellh.ghostty",
    "~/Library/Preferences/com.mitchellh.ghostty.plist",
    "~/Library/Saved Application State/com.mitchellh.ghostty.savedState",
  ]
end
