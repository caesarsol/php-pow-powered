require 'rack/showexceptions'
require 'rack-legacy'
require 'rack-livereload'

class ProcrastinateWhenProxyConnRefused
  def initialize(app)
    @app = app
  end

  def call(env)
    @app.call(env)
  rescue Errno::ECONNREFUSED
    # The 'php -s' server is not yet started, wait a sec
    # (increment this if you reeive an ECONNREFUSED error.)
    sleep 2
    @app.call(env)
  end
end

Dir.chdir 'public_'
use Rack::LiveReload, :no_swf => true
use Rack::ShowExceptions
use ProcrastinateWhenProxyConnRefused
use Rack::Legacy::Index
use Rack::Legacy::Php
run Rack::File.new Dir.getwd
