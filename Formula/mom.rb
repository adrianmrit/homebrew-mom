class Mom < Formula
  desc "A task runner for teams and individuals."
  homepage "https://github.com/adrianmrit/mom#readme"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianmrit/mom/releases/download/v1.1.0/mom-v1.1.0-aarch64-apple-darwin.zip"
      sha256 "76d6dba04645a29b74773c2909fd595a9f12e942f43bd58572faa54ac2cc0a89"

      def install
        bin.install "mom"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianmrit/mom/releases/download/v1.1.0/mom-v1.1.0-x86_64-apple-darwin.zip"
      sha256 "d81215c3724ecad9490675572bbed7c05cf9663f95b2a068fd941b84013c7a77"

      def install
        bin.install "mom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/adrianmrit/mom/releases/download/v1.1.0/mom-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ad2010c587268ede8b4af208fd184b522deeceec3303957a1755fb73d6b3e96"

      def install
        bin.install "mom"
      end
    end
  end

  test do
    assert_match "mom-task 1.1.0", shell_output("#{bin}/mom --version")
  end
end
