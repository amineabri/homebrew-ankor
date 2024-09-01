require_relative "../lib/private"

class Ankor < Formula
  desc "CLI application to help you handle day-to-day tasks"
  homepage "https://github.com/amineabri/ankorstore-cli"
  version "0.1.5"
  license "MIT"

  depends_on "go" => "1.24"
  depends_on "git" => "2.37.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/amineabri/ankorstore-cli/releases/download/v1.3.9-stable/ankor_darwin_amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "88889dce9885149aee38b4105786437862a174a436071b09f2c06a1d02fb9153"

      def install
        bin.install "ankor_darwin_amd64" => "ankor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/amineabri/ankorstore-cli/releases/download/v1.3.9-stable/ankor_darwin_arm64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7bbb74ea7a81a3eb8e0a0c728ba0018de95cdd3aef1ae90ac0f0b2d7b4cfd564"

      def install
        bin.install "ankor_darwin_arm64" => "ankor"
      end
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/amineabri/ankorstore-cli/releases/download/v1.3.9-stable/ankor_linux_amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9c18c4fff349ef1ad708b1aa0e7c8bc0319cd59c49c8d0c671f26c59e298833b"

      def install
        bin.install "ankor_linux_amd64" => "ankor"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/amineabri/ankorstore-cli/releases/download/v1.3.9-stable/ankor_linux_arm64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2f54481524c12088a88d78a955cccf7b993905f60952747ee859c0293cbb435f"

      def install
        bin.install "ankor_linux_arm64" => "ankor"
      end
    end
  end
end
