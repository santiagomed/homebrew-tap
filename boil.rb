# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Boil < Formula
  desc ""
  homepage "https://github.com/santiagomed/boil"
  version "0.3.3-beta"

  on_macos do
    on_intel do
      url "https://github.com/santiagomed/boil/releases/download/v0.3.3-beta/boil_Darwin_x86_64.tar.gz"
      sha256 "449e9601e1d88763a0963ee25ab69cf7afe083a2beea62a11b93974fef7e4682"

      def install
        bin.install "boil"
      end
    end
    on_arm do
      url "https://github.com/santiagomed/boil/releases/download/v0.3.3-beta/boil_Darwin_arm64.tar.gz"
      sha256 "fe2011ccb59fe4870d02c99d0db378049cc13d97ce72b3e92494286a1b4fdbde"

      def install
        bin.install "boil"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/santiagomed/boil/releases/download/v0.3.3-beta/boil_Linux_x86_64.tar.gz"
        sha256 "e3cde733f2785c0ffc7daa49f8c64b92d826262113f97f1752af95fe2bcfe4d4"

        def install
          bin.install "boil"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/santiagomed/boil/releases/download/v0.3.3-beta/boil_Linux_arm64.tar.gz"
        sha256 "15db296eb7c151745ab96c03ad6c390970bbc867cf0c3cf04ba460aed2701f55"

        def install
          bin.install "boil"
        end
      end
    end
  end

  test do
    system "#{bin}/boil --version"
  end
end
