class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kak-lsp/kak-lsp/"
  url "https://github.com/kak-lsp/kak-lsp/releases/download/v15.0.0/kak-lsp-v15.0.0-x86_64-apple-darwin.tar.gz"
  sha256 "73bc992c1d8f625c3c8d6bf6c47660355279a9dd15cabdb1aae05bf8aac21ddf"
  version "15.0.0"

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
