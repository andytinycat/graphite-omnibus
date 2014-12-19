class Python < FPM::Cookery::Recipe
  description 'The Python runtime'

  name 'python'
  version '2.7.9'
  revision 1
  homepage 'http://python.org'
  source 'https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz'
  sha256 'c8bba33e66ac3201dabdc556f0ea7cfe6ac11946ec32d357c4c6f9b018c12c5b'

  maintainer '<github@tinycat.co.uk>'
  vendor     'fpm'
  license    'The Python License'

  section 'interpreters'

  build_depends 'mime-support', 'libbz2-dev', 'libdb-dev', 'libexpat-dev', 'libgcc1',
                'libncurses-dev', 'libreadline6-dev', 'libsqlite3-dev', 'libtinfo-dev',
                'libssl-dev', 'g++'

  depends       'mime-support', 'libbz2-1.0', 'libdb5.1', 'libexpat1', 'libgcc1',
                'libncurses5', 'libreadline6', 'libsqlite3-0', 'libtinfo5',
                'libssl1.0.0'

  def build
    configure :prefix => "/opt/graphite-omnibus", 'disable-install-doc' => true, 'enable-unicode' => 'ucs4'
    make
  end

  def install
    make :install
  end
end
