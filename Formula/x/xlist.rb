class Xlist < Formula
  desc "A small tool to get all asset names from xcode as enum"
  homepage "https://github.com/mhasan341/xlist"
  url "https://github.com/mhasan341/xlist/releases/download/v1.0.0/xlist-1.0.0.tar.gz"
  sha256 "a12be6d4eec9f7cfce01921c7768b2ed7661340a10819b1aaa2d25d37643004e"

  def install
    bin.install "xlist.sh" => "xlist"
  end
end

