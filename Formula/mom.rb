class Mom < Formula
  desc "A task runner for teams and individuals."
  homepage "https://github.com/adrianmrit/mom#readme"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianmrit/mom/releases/download/v1.3.0/mom-v1.3.0-aarch64-apple-darwin.zip"
      sha256 "5bac69109f2b7e3e29e98e181337807067f69cb1aa86c964b72015cce56b31ff"

      def install
        bin.install "mom"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianmrit/mom/releases/download/v1.3.0/mom-v1.3.0-x86_64-apple-darwin.zip"
      sha256 "66c06767a799722b8da8b477ae4fdacb81354ba6878b3a70319be637bff3e15a"

      def install
        bin.install "mom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/adrianmrit/mom/releases/download/v1.3.0/mom-v1.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70d433417f362dd28cbc8658bc0e2041ea4e08013b3eb1e829328b98c391d992"

      def install
        bin.install "mom"
      end
    end
  end

  test do
    assert_match "mom-task 1.3.0", shell_output("#{bin}/mom --version")
  end
end
