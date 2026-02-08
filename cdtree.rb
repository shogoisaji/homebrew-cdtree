class Cdtree < Formula
  desc "A dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.1.4/cdtree-mac.tar.gz"
  sha256 "ff83a4abbe89a56243b82c6b1d8b0ac55e700f85e7a5e3fe064bc8b466de2bed"
  version "0.1.4"

  def install
    bin.install "cdtree"
  end

  test do
    # --setup オプションが正常に動作し、exportコマンドを含むスクリプトが出力されるか確認
    assert_match "export", shell_output("#{bin}/cdtree --setup")
  end
end