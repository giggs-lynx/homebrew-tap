cask "ghostty" do
  version "1.3.2-dev,quickterm-tab"
  sha256 "4aedb642c66a1d79b4bbbf0b63eeaafce5a85cc02f0fbffaa158eeeb65f464c4"

  url "https://github.com/giggs-lynx/ghostty/releases/download/v#{version.csv.first}-#{version.csv.second}/ghostty-macos.zip"
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
