class Void < Formula
  desc "Terminal focus timer with task tracking"
  homepage "https://github.com/p6laris/Void"
  version "0.3.0-alpha.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/p6laris/Void/releases/download/v0.3.0-alpha.5/void-macos-arm64.tar.gz"
      sha256 "b38a85934b378e7d95351277fa4ac525a1d3afc041d5a6e59d9cf2478112155b"
    end
    on_intel do
      url "https://github.com/p6laris/Void/releases/download/v0.3.0-alpha.5/void-macos-amd64.tar.gz"
      sha256 "b4a036a49093e56909a0d36a73614282ae16201fc6042189b04322c943a6d17b"
    end
  end

  on_linux do
    url "https://github.com/p6laris/Void/releases/download/v0.3.0-alpha.5/void-linux-amd64.tar.gz"
    sha256 "28a2a62da37e4cdd14e90a62caf602c7dc234a21c26913dcca9f8bf4b9e33893"
  end

  def install
    bin.install "void"
  end

  test do
    assert_match "Void", shell_output("#{bin}/void --help")
  end
end
