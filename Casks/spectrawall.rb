cask "spectrawall" do
  version "0.0.4"
  sha256 "9d312259c4fb287a67aa9a09abfbe919446e7372769ea2d4533754c9ce026e98"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
