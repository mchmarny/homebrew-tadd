# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Td < Formula
  desc "Single binary, no dependency, utility to quickly create Todoist task."
  homepage "https://github.com/mchmarny/td"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mchmarny/td/releases/download/v0.2.0/td_darwin_arm64"
      sha256 "c555fd1c331191d0d26bc5d1b04d6f99ae1e4574aca4641c2bcd767098e94963"

      def install
        bin.install "td_darwin_arm64" => "td"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/td/releases/download/v0.2.0/td_darwin_amd64"
      sha256 "67407febc00d313f3d87de75b0098deb0da95956be0f2c83e8cdaecfefb96188"

      def install
        bin.install "td_darwin_amd64" => "td"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/td/releases/download/v0.2.0/td_linux_amd64"
      sha256 "bde5d89cec44361f66f46873bb44960d954d25855012254793ea60bc52f6db4e"

      def install
        bin.install "td_linux_amd64" => "td"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/td/releases/download/v0.2.0/td_linux_arm64"
      sha256 "df30134e18cbb57968517ee857a8ac2ec68b1848459f00c185b29dba72079ced"

      def install
        bin.install "td_linux_arm64" => "td"
      end
    end
  end
end
