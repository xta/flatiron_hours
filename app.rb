require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

#Models

class Flatironschool < ActiveRecord::Base
  
  attr_accessible :status

end

#routes
get "/" do 
  @stat = Flatironschool.last
    if @stat.status == true
      @status = "Fuck Yes It Is"
    else
      @status = "Nope"
    end
  erb :index
end

get "/timtebow" do
  @stat = Flatironschool.last
    if @stat.status == true
      @status = "open"
    else
      @status = "closed"
    end
  erb :timtebow
end

post "/" do
  @flatironschool = Flatironschool.create(params[:flatironschool])
    if @flatironschool.save
      redirect '/'
    end
end

get '/status.json' do
  content_type :json
  {:status => "#{Flatironschool.last.status}"}.to_json
end






