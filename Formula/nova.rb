class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.1.2/nova-aarch64-apple-darwin.tar.gz"
      sha256 "a9d7a4323a64c191cdbdac10851ed9f94a17401ba2b6337d0f4878dee51b0a00"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.1.2/nova-x86_64-apple-darwin.tar.gz"
      sha256 "756455cbbf370746ab0ad0f60f55c5d347fc8db9c2bf0bee0163c81dc183a73b"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.1.2/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "238706bce72251483f7804c634b82b30bbebf63824427abedef4f351da471d87"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.1.2/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf814a7b327c137d97a3954948aaec0046cf77e7cb4856801d7990b4aa25612a"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
