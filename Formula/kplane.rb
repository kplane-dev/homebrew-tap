class Kplane < Formula
  desc "Local virtual control planes for Kubernetes"
  homepage "https://github.com/kplane-dev/kplane"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.9/kplane-v0.0.9-darwin-arm64"
      sha256 "4334f2d26eb2d38ecb8fcb852e73e1c41fd698c3abe2da6080688a3aeecc6e2d"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.9/kplane-v0.0.9-darwin-amd64"
      sha256 "062e3c241e75af7adbe594dd8593a5e614870d8a81216ce7baea35cc25743feb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.9/kplane-v0.0.9-linux-arm64"
      sha256 "9433406ff99279e75805228e9bef9768958056fc9c035b4f516442c33686718c"
    else
      url "https://github.com/kplane-dev/kplane/releases/download/v0.0.9/kplane-v0.0.9-linux-amd64"
      sha256 "732c2dfccb0c1fd557627a9b8a1a2c0ecf0b73eff738d87d7ad5163cb8a6c30c"
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
