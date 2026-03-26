class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.13/kplane-v0.0.13-darwin-arm64"
      sha256 "780d81a5fd69e8984f401423553ff1c83e9ec48b95d97f109aed2fca138d1760"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.13/kplane-v0.0.13-darwin-amd64"
      sha256 "94cc4b67876b1037f2ad4315adb12303a95c5f7a74123003e57a240323da2ec8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.13/kplane-v0.0.13-linux-arm64"
      sha256 "2c7e60cdb7a154d9af677f41d91e202a18cdac691aedb23d3c5019a93d3086da"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.13/kplane-v0.0.13-linux-amd64"
      sha256 "35b3e7dbc4bcd7dfbe6d739ec55b1bb4cb22d8ca55cdfe6f67cc3bf333930eb9"
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
