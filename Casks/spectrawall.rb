cask "spectrawall" do
  version "0.0.10"
  sha256 "4bdd4eab0f45079291fdeca93e18011e0681fa519fc683df8dfd713f7c2b0c8b"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
