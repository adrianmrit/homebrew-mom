class Mom < Formula
  desc "A task runner for teams and individuals."
  homepage "https://github.com/adrianmrit/mom#readme"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianmrit/mom/releases/download/v1.0.0/mom-v1.0.0-aarch64-apple-darwin.zip"
      sha256 "f8dcb54393d8aeb42ce3277f03a342d1ac3bca0787e5ac57f648b19d6a44a30a"

      def install
        bin.install "mom"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianmrit/mom/releases/download/v1.0.0/mom-v1.0.0-x86_64-apple-darwin.zip"
      sha256 "7fedfa618767a6260814f8755c2fec17ba751683f8c889c204f0ad4a949dab0d"

      def install
        bin.install "mom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/adrianmrit/mom/releases/download/v1.0.0/mom-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ff935e6ffdf1ad837231513fd22d92d5b7393a8aec53dc8cd5f99d2497bf7b5"

      def install
        bin.install "mom"
      end
    end
  end

  test do
    assert_match "mom-task 1.0.0", shell_output("#{bin}/mom --version")
  end
end
