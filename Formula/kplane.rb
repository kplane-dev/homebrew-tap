class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.15/kplane-v0.0.15-darwin-arm64"
      sha256 "5d2e670181c32ef8554d931e2736ac26c41e5bc04bf57b34d1be7763db44664e"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.15/kplane-v0.0.15-darwin-amd64"
      sha256 "e9bb6fa8b699a6ec2e4552c5fde41e6cd08262456bb14997e16ce6b636281fbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.15/kplane-v0.0.15-linux-arm64"
      sha256 "9b08c2bed3bb0fa2424080d59205c5d86766b0fc7cdb0a868040e145ded8ddbb"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.15/kplane-v0.0.15-linux-amd64"
      sha256 "64717f4c33c5b5744a885f2990d8e88eef5d16d44eaab68ae8b27b3751f1c66f"
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
