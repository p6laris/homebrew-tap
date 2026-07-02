class Void < Formula
  desc "Terminal focus timer with task tracking"
  homepage "https://github.com/p6laris/Void"
  version "0.4.0-beta.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-macos-arm64.tar.gz"
      sha256 "210b9de5aee617906bdd94f3878df59db6f078ea29d95c6d415dcf121979f62f"
    end
    on_intel do
      url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-macos-amd64.tar.gz"
      sha256 "843c9faae90913075d40d30ea9ad04f4e23d149e243bbdd1c4e5ea5f431c24e1"
    end
  end

  on_linux do
    url "https://github.com/p6laris/Void/releases/download/v0.4.0-beta.1/void-linux-amd64.tar.gz"
    sha256 "563fd9b3adb7242fba3defbe77ebfdce6f6edbde71121c2e56d2179b615068b0"
  end

  def install
    bin.install "void"
  end

  test do
    assert_match "Void", shell_output("#{bin}/void --help")
  end
end
