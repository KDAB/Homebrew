require 'base_kde_formula'

class Akonadi < BaseKdeFormula
  homepage 'http://pim.kde.org/akonadi/'
  url 'ftp://ftp.kde.org/pub/kde/stable/akonadi/src/akonadi-1.9.0.tar.bz2'
  md5 '51ef4c9455f97ce4346c5934174b9da8'

  depends_on 'cmake' => :build
  depends_on 'shared-mime-info'
  depends_on 'soprano'
  depends_on 'boost'
  depends_on 'qt'

end
