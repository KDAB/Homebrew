require 'base_kde_formula'

class Kactivities < BaseKdeFormula
  homepage 'http://www.kde.org/'
  url 'http://download.kde.org/stable/4.10.0/src/kactivities-4.10.0.tar.xz'
  sha1 '4d788f21019cbbe0c27ab3eef51a75125d9966b8'

  devel do
    url 'http://download.kde.org/unstable/4.9.95/src/kactivities-4.9.95.tar.xz'
    sha1 '2f908ab040f124bd054aff29fbe838378761a696'
  end

  depends_on 'cmake' => :build
  depends_on 'kdelibs'
end
