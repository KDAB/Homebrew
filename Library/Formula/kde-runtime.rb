require 'base_kde_formula'

class KdeRuntime < BaseKdeFormula
  homepage 'http://www.kde.org/'
  url 'http://download.kde.org/stable/4.10.0/src/kde-runtime-4.10.0.tar.xz'
  sha1 'eff82d54383ece321dc93bdfb494c0a9abcbb998'

  devel do
    url 'http://download.kde.org/unstable/4.9.95/src/kde-runtime-4.9.95.tar.xz'
    sha1 'b5c271ddf335970d2d68395162b73f087efea4c4'
  end

  depends_on 'cmake' => :build
  depends_on 'kde-phonon'
  depends_on 'nepomuk-core'
  depends_on 'oxygen-icons'
  depends_on 'kdelibs'
  depends_on 'kdepimlibs'

  def extra_cmake_args
    phonon = Formula.factory 'kde-phonon'
    "-DPHONON_INCLUDE_DIR=#{phonon.include} -DPHONON_LIBRARY=#{phonon.lib}/libphonon.dylib"
  end
end
