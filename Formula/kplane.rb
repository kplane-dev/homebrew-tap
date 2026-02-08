class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.5/kplane-v0.0.5-darwin-arm64"
      sha256 "95f4cfacd3a2c29234e5d9be7f2fe3287f014ede4fce1fc54e76217db6e37b34"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.5/kplane-v0.0.5-darwin-amd64"
      sha256 "2c4efd8b5e1aa1efa2f03e02eaf18939fffabe869bac61cc9338a06f598ae61e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.5/kplane-v0.0.5-linux-arm64"
      sha256 "1986c3e2efeed0fb2b4e8ddf3615f9c4190d36049160bbc8b932990a1781aedb"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.5/kplane-v0.0.5-linux-amd64"
      sha256 "42adcfa919fe17ddda09364d6e3294ab4bfa59fd183e5f087cefed1fa1a39de0"
    end
  end

  def install
    bin.install "kplane"
  end
end
