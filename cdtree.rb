class Cdtree < Formula
  desc "Dynamic tree-based directory navigation tool"
  homepage "https://github.com/shogoisaji/cdtree"
  url "https://github.com/shogoisaji/cdtree/releases/download/v0.2.0/cdtree-mac.tar.gz"
  sha256 "987527391817a6e59420fdb76c5e4b4078beb4f0f6a20fe7f16cc89697a28188"

  def install
    bin.install "cdtree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cdtree --version")
  end
end
