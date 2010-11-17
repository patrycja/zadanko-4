require 'spec_helper'

describe ProductsController, "POST create" do 
  fixtures :products
  fixtures :users
  include Devise::TestHelpers
  
  def mock_user(stubs={})
      @mock_user ||= mock_model(User, stubs).as_null_object
  end

  before(:each) do 
    @product = mock_model(Product, :save => nil)
	Product.stub!(:new).and_return(@product)
	
	request.env['warden'] = mock(Warden, :authenticate => mock_user,
                                           :authenticate! => mock_user,
                                           :authenticate? => mock_user)
  end

  it "should build a new product" do
    Product.should_receive(:new).
	with({"name" => "MyString", "price" => "1.5", "category_id" => 1, "description" => "MyText"}).
	and_return(@product)
    post :create, :product => {:name => "MyString", :price => "1.5", :category_id => 1, :description => "MyText"} 

  end
    
  it "should save the product" do
    @product.should_receive(:save)
    post :create
  end
  
  context "when the product saves successfully" do
    before(:each) do
       @product.stub!(:save).and_return true
    end
	
  
    it "should redirect to the products index" do
       post :create
       response.should redirect_to(products_path)
    end
  end
  
  context "when the product fails to save" do
    before(:each) do
       @product.stub!(:save).and_return false
    end
	
    it "should render the new template" do
	   post :create
       response.should render_template("new")
	end
  end
end
