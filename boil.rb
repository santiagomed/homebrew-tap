# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Boil < Formula
  desc ""
  homepage "https://github.com/santiagomed/boil"
  version "2.0.1-beta"

  on_macos do
    on_intel do
      url "https://github.com/santiagomed/boil/releases/download/v2.0.1-beta/boil_Darwin_x86_64.tar.gz"
      sha256 "1a3b67920a518dcd6c5dd649486b2896e825c23b2be4a0c2af539ece29c3b355"

      def install
        bin.install "boil"
      end
    end
    on_arm do
      url "https://github.com/santiagomed/boil/releases/download/v2.0.1-beta/boil_Darwin_arm64.tar.gz"
      sha256 "5bedda1d8bf7ad6fc8860bd880e7bbac8f172a614e97edab4b27bf4c327aa265"

      def install
        bin.install "boil"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/santiagomed/boil/releases/download/v2.0.1-beta/boil_Linux_x86_64.tar.gz"
        sha256 "e92d4c437ba2ddd5ec21f06dd1dffbfbaaafb540f966049ce450df2ccb744197"

        def install
          bin.install "boil"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/santiagomed/boil/releases/download/v2.0.1-beta/boil_Linux_arm64.tar.gz"
        sha256 "3f8db90849c348d8a67ca1e55bab7611ccba31b92e177a5e01a9ee9db6b51146"

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
