class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.1.0/nova-aarch64-apple-darwin.tar.gz"
      sha256 "9ec1bba3f490da431a3ca81ea3106094be4c223f3be1697c9467be0e07da03df"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.1.0/nova-x86_64-apple-darwin.tar.gz"
      sha256 "f4160a0e60c09ee4f14ac0323df977603111e88e669aa3775e646d9acaa2623d"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.1.0/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "456f850b147d6db77b0e2f816e65102e0f5459478a349c7b5acd13c76f1eb9c5"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.1.0/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f2e5315a0455a1dd8a758109fd55cbf63c55ecd9f7c901a97c632f2dbed2658"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
