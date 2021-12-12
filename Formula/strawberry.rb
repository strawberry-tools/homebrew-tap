# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strawberry < Formula
  desc "An awesome static site generator based on Hugo."
  homepage "https://www.StrawberrySSG.com"
  version "0.21.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strawberryssg/strawberry-v0/releases/download/v0.21.0/strawberry-v0.21.0-macos-amd64.tar.gz"
      sha256 "95400ea8935a659333d716f9ce34a103b05f5a691afcc369f6f32b64b9bf3dad"

      def install
        bin.install "strawberry"
      end
    end
  end

  depends_on "go"

  test do
    site = testpath/"hops-yeast-malt-water"
    system "#{bin}/strawberry", "new", "site", site
    assert_predicate testpath/"#{site}/config.toml", :exist?
  end
end
