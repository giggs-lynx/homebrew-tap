class PinentryDispatch < Formula
  desc "Route GnuPG pinentry to Touch ID locally and curses over SSH"
  homepage "https://github.com/giggs-lynx/pinentry-dispatch"
  url "https://github.com/giggs-lynx/pinentry-dispatch/releases/download/v0.1.0/pinentry-dispatch-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "1ae03ef5d9983709ca992064121dc9056cd2252296aa597f1498ab6cb823b746"
  license "MIT"

  depends_on :macos
  depends_on "pinentry" # provides pinentry-curses, the SSH fallback

  def install
    bin.install "pinentry-dispatch"
  end

  test do
    assert_path_exists bin/"pinentry-dispatch"
    # With the curses flag set the dispatcher execs pinentry-curses, whose
    # Assuan greeting begins "OK Pleased to meet you".
    out = pipe_output("PINENTRY_USER_DATA=curses #{bin}/pinentry-dispatch", "BYE\n")
    assert_match "Pleased to meet you", out
  end
end
