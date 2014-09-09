class InitScripts < FPM::Cookery::Recipe
  description 'Install Graphite initd scripts'

  name 'init-script'
  version '1'
  source "nothing", :with => :noop

  def build
    # Do nothing
  end

  def install
    # Copy init-scripts to right place
    etc('init.d').install workdir('carbon-relay.initd') => 'graphite-carbon-relay'
    etc('init.d').install workdir('carbon-cache.initd') => 'graphite-carbon-cache'
  end
end
