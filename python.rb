class Python < FPM::Cookery::Recipe
  description 'The Python runtime'

  name 'python'
  version '2.7.5'
  revision 1
  homepage 'http://python.org'
  source 'http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tgz'
  sha256 '8e1b5fa87b91835afb376a9c0d319d41feca07ffebc0288d97ab08d64f48afbf'

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
