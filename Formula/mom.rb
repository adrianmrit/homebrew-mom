class Mom < Formula
  desc "A task runner for teams and individuals."
  homepage "https://github.com/adrianmrit/mom#readme"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianmrit/mom/releases/download/v1.2.0/mom-v1.2.0-aarch64-apple-darwin.zip"
      sha256 "0acc032530203db503e139a796ed83ebf0fcb4562066308aca70ca42c2569238"

      def install
        bin.install "mom"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianmrit/mom/releases/download/v1.2.0/mom-v1.2.0-x86_64-apple-darwin.zip"
      sha256 "7df29c3c3ebf12011ea9d673ff4c58c665b3e098e2f274598a186d354f33061d"

      def install
        bin.install "mom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/adrianmrit/mom/releases/download/v1.2.0/mom-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff4c27294dea2d6bf96e780abc7618495fab411fd5d2d972654ef2153c79fb95"

      def install
        bin.install "mom"
      end
    end
  end

  test do
    assert_match "mom-task 1.2.0", shell_output("#{bin}/mom --version")
  end
end
