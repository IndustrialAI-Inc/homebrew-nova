class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.4.0/nova-aarch64-apple-darwin.tar.gz"
      sha256 "be5f9d3d22f45a841d3fd04626970aca5f62856ecf206c35b1adcc28b737f0a9"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.4.0/nova-x86_64-apple-darwin.tar.gz"
      sha256 "eef483f832aa394fe8fac45dd10660e3bfd12ed818966a921b79dbca98349a97"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.4.0/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f2618204f2ad700091c043c33f56181ad55fca0b652aeb9a6f4379475b2ea288"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.4.0/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c036691bc5a5c0fd0288f1760bc6eacd3b64cd6e11989dcb6f4e06da04ffbcb"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
