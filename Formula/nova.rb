class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.7.1"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.7.1/nova-aarch64-apple-darwin.tar.gz"
      sha256 "4c3966f51912573b5ed43aa5e47f614141dd2b78909ed2a97f13bda8c62b652c"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.7.1/nova-x86_64-apple-darwin.tar.gz"
      sha256 "303ec78c37c5b5f559297bea03aa58a73e2189dd22fcae0a585c38fbc51a8b1f"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.7.1/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ed161af09bb3cba6aa493a0087005728cd4ef7e9b9cb43c6dc69177309c9fc7"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.7.1/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4879c8503f0c78ccce921084a6659689991fa73e939066ab3cd75d3faa67d9d0"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
