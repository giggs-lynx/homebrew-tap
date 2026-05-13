cask "ghostty" do
  version "1.0.1,quickterm-tab"
  sha256 "a2b4ca75edea0709a27d74ea291c7fbde7afedd94f87caeb5ca47a52e82b3dca"

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
