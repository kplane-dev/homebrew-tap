class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.10/kplane-v0.0.10-darwin-arm64"
      sha256 "97ab29c6a6fc2a7f1b68282dc1c2cf24cece9e0fd4fee46ec29f96eb35375164"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.10/kplane-v0.0.10-darwin-amd64"
      sha256 "74d0c355266d67c2c889d6a08ea22c08282f1ba0ab899e387e63af3ea56b9b9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.10/kplane-v0.0.10-linux-arm64"
      sha256 "424b679fe761b1ef84f0ebde4a466825d2a2de47d444d8193da762073f47dc81"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.10/kplane-v0.0.10-linux-amd64"
      sha256 "15093dac6a275836e141486f146973d7b158d151e4caf19d36cb00d1c14d1899"
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
