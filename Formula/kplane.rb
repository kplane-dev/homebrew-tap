class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.11/kplane-v0.0.11-darwin-arm64"
      sha256 "d81f46fd45199ac55ce11d166e3e2ad2791b10b0ff9e700eaa007bebd308bfb2"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.11/kplane-v0.0.11-darwin-amd64"
      sha256 "27b8c575e2dce1387fee10939d66bebb662f5b21ab17f8969096f8458842f5d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.11/kplane-v0.0.11-linux-arm64"
      sha256 "c9acccb942970b0458abf06b7ab35f2411e1a945c72671d4cdaf249de4dfe813"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.11/kplane-v0.0.11-linux-amd64"
      sha256 "43859c429fbc5ba740bf817e073355ddda0109f4dcaa4de2fa3f5d68466ea186"
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
