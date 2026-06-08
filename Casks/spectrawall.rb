cask "spectrawall" do
  version "0.0.7"
  sha256 "29ae87ce3e93cfa3d090236dbc782de6cfd65a219e9858875d77bf2dad10c85a"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
