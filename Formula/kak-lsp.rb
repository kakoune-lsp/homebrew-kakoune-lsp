class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kak-lsp/kak-lsp/"
  url "https://github.com/kak-lsp/kak-lsp/releases/download/v11.0.0/kak-lsp-v11.0.0-x86_64-apple-darwin.tar.gz"
  sha256 "32d6600bdc1688ecbbaa73a6e7ba2bed7203ac8a91c4ef20b2170bac3a6f1535"
  version "11.0.0"

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
