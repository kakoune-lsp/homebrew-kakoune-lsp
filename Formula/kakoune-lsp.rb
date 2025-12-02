class KakouneLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/kakoune-lsp/kakoune-lsp/"
  version "18.2.0"

  if Hardware::CPU.arm?
    url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.2.0/kakoune-lsp-v18.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "b6aabde460ac7c6e5af808adbb80a9a83caac6c38f5df65ac656cb856ebdf238"
  else
    on_macos do
      url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.2.0/kakoune-lsp-v18.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a76a7fab3e10079f6399c6a9c07d1ff2f687b26a9abb9f201a7f8144db7be92b"
    end
    on_linux do
      url "https://github.com/kakoune-lsp/kakoune-lsp/releases/download/v18.2.0/kakoune-lsp-v18.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ebd20afd632a15758510608ea641bc7bed022b189dade253b33f42be858ad16"
    end
  end

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
