cask "spectrawall" do
  version "0.0.8"
  sha256 "c290206406ef4efe8554bedbe4368b3e3c2de9b6d4131c2103ec252735ecfda7"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
