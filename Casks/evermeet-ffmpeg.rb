cask "evermeet-ffmpeg" do
  version "4.3.2"
  sha256 "1907747d076585419dca72e16260564d594abfba20eec80ac7d4c898ba101fe7"

  url "https://evermeet.cx/ffmpeg/ffmpeg-#{version}.zip"
  name "FFmpeg"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://evermeet.cx/ffmpeg/"

  conflicts_with formula: "ffmpeg"

  binary "ffmpeg"

  livecheck do
    url "https://evermeet.cx/ffmpeg/info/ffmpeg/release"
    strategy :page_match do |page|
      match = page.match(%r[\A{"name":"ffmpeg","type":"release","version":"(\d+(?:\.\d+)*)"])
      match[1]
    end
  end
end