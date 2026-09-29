class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.1/jtorrent_0.1.1_darwin_arm64.tar.gz"
      sha256 "18f03573cca601d39981a889d36d0a1edc56c8f822fd274ad0a6546d28fa4f78"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.1/jtorrent_0.1.1_darwin_amd64.tar.gz"
      sha256 "c05614d7efcf42d1fc3e43b40b583c66a76495bd23bdfab36106582e614719d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.1/jtorrent_0.1.1_linux_arm64.tar.gz"
      sha256 "6db020d5136907893ba7cf170ffcd3063e08657e6494d6e7b7feb591c160c7f0"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.1/jtorrent_0.1.1_linux_amd64.tar.gz"
      sha256 "11dfaddb98cef4c5404c51caf0ce7672116b640f630ef0ea9760f993d377bedc"
    end
  end

  def install
    bin.install "jtorrent"
  end

  test do
    assert_match "jtorrent", shell_output("#{bin}/jtorrent --help")
  end
end
