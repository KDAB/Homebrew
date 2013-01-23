require 'formula'

class SharedDesktopOntologies < Formula
  homepage 'http://sourceforge.net/apps/trac/oscaf/'
  url 'http://sourceforge.net/projects/oscaf/files/shared-desktop-ontologies/0.10.0/shared-desktop-ontologies-0.10.0.tar.bz2/download'
  md5 'bfb7b5acbb43e5e45466c87dbe9c45b7'

  depends_on 'cmake' => :build

  def install
    system "cmake #{std_cmake_parameters} ."
    system "make install"
  end
end
