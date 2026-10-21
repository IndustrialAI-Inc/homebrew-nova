class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.3.0/nova-aarch64-apple-darwin.tar.gz"
      sha256 "2ac33a770dc9ed8ab39d29c5bffed655e224f8262a09dfa575e0f166f30379f9"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.3.0/nova-x86_64-apple-darwin.tar.gz"
      sha256 "7ad54415cfc4e3b4cc40d2d95f16ded3ad3126dd9103d53d3537c36d3ce3ab43"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.3.0/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "119e790dc1b608f6234676619f1efd8c876126f0c18e188a08408ab8f875933a"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.3.0/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a284041deb9fb8e8055e8dd1bd344cf74b4f8b55d20ef7a31f5fb2627e1005bf"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
