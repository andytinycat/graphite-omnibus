class SetupTools < FPM::Cookery::Recipe
  description 'Setuptools'

  name 'setuptools'
  version '0.6.45'
  revision 0
  homepage 'https://pypi.python.org/pypi/setuptools'
  source 'https://pypi.python.org/packages/source/s/setuptools/setuptools-5.7.tar.gz'
  sha256 'a8bbdb2d67532c5b5cef5ba09553cea45d767378e42c7003347e53ebbe70f482'
  
  maintainer '<github@tinycat.co.uk>'
  vendor     'fpm'
  license    'PSF'

  section 'interpreters'

  def build
  end

  def install
    safesystem "/opt/graphite-omnibus/bin/python setup.py install"
  end
end
