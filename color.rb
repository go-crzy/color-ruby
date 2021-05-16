require 'bundler/setup'
require "sinatra"

get "/" do
	[200, {"Content-Type" => "application/json"}, "{\"color\": \"red\"}"]
end
