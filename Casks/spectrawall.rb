cask "spectrawall" do
  version "1.0"
  sha256 "cecbef4eeb0bba966b599481ebd8c1f770998d10aec6e0255c78af477d23e34f"

  url "file:///Users/giggs/lab/SpectraWall/dist/SpectraWall-#{version}.zip"
  name "SpectraWall"
  desc "Audio spectrum visualizer wallpaper"
  homepage "https://github.com/giggs-lynx/SpectraWall"

  app "SpectraWall.app"
end
