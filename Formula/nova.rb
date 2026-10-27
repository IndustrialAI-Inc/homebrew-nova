class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.5.1/nova-aarch64-apple-darwin.tar.gz"
      sha256 "db0ab2d51cbf641dca4a4f434e1a6b9d9f2f9216950b2b3dd13740654f9e2126"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.5.1/nova-x86_64-apple-darwin.tar.gz"
      sha256 "07d35a401fe53040b8581171a6e34e3211331ff23c1f9f7d4656501e8b7322e1"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.5.1/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a06837239b56b6782b32a16293514383613af21e0773d1e618555db4a38413ca"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.5.1/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ded632adcf684d3b174d8b91565157f31bed4b9d3db215134ae7f1eef106fdc"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
