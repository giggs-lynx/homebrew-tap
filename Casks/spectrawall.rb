cask "spectrawall" do
  version "0.0.3"
  sha256 "812e1a582b2339041cacbfc4a6e72545822288ce954c5299be1113b103a288c2"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
