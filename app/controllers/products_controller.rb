class ProductsController < ApplicationController
before_filter :authenticate_user!, :except => [:index]  

def index
  @products = Product.find(:all)
  end
 def show
  @product = Product.find(params[:id])
end
 def new
      @product = Product.new
      @categories = Category.find(:all)
end
 def create
      @product = Product.new(params[:product])
      if @product.save
            redirect_to :action => 'index', :notice => 'produkt dodany'
      else
            @categories = Category.find(:all)
            render :action => 'new'
      end
 end
 def edit
      @product = Product.find(params[:id])
      @categories = Category.find(:all)
 end
 def update
      @product = Product.find(params[:id])
      if @product.update_attributes(params[:product])
         redirect_to :action => 'show', :id => @product
      else
         @categories = Category.find(:all)
         render :action => 'edit'
      end
 end
 def destroy
      @product = Product.find(params[:id])
	  @product.destroy
      redirect_to :action => 'index'
 end
end
