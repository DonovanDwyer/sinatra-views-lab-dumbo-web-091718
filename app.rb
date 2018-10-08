require 'date'

class App < Sinatra::Base

attr_accessor :name, :date

	# get '/' do
	# 	erb :index
	# end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		@name = "Joe"
		erb :goodbye
	end

	get '/date' do
		d = DateTime.now
		@date = d.strftime("The date is %A, %B %d, %Y")
		erb :date
	end

end
