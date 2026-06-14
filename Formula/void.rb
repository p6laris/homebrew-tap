class Void < Formula
  desc "Terminal focus timer with task tracking"
  homepage "https://github.com/p6laris/Void"
  version "0.3.0-alpha.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/p6laris/Void/releases/download/v0.3.0-alpha.6/void-macos-arm64.tar.gz"
      sha256 "74cc1d8156478d62059744a57c5b366d8b07a809a9f54b0844273b71837a3512"
    end
    on_intel do
      url "https://github.com/p6laris/Void/releases/download/v0.3.0-alpha.6/void-macos-amd64.tar.gz"
      sha256 "e6252b967bb1a3b2f9010c5b1761606f7b7096fe198744d8d56d74bcce5c7d81"
    end
  end

  on_linux do
    url "https://github.com/p6laris/Void/releases/download/v0.3.0-alpha.6/void-linux-amd64.tar.gz"
    sha256 "b5f7eeb8bc13085b0f1f0f5ac17a298d0beb88aa43547b39be82b2c979eba09a"
  end

  def install
    bin.install "void"
  end

  test do
    assert_match "Void", shell_output("#{bin}/void --help")
  end
end
