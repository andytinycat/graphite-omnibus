class Carbon < FPM::Cookery::Recipe
  description 'Carbon'

  name     'carbon'
  section  'Monitoring'
  version  '0.9.12.head'
  revision 0
  
  homepage 'https://github.com/graphite-project/carbon'
  source   'https://github.com/graphite-project/carbon', :with => :git

  maintainer 'Andy Sykes <github@tinycat.co.uk>'
  vendor     'fpm'
  license    'Apache License'

  def build
    safesystem "/opt/graphite-omnibus/bin/python setup.py build"
  end

  def install
    safesystem "/opt/graphite-omnibus/bin/python setup.py install \
                --prefix=/opt/graphite-omnibus/graphite \
                --install-lib=/opt/graphite-omnibus/graphite/lib"
  end

end
