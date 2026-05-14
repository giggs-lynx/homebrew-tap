cask "ghostty" do
  version "1.3.2-dev.quickterm-tab.20260514"
  sha256 "5966127e49822786d75309a85525b137f07d80cc0c3d18afb36559ae5c4fbbfb"

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
