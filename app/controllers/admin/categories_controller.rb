class Admin::CategoriesController < ApplicationController
before_filter :authenticate_user!
def new
      @category = Category.new
 end
 def create
      @category = Category.new(params[:category])
      if @category.save
            redirect_to :action => 'index', :controller => 'products'
      else
            render :action => 'new'
      end
 end
end
