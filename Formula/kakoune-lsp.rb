class KakouneLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kakoune-lsp/kakoune-lsp/"
  url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.0.0/kakoune-lsp-v18.0.0-x86_64-apple-darwin.tar.gz"
  sha256 "167286a8289a29d31d54a38b9c8eea51ca28e474fac1bc06d0b57ec61f430481"
  version "18.0.0"

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
