class Cdtree < Formula
  desc "A dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.1.5/cdtree-mac.tar.gz"
  sha256 "8cb6e748c1a517415dafb883fd1ac6afe349f26e08fe92d2b6b56bfba9af1e41"
  version "0.1.5"

  def install
    bin.install "cdtree"
  end

  test do
    # --setup オプションが正常に動作し、exportコマンドを含むスクリプトが出力されるか確認
    assert_match "export", shell_output("#{bin}/cdtree --setup")
  end
end