require 'base_kde_formula'

class NepomukCore < BaseKdeFormula
  homepage 'http://www.kde.org/'
  url 'http://download.kde.org/stable/4.10.0/src/nepomuk-core-4.10.0.tar.xz'
  sha1 'affc4d3063db773e5b05ff746a4c64adbec29264'

  devel do
    url 'http://download.kde.org/unstable/4.9.95/src/nepomuk-core-4.9.95.tar.xz'
    sha1 '98bee83019e469e28772da24cbec05d7744e6e44'
  end

  depends_on 'kdelibs'
  depends_on 'cmake' => :build
end
