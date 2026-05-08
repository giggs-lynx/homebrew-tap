cask "spectrawall" do
  version "0.0.1"
  sha256 "c96135f11cc8fb82567b802799a99064df96e7ed1f3f1a12182e2cd8f92ad147"

  url "https://github.com/giggs-lynx/SpectraWall/releases/download/v#{version}/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
