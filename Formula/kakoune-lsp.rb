class KakouneLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kakoune-lsp/kakoune-lsp/"
  url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v17.1.1/kakoune-lsp-v17.1.1-x86_64-apple-darwin.tar.gz"
  sha256 "5c293efac9900af464d739c201c5776603894ed1898536496ed29c8a9a6a5d58"
  version "17.1.1"

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

      To customize kak-lsp copy default config from #{share}/kak-lsp.toml to ~/.config/kak-lsp/kak-lsp.toml and edit it.
      If you are on Apple Silicon, make sure to install Rosetta using `softwareupdate --install-rosetta` (native version is work in progress).
    EOS
  end

end
