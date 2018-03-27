require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game')


get '/' do
  erb(:home)
end


get '/welcome' do
  erb(:welcome)
end

get "/game/:choice1/:choice2" do
 game = Game.new(params[:choice1], params[:choice2])
 @result = game.get_winner()
   erb(:result)
end
