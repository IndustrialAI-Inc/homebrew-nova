class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.5.2/nova-aarch64-apple-darwin.tar.gz"
      sha256 "c6e263bc98aa91115f9e3f625c823c76479d6caee6e835ae87c7835e088f2579"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.5.2/nova-x86_64-apple-darwin.tar.gz"
      sha256 "e54ae99d756aa0b8c87d84a823008ad14252342b5e2e8808ca0fc9fc42e8f995"
    end
  end

  on_linux do
    on_arm do
      url "https://nova.endeavorai.com/dl/0.5.2/nova-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5be2043eb6a8c5a952ebd96d4636d005127027e3cd7d36dd6c42b0d8cd2a3a9a"
    end
    on_intel do
      url "https://nova.endeavorai.com/dl/0.5.2/nova-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c084cc6537caf2514a0497126aaf3b2f5e744b0fc003bac205c7a5b7b15a59a"
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
