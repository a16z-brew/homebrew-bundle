class OktVerify < Formula
  desc "Installation of Okta Verify"
  homepage "https://github.com/a16z-brew/homebrew-bundle"
  url "https://github.com/a16z-brew/homebrew-bundle/archive/refs/tags/v0.9.tar.gz"
  version "0.9"
  sha256 "848bd189a4666069d80179d90edde5638c376da3c644be8e5d4aaa4f3ce805fa"
  license "MIT"

   def install
        bin.install Dir["bin/*"]
        Dir["#{bin}/*"].each do |f|
        system "xattr", "-c", f if File.file?(f)
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
      end
end
