require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require './helpers/sinatra'

class MainApp < Sinatra::Base
	helpers Sinatra::MainHelpers
  	register Sinatra::Flash

	get '/' do
		erb :main
	end
end
