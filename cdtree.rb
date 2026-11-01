class Cdtree < Formula
  desc "Dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.4.0/cdtree-mac.tar.gz"
  sha256 "0bdcb9f78048504147f49a0d2208a5e1cc9e8a11ba6964dea513cafa9ed258d3"

  def install
    bin.install "cdtree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cdtree --version")
  end
end
