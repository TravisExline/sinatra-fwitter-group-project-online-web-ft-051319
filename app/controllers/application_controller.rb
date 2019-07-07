require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :secret_session, "fwitter_secret"
  end

  get '/' do
    erb :index
  end
end
