class Photorg < Formula
  desc "Fast cross-platform CLI that organizes photos into date- and location-structured folders"
  homepage "https://github.com/mihovilrak/photorg"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mihovilrak/photorg/releases/download/v0.1.0/photorg-aarch64-apple-darwin.tar.gz"
      sha256 "ab2b9eee3846e7372d9a7d9898062a806b18e17e2976a3dc59ff432538a403fd"
    end
    on_intel do
      url "https://github.com/mihovilrak/photorg/releases/download/v0.1.0/photorg-x86_64-apple-darwin.tar.gz"
      sha256 "ee4f8600ef3be0bf8224f0ac0506f5ebc383a431c95dbbcd1b194c27e573e1c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mihovilrak/photorg/releases/download/v0.1.0/photorg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1640c756c698f1b41ef43ad962156dc5ce5087b6864d13351c1a88790028c4fa"
    end
    on_intel do
      url "https://github.com/mihovilrak/photorg/releases/download/v0.1.0/photorg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4dee2fe488036fe57f88adfcc28b25512dab6a4ab606130de6216581eda92318"
    end
  end

  def install
    bin.install "photorg"
    # CC-BY requires the GeoNames attribution to travel with the binary.
    doc.install "README.md", "THIRD-PARTY-NOTICES.md", "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/photorg --version")
  end
end
