require 'base_kde_formula'


class OxygenIcons < BaseKdeFormula
  homepage 'http://www.oxygen-icons.org'
  url 'http://download.kde.org/stable/4.10.0/src/oxygen-icons-4.10.0.tar.xz'
  sha1 'e7f9b5fd8fe0e6f6f9c0d744424134497328e65e'

  devel do
    url 'http://download.kde.org/unstable/4.9.95/src/oxygen-icons-4.9.95.tar.xz'
    sha1 'ab58b38d8d691d55578c5ad33ed0e5220f2906b1'
  end

  depends_on 'xz' => :build
end
