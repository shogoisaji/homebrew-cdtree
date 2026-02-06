class Cdtree < Formula
  desc "A dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.1.1/cdtree-mac.tar.gz"
  sha256 "827dc82529a656e98bdd5277091fe67f45cb762ec33a207ad09b180a449ab6d7"
  version "0.1.1"

  def install
    bin.install "cdtree"
  end

  test do
    # --setup オプションが正常に動作し、exportコマンドを含むスクリプトが出力されるか確認
    assert_match "export", shell_output("#{bin}/cdtree --setup")
  end
end