--*-lua-*--
package = 'metalua'
version = '0.7.3-2'
source = {
 url = 'http://git.eclipse.org/c/ldt/org.eclipse.metalua.git/snapshot/org.eclipse.metalua-all-v0.7.3-2.tar.gz',
}
description = {
  summary = 'Metalua: parser, compiler and command line interface.',
  detailed = 'Just enabling metalua-compiler powers to command line.',
  homepage = 'https://git.eclipse.org/c/ldt/org.eclipse.metalua.git',
  license = 'EPL + MIT'
}
dependencies = {
  'lua ~> 5.1',
  'metalua-compiler == 0.7.3',
  platforms = {
    unix = {
      'alt-getopt ~> 0.7',
      'checks ~> 1.0',
      'readline ~> 1.3', -- Better REPL experience
    }
  }
}
build = {
  type='builtin',
  modules = { },
  install = {
    bin = {
      metalua = 'bin/metalua'
    }
  }
}
