class Beeos < Formula
  desc "BeeOS desktop CLI – download, pair and run AI agents from your terminal"
  homepage "https://beeos.ai"
  license "MIT"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/beeos-ai/beeos/releases/download/cli-v0.0.1/beeos-darwin-arm64-0.0.1.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/beeos-ai/beeos/releases/download/cli-v0.0.1/beeos-darwin-x64-0.0.1.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/beeos-ai/beeos/releases/download/cli-v0.0.1/beeos-linux-arm64-0.0.1.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/beeos-ai/beeos/releases/download/cli-v0.0.1/beeos-linux-x64-0.0.1.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "beeos"
  end

  test do
    assert_match "beeos", shell_output("#{bin}/beeos --version")
  end
end
