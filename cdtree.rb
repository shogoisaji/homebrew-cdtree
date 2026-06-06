class Cdtree < Formula
  desc "Dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.1.11/cdtree-mac.tar.gz"
  sha256 "b315d7bb8fe6d2c9da5b0e706b90c562fc3c44abbe827d17139b560068c05d30"

  def install
    bin.install "cdtree"
  end

  test do
    # --setup オプションが正常に動作し、exportコマンドを含むスクリプトが出力されるか確認
    assert_match "export", shell_output("#{bin}/cdtree --setup")
  end
end
