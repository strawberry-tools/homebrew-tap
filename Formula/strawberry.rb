# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Strawberry < Formula
  desc "An awesome static site generator based on Hugo."
  homepage "https://www.StrawberrySSG.com"
  version "0.19.0"
  bottle :unneeded
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/strawberryssg/strawberry-v0/releases/download/v0.19.0/strawberry-v0.19.0-macos-amd64.tar.gz"
      sha256 "d5bd6e54fb72563df88d9349a0d0655a94834a9dc206dc41e736f59bbf1c7545"
    end
  end

  depends_on "go"

  def install
    bin.install "strawberry"
  end

  test do
    site = testpath/"hops-yeast-malt-water"
    system "#{bin}/strawberry", "new", "site", site
    assert_predicate testpath/"#{site}/config.toml", :exist?
  end
end
