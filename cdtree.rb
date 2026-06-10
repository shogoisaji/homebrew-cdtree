class Cdtree < Formula
  desc "Dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.1.12/cdtree-mac.tar.gz"
  sha256 "d95c9d2eb56fdf0f13b032656f85418dd0519a31896c6d1cc19879e4272bf223"

  def install
    bin.install "cdtree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cdtree --version")
  end
end
