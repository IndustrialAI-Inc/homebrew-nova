class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.7.0/nova-aarch64-apple-darwin.tar.gz"
      sha256 "e17b2f5556f4c48a1c80c28918e1bbf4003015f1fa27c2d47f9946c084266c25"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.7.0/nova-x86_64-apple-darwin.tar.gz"
      sha256 "0c17bf5cf16ba141fac198a2048d5f908cdc6eef67eb7453fd8c85e3c53cc415"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.7.0/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "81706bc6df4832ff2ff0d33ee058d323cd3a43d62fd9dcfefbc150bb4bf5b449"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.7.0/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6a274a0e4cb29c1962ac49683951fa7c5dc04f62d8ab1d5c9641f79c41420f4e"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
