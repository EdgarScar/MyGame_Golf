class ItemController < ApplicationController
  before_action :authenticate_user!, except: [:index]

#Saves all Items to instance variable unless search by Subcategory is entered
  def index
    @item = Item.search(params[:sub_categories])
    @sub_categories = SubCategory.all
  end 

#Creates form for new item creation in the marketplace 
  def new
    @item = Item.new
    #Variable for all categories to be selected in form
    @categories = Category.all.map{ |category| [category.name, category.id]}
    #Variable for all sub_categories to be selected in form 
    @sub_categories = SubCategory.all.map{ |sub_category| [sub_category.name, sub_category.id]}
    #Creating labels for enum of :conditon
    @conditions = Item.conditions.map { |item| item }
  end

#Saves new instance of Item in database and display in marketplace
  def create 
    @item = Item.new()
    @item.user = current_user
    @item.rent = params[:item][:rent]
    @item.sub_category_id = params[:item][:sub_category_id]
    @item.description = params[:item][:description]
    @item.brand = params[:item][:brand]
    @item.model = params[:item][:model]
    @item.age = params[:item][:age]
    @item.condition = Item.conditions[params[:item][:conditon]]
    @item.price = params[:item][:price]
    @item.sold = false
    @item.picture.attach(params[:item][:picture])

    if @item.valid? && @item.save
      redirect_to items_path
    else
      render :new
    end 
  end 

#Individual Item found via ID, saved to instance variable, and displayed 
  def show 
    @item = Item.find(params[:id])
  end 

#If current user owns the item, creates an option to remove it from the marketplace 
  def destroy
    description = Item.find(params[:id]).description
    Item.destroy(params[:id])
    redirect_to items_path
  end

#Allows params of sub_category to be accessable for purpose of search 
  private
  def item_params
    params.require(:item).permit(:sub_category_id, :search)
  end
 
end
