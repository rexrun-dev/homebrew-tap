class Rex < Formula
  desc "Zero-config universal project runner — detects your stack and runs the right command"
  homepage "https://rexrun.dev"
  license "Apache-2.0"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rexrun-dev/rex/releases/download/v#{version}/rex_#{version}_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/rexrun-dev/rex/releases/download/v#{version}/rex_#{version}_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rexrun-dev/rex/releases/download/v#{version}/rex_#{version}_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/rexrun-dev/rex/releases/download/v#{version}/rex_#{version}_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "rex"
  end

  test do
    assert_match "rex", shell_output("#{bin}/rex -v")
  end
end
