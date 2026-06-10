cask "spectrawall" do
  version "0.0.9"
  sha256 "ac5e689449dd789b3608a1c9a97199c8fd9e00e4cea58f3b505c0d4723bfd31b"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
