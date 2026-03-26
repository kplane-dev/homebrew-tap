class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.14/kplane-v0.0.14-darwin-arm64"
      sha256 "f5fdc3ddb12013bc287ff5b8316f67bb2d96a2a0b9359922b0f17cc702d9e43d"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.14/kplane-v0.0.14-darwin-amd64"
      sha256 "9414afc37866853224ed46ac30e93a503354c014a1587fa5dc1e4a144b10d902"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.14/kplane-v0.0.14-linux-arm64"
      sha256 "704a3e57a8b907c8ea520b8c196763bf090c9879700430a0680bea26aec5af81"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.14/kplane-v0.0.14-linux-amd64"
      sha256 "b5488a008a9e2b3c7e8ea0abd34fb5dbba22ec0c4fe7757cb727a253fb397d67"
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
