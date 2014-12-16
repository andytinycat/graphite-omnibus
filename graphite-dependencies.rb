class GraphiteDependencies < FPM::Cookery::Recipe
  description 'graphite-dependencies'

  name 'graphite-dependencies'
  version '1.0.0'
  revision 0
  source '', :with => :noop

  maintainer '<github@tinycat.co.uk>'
  vendor     'fpm'
  license    'Various'

  section 'interpreters'
  
  platforms [:ubuntu, :debian] do
    depends 'libcairo2', 'libffi-dev'
  end

  platforms [:fedora, :redhat, :centos] do
    build_depends 'cairo-devel', 'libffi-devel'
    depends 'cairo', 'libffi'
  end

  def build
    # Do nothing
  end

  def install
    safesystem "/opt/graphite-omnibus/bin/easy_install twisted==13.0.0"
    safesystem "/opt/graphite-omnibus/bin/easy_install cairocffi==0.5.4"
    safesystem "/opt/graphite-omnibus/bin/easy_install django==1.4.15"
    safesystem "/opt/graphite-omnibus/bin/easy_install django-tagging==0.3.1"
    safesystem "/opt/graphite-omnibus/bin/easy_install python-memcached==1.53"
    safesystem "/opt/graphite-omnibus/bin/easy_install pysqlite==2.6.3"
  end
end
