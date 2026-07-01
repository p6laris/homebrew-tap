class Void < Formula
  desc "Terminal focus timer with task tracking"
  homepage "https://github.com/p6laris/Void"
  version "0.4.0-beta.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-macos-arm64.tar.gz"
      sha256 "f1fb1dcc255deecab73b1a5c43e349d90d3d0821f1ad9ac6dc0a6c010197af2c"
    end
    on_intel do
      url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-macos-amd64.tar.gz"
      sha256 "f96022350f3c752c4db8fcf7acb7b3ee69f77fe7682fbd6f70d497d96b8b576b"
    end
  end

  on_linux do
    url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-linux-amd64.tar.gz"
    sha256 "7a71bf7c6e1894a083b49540f286df794b2bd8be9f9e28e2d71c8e64b732abb5"
  end

  def install
    bin.install "void"
  end

  test do
    assert_match "Void", shell_output("#{bin}/void --help")
  end
end
