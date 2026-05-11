cask "spectrawall" do
  version "0.0.2"
  sha256 "0f8bc8215baaabded5e1487fb4c4a4ba1b824f5edc0eac19de708bae5f1cf19d"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
