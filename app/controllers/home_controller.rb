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
      @address.addressable_id = current_user.id
      @address.number = params[:address][:number]
      @address.street = params[:address][:street]
      @address.suburb = params[:address][:city]
      @address.state = params[:address][:state]
      @address.country = params[:address][:country]
      @address.postcode = params[:address][:postcode]

      if @address.valid? && @address.save
        redirect_to home_path
      else
        redirect_to items_path    
      end 
    end 


end
