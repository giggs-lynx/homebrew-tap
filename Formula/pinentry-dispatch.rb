class PinentryDispatch < Formula
  desc "GnuPG pinentry that asks with Touch ID locally or a terminal prompt otherwise"
  homepage "https://github.com/giggs-lynx/pinentry-dispatch"
  url "https://github.com/giggs-lynx/pinentry-dispatch/releases/download/v0.2.0/pinentry-dispatch-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "997998abf065ca4df756cb19eebbc5d07c31826bebf0cf924efde58a8df11438"
  license "MIT"

  depends_on :macos
  depends_on "pinentry" # provides pinentry-curses and pinentry-tty, the terminal rungs

  def install
    bin.install "pinentry-dispatch"
  end

  test do
    assert_path_exists bin/"pinentry-dispatch"
    # The dispatcher speaks Assuan itself, so it greets before choosing a rung.
    out = pipe_output(bin/"pinentry-dispatch", "BYE\n")
    assert_match "Pleased to meet you", out
  end
end
