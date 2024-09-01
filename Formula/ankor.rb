require_relative "../lib/private"

class Ankor < Formula
  desc "CLI application to help you handle day-to-day tasks"
  homepage "https://github.com/ankorstore/ankorstore-cli"
  version "0.1.5"
  license "MIT"

  depends_on "go" => "1.18.3"
  depends_on "git" => "2.37.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.1.5/ankor_darwin_amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "69c06052966b038d3d8fb0ead71ac15f1fa7ce6f69f38a8acd22469f632bf3b3"

      def install
        bin.install "ankor_darwin_amd64" => "ankor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.1.5/ankor_darwin_arm64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "85de8ee9a4bad04c8df4fc5cf7dc0e71259aa5f69f09236cc71609b439858a34"

      def install
        bin.install "ankor_darwin_arm64" => "ankor"
      end
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.1.5/ankor_linux_amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "24dd014c69cb64c63622d7660b928e28331b5543e833732903c54605cc15135b"

      def install
        bin.install "ankor_linux_amd64" => "ankor"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ankorstore/ankorstore-cli/releases/download/v0.1.5/ankor_linux_arm64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "08345c7e34126c3e49540d14c01bd4af8556d0826febc45f7ce43fa4fec10197"

      def install
        bin.install "ankor_linux_arm64" => "ankor"
      end
    end
  end
end
