class Product < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :price
  validates_numericality_of :price, :message=>"Cena musi byc liczba"
  
  before_save :check_name
  
  def check_name
	if self.name.blank? then
	 self.name = "No-name"
	end
  end
end
