# Cask for the giggs-lynx/wezterm fork (with the macOS quake/dropdown terminal).
# This file is a template: the mac-release.yml workflow substitutes v0.2.0 and
# 6cdc5b8bf4c3b3e80f5576d1d3b8851b0f6c0945442b1487b244d2f2b1aebca3 and writes the result to giggs-lynx/homebrew-tap Casks/wezterm.rb.
# vim:ft=ruby:
cask "wezterm" do
  version "v0.2.0"
  sha256 "6cdc5b8bf4c3b3e80f5576d1d3b8851b0f6c0945442b1487b244d2f2b1aebca3"

  url "https://github.com/giggs-lynx/wezterm/releases/download/#{version}/WezTerm-macos-#{version}.zip"
  name "WezTerm (giggs-lynx quake fork)"
  desc "WezTerm fork with a macOS quake/dropdown terminal"
  homepage "https://github.com/giggs-lynx/wezterm"

  # The zip contains WezTerm-macos-#{version}/WezTerm.app.
  app "WezTerm-macos-#{version}/WezTerm.app"
  [
    "wezterm",
    "wezterm-gui",
    "wezterm-mux-server",
    "strip-ansi-escapes"
  ].each do |tool|
    binary "#{appdir}/WezTerm.app/Contents/MacOS/#{tool}"
  end

  zap trash: [
    "~/Library/Saved Application State/com.github.wez.wezterm.savedState",
  ]

  caveats <<~EOS
    This is a personal, UNSIGNED build (no Apple code-signing / notarization),
    so macOS Gatekeeper will block the first launch. To allow it, run:

      xattr -dr com.apple.quarantine "#{appdir}/WezTerm.app"

    or right-click WezTerm.app in Finder and choose Open the first time.
  EOS
end
