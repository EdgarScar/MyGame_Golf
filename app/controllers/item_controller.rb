class ItemController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @item = Item.all
  end 

  def new
    @item = Item.new
    #Variable for all categories to be selected in form
    @categories = Category.all.map{ |category| [category.name, category.id]}
    #Variable for all sub_categories to be selected in form 
    @sub_categories = SubCategory.all.map{ |sub_category| [sub_category.name, sub_category.id]}
    
    #Creating labels for enum of :conditon
    @conditions = Item.conditions.map { |item| item }
  end 

  def create 
    @item = Item.new()
    p @item
    #Stuck on passing the current user's id into the model when saving an item 
    @item.user = current_user
    #Would like the boolean of rent to determine whether to display duration
    @item.rent = params[:item][:rent]
    # @item.duration = params[:item][:duration]
    #Category needs to determine which sub categories are displayed
    @item.sub_category_id = params[:item][:sub_category_id]
    @item.description = params[:item][:description]
    @item.brand = params[:item][:brand]
    @item.model = params[:item][:model]
    @item.age = params[:item][:age]
    #Condition does not accept the integer for some reason
    @item.condition = Item.conditions[params[:item][:conditon]]
    @item.price = params[:item][:price]
    @item.picture.attach(params[:item][:picture])

    if @item.save
      redirect_to items_path
    else
      render :new
    end 
  end 

  def show 
    @item = Item.find(params[:id])
  end 

  def listings
    @item = Item.all
  end 

  def destroy
    description = Item.find(params[:id]).description
    Item.destroy(params[:id])
    redirect_to items_path
  end

 
end
