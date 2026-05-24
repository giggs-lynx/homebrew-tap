cask "spectrawall" do
  version "0.0.5"
  sha256 "8d27c3240ec93a2162ee0b582f0c0987692f2426335098d904ef3c0f7ed7dc12"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
