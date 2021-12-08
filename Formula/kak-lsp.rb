class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kak-lsp/kak-lsp/"
  url "https://github.com/kak-lsp/kak-lsp/releases/download/v11.1.0/kak-lsp-v11.1.0-x86_64-apple-darwin.tar.gz"
  sha256 "5b573c5e8f7e51d8ec9ac12843389003ebe72b143db183d07d24c67307e74704"
  version "11.1.0"

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
