cask "spectrawall" do
  version "0.0.6"
  sha256 "b83c0485c4b5b127b799bdd1dafe61b78e9f4e16ad1645769349e8edbf5aafb7"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
