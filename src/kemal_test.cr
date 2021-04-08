# TODO: Write documentation for `KemalTest`
require "kemal"

module KemalTest
  VERSION = "0.1.0"

  get "/" do
    "Hello World!"
  end

  get "/env" do |env|
    params = env.params
    render "views/env.ecr"
  end

  begin
    Kemal.run
  rescue exception
    puts exception.message
  end
end
