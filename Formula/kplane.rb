class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.16/kplane-v0.0.16-darwin-arm64"
      sha256 "ba560637a134f378d37d038ec42a76cd4095a920e3f346b5c453de034a2bbfbd"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.16/kplane-v0.0.16-darwin-amd64"
      sha256 "9f623a3075f063f000b0b37be9fdb02f28a07f6a469702f7e71d488ca2886f16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.16/kplane-v0.0.16-linux-arm64"
      sha256 "715b1bd42b84c539d6405dc50d975e5a47e391433f2c92634c99696963a570b3"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.16/kplane-v0.0.16-linux-amd64"
      sha256 "d21fd0fe62197fce0292154cb4cc81110bede1a81b26c5534ff40ca8d845861a"
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
