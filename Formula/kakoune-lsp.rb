class KakouneLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kakoune-lsp/kakoune-lsp/"
  if Hardware::CPU.arm?
    url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.1.2/kakoune-lsp-v18.1.2-aarch64-apple-darwin.tar.gz"
    sha256 "9e9c37136d0b065263ebfb304b2b47fda021a7dde8555caaad4d537881a1fafb"
  else
    url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.1.2/kakoune-lsp-v18.1.2-x86_64-apple-darwin.tar.gz"
    sha256 "bd5a00cf6bd77bdad7ab74948e9c16b197548d5e85510494240e4c122e01e576"
  end
  version "18.1.2"

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
    EOS
  end

end
