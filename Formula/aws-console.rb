# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsConsole < Formula
  desc "Generate a temporary login URL for the AWS Console"
  homepage "https://github.com/joshdk/aws-console"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joshdk/aws-console/releases/download/v0.4.0/aws-console-darwin-arm64.tar.gz"
      sha256 "3bc98b2f12e91d4b736766a07e2a9c8574d9b19d9bb530c0f6c2edfb1026d015"

      def install
        bin.install "aws-console"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/joshdk/aws-console/releases/download/v0.4.0/aws-console-darwin-amd64.tar.gz"
      sha256 "9eab4bb0c9892f9c6166dd65766d8347f5cc1de59b20f07dd75fe4331b69d227"

      def install
        bin.install "aws-console"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/joshdk/aws-console/releases/download/v0.4.0/aws-console-linux-amd64.tar.gz"
      sha256 "ac773ae6896483831f621fd4158b7668f4196842e53679b56bd028aa77c13676"

      def install
        bin.install "aws-console"
      end
    end
  end

  def caveats
    <<~EOS
      Run aws-console --help for usage
    EOS
  end

  test do
    system "#{bin}/aws-console --version"
  end
end
