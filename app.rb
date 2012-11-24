require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

#Models

class Flatironschool < ActiveRecord::Base
  
  attr_accessible :status

  # def current_status
  #   @stat.status == true ? "Fuck Yes It Is" : "Nope" 
  # end
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

post "/" do
  @flatironschool = Flatironschool.create(params[:flatironschool])
    if @flatironschool.save
      redirect '/'
    end
end







