class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.1.1/nova-aarch64-apple-darwin.tar.gz"
      sha256 "33feaaf8c18a7395dce95f68e373ca19f346ac99cb88bdf63f50e8f485e23cfc"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.1.1/nova-x86_64-apple-darwin.tar.gz"
      sha256 "c7c148804e3856350494ab8682a4a2cc67c03aa981900455eb988f56b01ae7a1"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.1.1/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "265d65afe580c82853eb267364693a92109f7f6b491efbd62a976c7d55d0b519"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.1.1/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d904f7dc108962cacb40511ce481951ec3b64c8a68cac49c88cc8451a397bf4"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
