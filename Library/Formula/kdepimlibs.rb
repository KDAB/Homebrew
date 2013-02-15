require 'base_kde_formula'

class Kdepimlibs < BaseKdeFormula
  homepage 'http://www.kde.org/'
  url 'http://download.kde.org/stable/4.10.0/src/kdepimlibs-4.10.0.tar.xz'
  sha1 'cf51d06ffd49de44312d5fae52b6fb7fb044459f'

  devel do
    url 'http://download.kde.org/unstable/4.9.95/src/kdepimlibs-4.9.95.tar.xz'
    sha1 '1a88826f75143ad2f2ab76d1c434a643ba1db5be'
  end
  
  head 'git://anongit.kde.org/kdepimlibs.git'

  depends_on 'cmake' => :build
  depends_on 'kdelibs'
  depends_on 'gpgme'
  depends_on 'akonadi'
  depends_on 'libical'
end
