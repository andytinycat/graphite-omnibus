class GraphiteWeb < FPM::Cookery::Recipe
  description 'Graphite Web'

  name     'graphite-web'
  section  'Monitoring'
  version  '0.9.12.head'
  revision 0
  
  homepage 'https://github.com/graphite-project/graphite-web'
  source   'https://github.com/graphite-project/graphite-web', :with => :git

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
