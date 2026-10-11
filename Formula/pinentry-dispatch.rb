class PinentryDispatch < Formula
  desc "GnuPG pinentry that asks with Touch ID locally or a terminal prompt otherwise"
  homepage "https://github.com/giggs-lynx/pinentry-dispatch"
  url "https://github.com/giggs-lynx/pinentry-dispatch/releases/download/v0.2.1/pinentry-dispatch-0.2.1-aarch64-apple-darwin.tar.gz"
  sha256 "f2b53a1a2596479970ecfde975e0e355304438a496d959d946cbc4705124b5f8"
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
