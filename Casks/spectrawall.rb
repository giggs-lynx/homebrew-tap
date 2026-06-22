cask "spectrawall" do
  version "0.0.11"
  sha256 "488ee1be10ddcce78e94e0b4ead133148ad8218deae42f9431253c629a805c96"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
