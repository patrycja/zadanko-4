require 'spec_helper'

describe Category do

  before :each do
    @category = Category.new
  end
  
  it "should have many products" do
    Category.reflect_on_association(:products).macro.should == :has_many
  end
  
  it "should not be valid if name is blank" do
    @category.should_not be_valid
	@category.should have(1).error_on(:name)
  end


end