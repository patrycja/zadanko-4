require 'spec_helper'

describe CategoriesController, "POST create" do 

  before(:each) do 
    @category = mock_model(Category, :save => nil)
	Category.stub!(:new).and_return(@category)
  end
	
	it "should build a new category" do
    Category.should_receive(:new).
	with({"name" => "Test"}).
	and_return(@category)
    post :create, :category => {:name => "Test"} 

  end
    
  it "should save the category" do
    @category.should_receive(:save)
    post :create
  end

end