require 'base_kde_formula'

class Kdepim < BaseKdeFormula
  homepage 'http://www.kde.org/'
  url 'http://download.kde.org/stable/4.10.0/src/kdepim-4.10.0.tar.xz'
  sha1 '6074fcea53b10c3660c5cc9a00b65e777840fdc4'

  head 'git://anongit.kde.org/kdepim.git'

  devel do
    url 'http://download.kde.org/unstable/4.9.95/src/kdepim-4.9.95.tar.xz'
    sha1 '30507d56162f563aec3aff9f2dd5b68df6a2645f'
  end

  depends_on 'kdepimlibs'
  depends_on 'cmake' => :build
end
