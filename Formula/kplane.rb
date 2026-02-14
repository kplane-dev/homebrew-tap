class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.8/kplane-v0.0.8-darwin-arm64"
      sha256 "96932a494f7d9000bb57f0b05dc4f445f0e51ab918820eaf57ccf23d348fde32"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.8/kplane-v0.0.8-darwin-amd64"
      sha256 "1e8db97139e9aceb11fb32d5783f06cd3f53983f25d0fc637daea1d1c0c5f9cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.8/kplane-v0.0.8-linux-arm64"
      sha256 "f36386c7f78d4eb3eebbc270bc1c5e3c98196f5fdb2b8cdfd529697f87e18051"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.8/kplane-v0.0.8-linux-amd64"
      sha256 "7131aaa96633c85c5058bf753387866d35e6fa03dee33af03de56d9585cba65f"
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
