class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.6/kplane-v0.0.6-darwin-arm64"
      sha256 "d4f9def6c3758fd65ccaacaa677504d472ee4fc2f6b0320dd479a69172fdc6cd"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.6/kplane-v0.0.6-darwin-amd64"
      sha256 "a85f35f4e1d035489ce30d281cfb37f34d6140c2f95a9277e1c2ee396567957d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.6/kplane-v0.0.6-linux-arm64"
      sha256 "7b1d2a62a70409a6ababc505a51b516e2b5b2f4c0d5c7b3495bb4dd8ef2326e2"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.6/kplane-v0.0.6-linux-amd64"
      sha256 "b54dbb55714299f90fcdbb3b270aaddccd061adf60857db83e9b71846a8f6d22"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "kplane-#{version}-darwin-arm64" => "kplane"
      else
        bin.install "kplane-#{version}-darwin-amd64" => "kplane"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "kplane-#{version}-linux-arm64" => "kplane"
      else
        bin.install "kplane-#{version}-linux-amd64" => "kplane"
      end
    end
  end
end
