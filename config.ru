require 'sinatra'
require 'rack-livereload'

use Rack::LiveReload

class Sandbox < Sinatra::Base

  set :public_folder, 'public'

  get '/' do
    File.read(File.join('public', 'index.html'))
  end
end

run Sandbox.new
