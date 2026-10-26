class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.5.0/nova-aarch64-apple-darwin.tar.gz"
      sha256 "91d63449d3648e0b70d3cc3c40c951de2eec5cd95fc23777782d2c2bab51d6e2"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.5.0/nova-x86_64-apple-darwin.tar.gz"
      sha256 "8644bc4b0fed31873c3ea43ecefc03cd4afc2a61a0c1d63a7b9f050d879f04f2"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.5.0/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b89877d53b5f7847818cf437c052d20e7f841735db27a1312c83816b3cb53e97"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.5.0/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8116e83e153ffef2a44e323f8ca207f714ed1bd92ea677298f6e74842d6df471"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
