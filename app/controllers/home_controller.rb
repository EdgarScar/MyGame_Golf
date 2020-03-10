class HomeController < ApplicationController
  require "httparty"

    def index
      #@auth = "Bearer 12e692d8e7254efa8cf6276ea99736b0"
      @response = HTTParty.get("http://newsapi.org/v2/top-headlines?category=sports&q=golf&apiKey=12e692d8e7254efa8cf6276ea99736b0")
      # fetching data in json format 
      @report = JSON.parse(@response.body)
      # getting all articles in a string article 
      @article = @report["articles"]
      # empty list which will contain all trending news 
      #results = [] 
    end   

    def address
      @address = Address.new()
    end 

    def create 
      @address = Address.new()
      @address.addressable_id = current_user
      @user.number = params[:user][:number]
      @user.street = params[:user][:street]
      @user.suburb = params[:user][:city]
      @user.state = params[:user][:state]
      @user.country = params[:user][:country]
      @user.postcode = params[:user][:postcode]
    end 
end
