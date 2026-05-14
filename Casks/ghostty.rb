cask "ghostty" do
  version "1.3.2-dev.20260514"
  sha256 "28464c0ea26d3300c3be670d69b3ac1f26823dd64eb1112d895b4384b3c0e567"

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
