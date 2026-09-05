class Cdtree < Formula
  desc "Dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.3.0/cdtree-mac.tar.gz"
  sha256 "056d39dbe7d9884c5ef863a83251e58305f17494a4f3b14a6b13f00f82d61492"

  def install
    bin.install "cdtree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cdtree --version")
  end
end
