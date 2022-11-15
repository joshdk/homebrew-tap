# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsSaml < Formula
  desc "Generate AWS credentials from a SAML IdP login"
  homepage "https://github.com/joshdk/aws-saml"
  version "0.1.0-rc.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/joshdk/aws-saml/releases/download/v0.1.0-rc.1/aws-saml-darwin-amd64.tar.gz"
      sha256 "4ae5c1a74023fbf7cfdffe2f53a96a3313efe0e147bbf0a26ea2d23ae9e78dfb"

      def install
        bin.install "aws-saml"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/joshdk/aws-saml/releases/download/v0.1.0-rc.1/aws-saml-darwin-arm64.tar.gz"
      sha256 "34c46d94783dc7254f6112d8e8d3138e1a6acf74fe855bf842053da7863f1368"

      def install
        bin.install "aws-saml"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/joshdk/aws-saml/releases/download/v0.1.0-rc.1/aws-saml-linux-amd64.tar.gz"
      sha256 "c3058309274bc990709e6283719eecf84301420382a824e11378d21e23cfb6e3"

      def install
        bin.install "aws-saml"
      end
    end
  end

  def caveats
    <<~EOS
      Run aws-saml --help for usage
    EOS
  end

  test do
    system "#{bin}/aws-saml --version"
  end
end
