require 'base_kde_formula'

class KdepimRuntime < BaseKdeFormula
  homepage 'http://www.kde.org/'
  url 'http://download.kde.org/stable/4.10.0/src/kdepim-runtime-4.10.0.tar.xz'
  sha1 '6cfa320c03dce508d9982767c9718c98606f301f'

  devel do
    url 'http://download.kde.org/unstable/4.9.95/src/kdepim-runtime-4.9.95.tar.xz'
    sha1 '8695d188f360b955fb430d4a99498e4e2e777fe9'
  end

  depends_on 'cmake' => :build
  depends_on 'kdelibs'
end
