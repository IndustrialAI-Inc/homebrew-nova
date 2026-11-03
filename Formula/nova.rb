class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.8.0/nova-aarch64-apple-darwin.tar.gz"
      sha256 "7e63c0c5cb1e11b17180acfd374c1e6e2cc32d940489a5a74e6a5cf0a5ace069"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.8.0/nova-x86_64-apple-darwin.tar.gz"
      sha256 "2373818375b5b5ea296f8a49357cafb1ad43e4d53cb2c983b85a1ddf1361e0ca"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.8.0/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "edaf9097942bbb91dd292ad5ae5d89f5a019d8ca411808f23265d77ecd2d0859"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.8.0/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "376049ebacd19b9a4d1ee74327d82681352eaae86df77f9ff842470f569092ba"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
