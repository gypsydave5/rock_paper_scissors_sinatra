require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  set :views, File.join(root, '..', 'views')
  set :public_folder, File.join(root, '..', 'public')

  configure :production do
    require 'newrelic_rpm'
  end

  get '/' do
    erb :index
  end

  get '/new-game' do
  	erb :new_player
  end

  post '/register' do
  	@player = params[:name]
  	erb :play
  end

  post "/play" do
  	player = Player.new(params[:name])
  	player.picks = params[:pick]
  	computer = generate_computer
  	@game = Game.new(player, computer)
		@results = @game.results
  	erb :outcome
  end

  def generate_computer
  	choice = ["Rock","Paper","Scissors"].sample
  	comp = Player.new("computer")
  	comp.picks = choice
  	comp
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
