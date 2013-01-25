require 'base_kde_formula'

class Attica < BaseKdeFormula

  depends_on 'cmake' => :build

  homepage 'http://www.kde.org/'
  url 'ftp://ftp.kde.org/pub/kde/stable/attica/attica-0.4.1.tar.bz2'
  md5 'b90983ec5d79e5ddcbc9146fa23cab72'
end
