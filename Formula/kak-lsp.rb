class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kak-lsp/kak-lsp/"
  url "https://github.com/kak-lsp/kak-lsp/releases/download/v12.1.0/kak-lsp-v12.1.0-x86_64-apple-darwin.tar.gz"
  sha256 "fbef0cd36d63344edc60bd5d8864e4e58b19305a93655fc30dcf0fad81e5da17"
  version "12.1.0"

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
