class Cdtree < Formula
  desc "A dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.1.2/cdtree-mac.tar.gz"
  sha256 "fcf1d1974aa75594f7e8aedd3501a9830868f46877f64ad41436bc70a070948b"
  version "0.1.2"

  def install
    bin.install "cdtree"
  end

  test do
    # --setup オプションが正常に動作し、exportコマンドを含むスクリプトが出力されるか確認
    assert_match "export", shell_output("#{bin}/cdtree --setup")
  end
end