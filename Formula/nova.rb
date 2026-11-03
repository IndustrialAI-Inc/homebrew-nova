class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.9.0/nova-aarch64-apple-darwin.tar.gz"
      sha256 "d99451c4b30b45c05bdff512e9b6e1ed62d296a24c0ad430fd7e380ca22e6514"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.9.0/nova-x86_64-apple-darwin.tar.gz"
      sha256 "7bd1290f2ee075bd51e3ce3b21fc2638ccaa5f7a31a4fd2bc8f565e727cd2da6"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.9.0/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c56aab87068a129ec6cd696319954518cb431a0912300369d6db2e1a96d8cb46"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.9.0/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9cea0552b8c9cdbfc746e0b3781097764c42c3af26adaad01f760c0de2d53896"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
