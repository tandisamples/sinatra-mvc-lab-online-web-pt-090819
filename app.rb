require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @user = params[:user_phrase]
        @piglatinize = PigLatinizer.new.piglatinize(@user)
        erb :piglatinize
    end
end