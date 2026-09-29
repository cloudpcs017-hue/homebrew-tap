class Jtorrent < Formula
  desc "Download torrents through the JTorrent cloud from your terminal"
  homepage "https://github.com/OxJacky/jtorrent-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.2/jtorrent_0.1.2_darwin_arm64.tar.gz"
      sha256 "4e6db3bd68276705ec86da55e68e23b25a490211d9c66d05c92f86c8fab619d2"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.2/jtorrent_0.1.2_darwin_amd64.tar.gz"
      sha256 "a65317a11dfdf2929e2733a005fb1785c66be2c51af28a38ea9bb8d693f5c411"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.2/jtorrent_0.1.2_linux_arm64.tar.gz"
      sha256 "03f9ac0b5664a9d7396aa441cbf70657f6f648a4cabf2446fa935b792691d0e9"
    else
      url "https://github.com/OxJacky/jtorrent-cli/releases/download/v0.1.2/jtorrent_0.1.2_linux_amd64.tar.gz"
      sha256 "497cba1e2df6f40d955b2bb89006b40216f6546b61a081f956d87be388bdb3f5"
    end
  end

  def install
    bin.install "jtorrent"
  end

  test do
    assert_match "jtorrent version #{version}", shell_output("#{bin}/jtorrent --version")
  end
end
