class Void < Formula
  desc "Terminal focus timer with task tracking"
  homepage "https://github.com/p6laris/Void"
  version "0.4.0-beta.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-macos-arm64.tar.gz"
      sha256 "741d21928cbe31042f294b071e38df1ad0b9e95e587d14e7bf1ecae0701389ae"
    end
    on_intel do
      url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-macos-amd64.tar.gz"
      sha256 "6f5572729705a9df8e947ada685577b3138bce552f61e697a612939eedc2b242"
    end
  end

  on_linux do
    url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-linux-amd64.tar.gz"
    sha256 "794c81952b395b9240cbfcfb78ee325b9d0f7f9a9ba77efd98532e570c1366d5"
  end

  def install
    bin.install "void"
  end

  test do
    assert_match "Void", shell_output("#{bin}/void --help")
  end
end
