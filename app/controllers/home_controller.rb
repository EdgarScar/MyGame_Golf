class HomeController < ApplicationController
#Gem required for API
  require "httparty"

#API data retrieved, converted to JSON format and saved to instance variable for display
    def index
      @response = HTTParty.get("http://newsapi.org/v2/top-headlines?category=sports&q=golf&apiKey=12e692d8e7254efa8cf6276ea99736b0")
      @report = JSON.parse(@response.body)
      @article = @report["articles"]
    end   
#Create new address form for User or Course **Requires additional work to function as intended
    def address
      @address = Address.new()
      @address.addressable_type = params.keys.first.capitalize
      @address.addressable_id = params[params.keys.first]
    end 

#Saves a new address for User or Course
    def create 
      @address = Address.new()
      @address.addressable_type = params[:address][:addressable_type]
      @address.addressable_id = params[:address][:addressable_id]
      @address.number = params[:address][:number]
      @address.street = params[:address][:street]
      @address.suburb = params[:address][:city]
      @address.state = params[:address][:state]
      @address.country = params[:address][:country]
      @address.postcode = params[:address][:postcode]
      if @address.save
        redirect_to home_path
      else
        flash[:alert] = "Opps, something went wrong when creating your review"
        redirect_to items_path    
      end 
    end 
    
end
