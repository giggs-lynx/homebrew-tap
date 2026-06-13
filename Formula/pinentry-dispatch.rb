class PinentryDispatch < Formula
  desc "Route GnuPG pinentry to Touch ID locally and curses over SSH"
  homepage "https://github.com/giggs-lynx/pinentry-dispatch"
  url "https://github.com/giggs-lynx/pinentry-dispatch/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "439e1d9f93a7f4ea2f24f6eef3c280cef03ce766c721a6ea1c44dbd64cabdba8"
  license "MIT"
  head "https://github.com/giggs-lynx/pinentry-dispatch.git", branch: "main"

  depends_on "rust" => :build
  depends_on "pinentry" # provides pinentry-curses, the SSH fallback
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"pinentry-dispatch", :exist?
    # With the curses flag set the dispatcher execs pinentry-curses, whose
    # Assuan greeting begins "OK Pleased to meet you".
    out = pipe_output("PINENTRY_USER_DATA=curses #{bin}/pinentry-dispatch", "BYE\n")
    assert_match "Pleased to meet you", out
  end
end
