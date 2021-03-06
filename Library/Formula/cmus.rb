require 'formula'

class Cmus <Formula
  url 'http://downloads.sourceforge.net/project/cmus/cmus-v2.3.3.tar.bz2'
  homepage 'http://cmus.sourceforge.net/'
  md5 '220e875e4210a6b54882114ef7094a79'

  depends_on 'libao'
  depends_on 'mad'
  depends_on 'libogg'
  depends_on 'libvorbis'
  depends_on 'faad2'
  depends_on 'flac'

  skip_clean 'bin/cmus'
  skip_clean 'bin/cmus-remote'

  def install
    system "./configure", "prefix=#{prefix}", "mandir=#{man}"
    system "make install"
  end
end
