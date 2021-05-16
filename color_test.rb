require 'bundler/setup'
require "sinatra"
require "minitest/spec"
require "minitest/autorun"
require "rack/test"
require_relative "color"

describe "sinatra app" do
  include Rack::Test::Methods

  def app
	Sinatra::Application
  end

  it "should trigger mocked instance methods" do

    get "/"
    assert_equal "{\"color\": \"red\"}", last_response.body
  end
end
