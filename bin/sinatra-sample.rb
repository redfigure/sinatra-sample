require 'sinatra/base'
require 'json'

class Sample < Sinatra::Base
  get '/' do
    "This is a Sample"
  end

  error 404 do
    article = {
      code: 404,
      message: "Looking what was found? ;-)"
    }
    article.to_json
  end

  error 500 do
    article = {
      code: 500,
      message: "Sorry, call my boss."
    }
    article.to_json
  end

  error 503 do
    article = {
      code: 503,
      message: "Oops! Something useless."
    }
    article.to_json
  end
end
