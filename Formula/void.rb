class Void < Formula
  desc "Terminal focus timer with task tracking"
  homepage "https://github.com/p6laris/Void"
  version "0.4.0-beta.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-macos-arm64.tar.gz"
      sha256 "6a6c29a281c7f8d706cd803722670f99ab62d90167ae14ad2eff87700ce8a3de"
    end
    on_intel do
      url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-macos-amd64.tar.gz"
      sha256 "4ef3827478e52ef81bac3b4b53a6ed13c7e94030e006f0863d5241420090295a"
    end
  end

  on_linux do
    url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-linux-amd64.tar.gz"
    sha256 "0c0df806254a503668fe8827c7bb852a15f84b3a0c4e15cd45979ba8b0636045"
  end

  def install
    bin.install "void"
  end

  test do
    assert_match "Void", shell_output("#{bin}/void --help")
  end
end
