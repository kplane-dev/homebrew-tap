class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.12/kplane-v0.0.12-darwin-arm64"
      sha256 "fdc0e695cd9f3cbc148cb1e9158618a2e15b3424679c060c4f0d2fae93375df8"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.12/kplane-v0.0.12-darwin-amd64"
      sha256 "0f5fc55f85498790123adf1511b51eee3af34021a3eaa39caca6bbac6274c44b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.12/kplane-v0.0.12-linux-arm64"
      sha256 "eb44375308f9dbe2d4987b8648945341de53c82e424f53a4af2ba24556bb8d48"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.12/kplane-v0.0.12-linux-amd64"
      sha256 "e2a5292b8a78e5292ab76519418ae3823ddaee2c1e8e48dfd149621c854a128f"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "kplane-v#{version}-darwin-arm64" => "kplane"
      else
        bin.install "kplane-v#{version}-darwin-amd64" => "kplane"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "kplane-v#{version}-linux-arm64" => "kplane"
      else
        bin.install "kplane-v#{version}-linux-amd64" => "kplane"
      end
    end
  end
end
