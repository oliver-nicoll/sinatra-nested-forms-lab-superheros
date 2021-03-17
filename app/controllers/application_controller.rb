require 'sinatra'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :super_hero
    end
  
    post '/teams' do
        @team = Team.new(params[:team])

        @team_members = params[:team][:members]

        erb :team
      end
  end
