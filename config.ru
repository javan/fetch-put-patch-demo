require 'bundler/setup'
require 'rack'
require 'rack/cors'
require 'json'

use Rack::Cors do
  allow do
    origins "*"
    resource "*", headers: :any, methods: :any
  end
end

use Rack::Static, urls: "/", index: "index.html"

map "/ping" do
  app = Proc.new do |env|
    request = Rack::Request.new(env)

    response = JSON.generate({
      method: request.request_method,
      params: request.params,
      content_type: request.env["CONTENT_TYPE"],
      content_length: request.env["CONTENT_LENGTH"],
      body: request.body.read.to_s
    })

    [200, { "Content-Type" => "application/json" }, [response]]
  end
  run app
end
