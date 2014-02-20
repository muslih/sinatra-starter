require	'./app'
require 'rack/test'

set :environtment, :test

describe 'Starter App Test' do

	def app
		MainApp.new
	end

	include Rack::Test::Methods

	it	'Harus meload halaman awal' do
		get '/'
		last_response.should be_ok
	end
end