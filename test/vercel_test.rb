# -*- encoding : utf-8 -*-
require 'testing'
require 'vercel'

Testing Vercel do
  testing 'tests work' do
    assert{ helper }
  end

protected
  def helper
    true
  end
end

BEGIN {
  testdir = File.dirname(File.expand_path(__FILE__))
  testlibdir = File.join(testdir, 'lib')
  rootdir = File.dirname(testdir)
  libdir = File.join(rootdir, 'lib')

  $LOAD_PATH.push(libdir)
  $LOAD_PATH.push(testlibdir)
}
