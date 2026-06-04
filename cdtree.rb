class Cdtree < Formula
  desc "Dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.1.10/cdtree-mac.tar.gz"
  sha256 "715667de9cabda935583ba9ea7c78b5e9f5b4cb8265821949a1cf19d0c66a98f"

  def install
    bin.install "cdtree"
  end

  test do
    # --setup オプションが正常に動作し、exportコマンドを含むスクリプトが出力されるか確認
    assert_match "export", shell_output("#{bin}/cdtree --setup")
  end
end
