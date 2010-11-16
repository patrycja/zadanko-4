require 'spec_helper'

describe Product do
  fixtures :products

  before :each do
    @product = Product.new
  end
  
  it "should belongs to one category" do
    Product.reflect_on_association(:category).macro.should == :belongs_to
  end
  
  it "should not be valid if price is blank or not a number" do
    @product.should_not be_valid
	@product.should have(2).error_on(:price)
  end


end