class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.6.0/nova-aarch64-apple-darwin.tar.gz"
      sha256 "6f8931321bf9bcc21dedb7023e927ca34b53037168c68c29904f521cce5e559e"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.6.0/nova-x86_64-apple-darwin.tar.gz"
      sha256 "bc8db84d9bd734bac61b9e254c21dfa421bb5eb01bc8e79ded981fdca02f0c07"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.6.0/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20bc33f79669a304474d8dd728a13669d655734ece1998243a8d55f6bfd7673a"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.6.0/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8c8e602bbc02105ec931f8c4bec2077b9d329110aa87b8a8107dec665abb9ef"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
