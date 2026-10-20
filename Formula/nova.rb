class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.2.0/nova-aarch64-apple-darwin.tar.gz"
      sha256 "29838e6d24ee05d16cda531235a14f0b832082dc1abccae061a3709d49651d5c"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.2.0/nova-x86_64-apple-darwin.tar.gz"
      sha256 "536deb50811b2556d389f71528465b1f4e70e159ce532877eb35c0b9cee1ceca"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.2.0/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f87ddafb213eebcb919d0a314d28756ede0fd48aaf6937e2ab1e98938b2e733"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.2.0/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "75137d91cf8b935e4c6efe7b9104ef2f6501823c5e06b55e6e7dc8439d0cd1a0"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
