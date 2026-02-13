class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.7/kplane-v0.0.7-darwin-arm64"
      sha256 "f42668e1c769f112fd9c9c73cd2e59964a11a3b0aeae5c4f175044f54fae93ce"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.7/kplane-v0.0.7-darwin-amd64"
      sha256 "58e65cca33f0ddfda65e320d299ee8452a2411b6185991f98294b1bcc514480c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.7/kplane-v0.0.7-linux-arm64"
      sha256 "091a70e5a71381aeae8e8374ab917bfc4147cc2427d249f0628613ecb7436a43"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.7/kplane-v0.0.7-linux-amd64"
      sha256 "106fdc3c2909e211aa64752af652d161ff720550c9eb3944a314b8ac6f0eb055"
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
