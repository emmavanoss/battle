require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

 class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @next_page = '/attack'
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    @sound = 'KAPOW'
    @next_page = '/play2'
    erb :attack
  end

  get '/play2' do
    @game = $game
    @next_page = '/attack2'
    erb :play
  end

  get '/attack2' do
    @game = $game
    @game.attack(@game.player_1)
    @sound = 'BAM'
    @next_page = '/play'
    erb :attack
  end

  run! if app_file == $0
end
