$LOAD_PATH << './bin/'
require 'rack/cors'
require 'sinatra-sample'

use Rack::Cors do
  allow do
    origins '*'
    resource '/*',
      :headers => :any,
      :methods => :get
  end
end

ROUTES = {
  '/' => Sample
}
run Rack::URLMap.new(ROUTES)
