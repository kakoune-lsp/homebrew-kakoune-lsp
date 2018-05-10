class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/ul/kak-lsp/"
  url "https://github.com/ul/kak-lsp/releases/download/v2.2.1/kak-lsp-v2.2.1-x86_64-apple-darwin.tar.gz"
  sha256 "f398b47687e371f451fa294de1d744a8cae1c867b55f50e766c7ce26d91ff0c3"
  version "2.2.1"

  def install
    bin.install "kak-lsp"
    bin.install "kak-lsp.toml"
    pkgshare.install "lsp.kak"
  end

  def caveats
    <<~EOS
      Due to Homebrew limitations you need to install/update lsp.kak manually:

      cp #{pkgshare}/lsp.kak ~/.config/kak/autoload/
    EOS
  end

  plist_options :startup => true

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
        <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
            <string>#{bin}/kak-lsp</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
          <key>KeepAlive</key>
          <true/>
        </dict>
      </plist>
    EOS
  end
end
