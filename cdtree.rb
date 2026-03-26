class Cdtree < Formula
  desc "A dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.1.7/cdtree-mac.tar.gz"
  sha256 "f2799a90210e5a8206635aa310bff5db0e7dfff761e9c862484c4aa464d8c84e"
  version "0.1.7"

  def install
    bin.install "cdtree"
  end

  test do
    # --setup オプションが正常に動作し、exportコマンドを含むスクリプトが出力されるか確認
    assert_match "export", shell_output("#{bin}/cdtree --setup")
  end
end