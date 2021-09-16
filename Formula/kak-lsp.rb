class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kak-lsp/kak-lsp/"
  url "https://github.com/kak-lsp/kak-lsp/releases/download/v11.0.1/kak-lsp-v11.0.1-x86_64-apple-darwin.tar.gz"
  sha256 "a3d235bf7ffaa27904ebe3151eb253304edee3fb15649a193e8c911f4f2da910"
  version "11.0.1"

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
