class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kak-lsp/kak-lsp/"
  url "https://github.com/kak-lsp/kak-lsp/releases/download/v8.0.0/kak-lsp-v8.0.0-x86_64-apple-darwin.tar.gz"
  sha256 "ea2380bf61502c7b5d59b485621a8e92dce5d02acef66433fdcc43134082871a"
  version "8.0.0"

  def install
    bin.install "kak-lsp"
    share.install "kak-lsp.toml"
  end

  def caveats
    <<~EOS
      Be sure to put

        eval %sh{kak-lsp --kakoune -s $kak_session}
        lsp-enable

      into your kakrc.

      To customize kak-lsp copy default config from #{share}/kak-lsp.toml to ~/Library/Preferences/kak-lsp/kak-lsp.toml and edit it.
    EOS
  end

end
