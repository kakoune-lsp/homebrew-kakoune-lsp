class KakLsp < Formula
  desc "Kakoune Language Server Protocol Client"
  homepage "https://github.com/ul/kak-lsp/"
  url "https://github.com/ul/kak-lsp/releases/download/v3.7.0/kak-lsp-v3.7.0-x86_64-apple-darwin.tar.gz"
  sha256 "6a6a9b7233e52838c32dc38d370f1ca7f778b00bc44bde14128b8136f56fdb7d"
  version "3.7.0"

  def install
    bin.install "kak-lsp"
    share.install "kak-lsp.toml"
  end

  def caveats
    <<~EOS
      Be sure to put

        %sh{kak-lsp --kakoune -s $kak_session}
        lsp-start

      into your kakrc.

      To customize kak-lsp copy default config from #{share}/kak-lsp.toml to ~/.config/kak-lsp/kak-lsp.toml and edit it.

      Provided service might be useful if you are using kak-lsp in TCP mode.
      It's not needed for default integration described above.
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
            <string>/bin/bash</string>
            <string>-l</string>
            <string>-c</string>
            <string>#{bin}/kak-lsp</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
          <key>KeepAlive</key>
          <true/>
          <key>StandardErrorPath</key>
          <string>/tmp/kak-lsp.log</string>
        </dict>
      </plist>
    EOS
  end
end
