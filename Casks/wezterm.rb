# Cask for the giggs-lynx/wezterm fork (with the macOS quake/dropdown terminal).
# This file is a template: the mac-release.yml workflow substitutes v0.1.2 and
# 89471ec6b5f9cce5e3eaedc4aa464bcccefaea7845fc36eb00da27df86e7b5f7 and writes the result to giggs-lynx/homebrew-tap Casks/wezterm.rb.
# vim:ft=ruby:
cask "wezterm" do
  version "v0.1.2"
  sha256 "89471ec6b5f9cce5e3eaedc4aa464bcccefaea7845fc36eb00da27df86e7b5f7"

  url "https://github.com/giggs-lynx/wezterm/releases/download/#{version}/WezTerm-macos-#{version}.zip"
  name "WezTerm (giggs-lynx quake fork)"
  desc "WezTerm fork with a macOS quake/dropdown terminal"
  homepage "https://github.com/giggs-lynx/wezterm"

  app "WezTerm.app"
  [
    "wezterm",
    "wezterm-gui",
    "wezterm-mux-server",
    "strip-ansi-escapes"
  ].each do |tool|
    binary "#{appdir}/WezTerm.app/Contents/MacOS/#{tool}"
  end

  preflight do
    # The zip contains WezTerm-macos-#{version}/WezTerm.app; lift it out.
    staged_subfolder = staged_path.glob(["WezTerm-*", "wezterm-*"]).first
    if staged_subfolder
      FileUtils.mv(staged_subfolder/"WezTerm.app", staged_path)
      FileUtils.rm_rf(staged_subfolder)
    end
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
