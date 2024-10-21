class KakouneLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kakoune-lsp/kakoune-lsp/"
  url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.0.2/kakoune-lsp-v18.0.2-x86_64-apple-darwin.tar.gz"
  sha256 "4c600a3f17adf5f8ee802da857ea27fae9f0ffccc89414b35402e2259dad42cc"
  version "18.0.2"

  def install
    bin.install "kak-lsp"
  end

  def caveats
    <<~EOS
      For the default config, put

        eval %sh{kak-lsp}
        lsp-enable

      into your kakrc.

      To customize the behavior, see https://github.com/kakoune-lsp/kakoune-lsp/blob/v#{version}/README.asciidoc
      If you are on Apple Silicon, make sure to install Rosetta using `softwareupdate --install-rosetta` (native version is work in progress).
    EOS
  end

end
