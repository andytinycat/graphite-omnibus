class GraphiteOmnibus < FPM::Cookery::Recipe
  homepage "https://launchpad.net/graphite"

  section "Monitoring"
  name "graphite-omnibus"
  version "0.9.12.head"
  description "Graphite Omnibus package"
  revision 1
  vendor "fpm"
  maintainer "Andy Sykes <github@tinycat.co.uk>"
  license "Apache 2.0 License"

  source '', :with => :noop

  omnibus_package true
  omnibus_recipes "python", "python-setuptools", "graphite-dependencies", "whisper", "carbon", "graphite-web", "init-scripts"
  omnibus_dir     "/opt/graphite-omnibus"

  def build
    # Nothing
  end

  def install
    # Nothing
  end

end
