class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.5.3/nova-aarch64-apple-darwin.tar.gz"
      sha256 "0ff5d9c0782a019ee97a5b403ef0fa258a5d120693c2d6c748786d1507bebf1e"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.5.3/nova-x86_64-apple-darwin.tar.gz"
      sha256 "71498dc8826a53aa0a64621180deb17c13a4fd36e51cfc7db66206174059a3c7"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.5.3/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1295eafcd80e5bda6a1c7f25963bb31d1ee96ae71d963b04fa02c39316c2b7e0"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.5.3/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5fca0047d9874c5b7c58b17d537ab739ea3d1dd6aa557b17b56148b2576bf35e"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
