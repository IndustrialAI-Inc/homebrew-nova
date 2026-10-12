#!/bin/sh
# Rewrite Formula/nova.rb for the newest nova release: the version comes from
# dl/latest.json and each archive's sha256 from the .sha256 file published next
# to it. Prints a note and changes nothing until the first release is out.
set -eu

dl=${NOVA_RELEASES_URL:-https://nova.endeavorai.com/dl}
latest=$(curl -fsS "$dl/latest.json" 2>/dev/null) || {
  echo "no release at $dl/latest.json yet"
  exit 0
}
version=$(printf '%s' "$latest" | python3 -c 'import json, sys; print(json.load(sys.stdin)["version"])')

archive() {
  sha=$(curl -fsS "$dl/$version/nova-$1.tar.gz.sha256" | cut -d' ' -f1)
  printf '%s' "$sha" | grep -Eq '^[0-9a-f]{64}$' || { echo "bad sha256 for nova-$1: $sha" >&2; exit 1; }
  printf '      url "%s"\n      sha256 "%s"\n' "$dl/$version/nova-$1.tar.gz" "$sha"
}

mkdir -p Formula
{
  cat <<HEAD
class Nova < Formula
  desc "Turn a warehouse into an ontology and put apps on top of it"
  homepage "https://nova.endeavorai.com"
  version "$version"

  on_macos do
    on_arm do
$(archive aarch64-apple-darwin)
    end
    on_intel do
$(archive x86_64-apple-darwin)
    end
  end

  on_linux do
    on_arm do
$(archive aarch64-unknown-linux-musl)
    end
    on_intel do
$(archive x86_64-unknown-linux-musl)
    end
  end

  def install
    bin.install "nova"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nova --version")
  end
end
HEAD
} > Formula/nova.rb.new
mv Formula/nova.rb.new Formula/nova.rb
echo "Formula/nova.rb is at $version"
