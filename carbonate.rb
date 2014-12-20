class Carbonate < FPM::Cookery::Recipe
  description 'Carbonate'

  name     'carbonate'
  section  'Monitoring'
  version  '0.2.2'
  revision 0
  
  homepage 'https://github.com/jssjr/carbonate'
  source   'https://github.com/jssjr/carbonate/archive/0.2.2.tar.gz'
  sha256 'f8622f746a8e3b9a72e3c25d14fd0b25751a3fd07b565c2100204c5c737294ab'

  maintainer 'Anthony Tonns <anthony@tonns.com>'
  vendor     'fpm'
  license    'Apache License'

  def build
    safesystem "/opt/graphite-omnibus/bin/python setup.py build"
  end

  def install
    safesystem "/opt/graphite-omnibus/bin/python setup.py install"
  end

end
