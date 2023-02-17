require 'sinatra'
require_relative "./config/environment"

class App < Sinatra::Base

end

run App

use Rack::Cors do
    allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :patch, :delete]
    end
end

use Rack::JSONBodyParser

run ApplicationController