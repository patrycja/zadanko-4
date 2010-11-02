class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
	Category.create :name => "Bluzki"
	Category.create :name => "T-shirty"
	Category.create :name => "Koszule"
	Category.create :name => "Sukienki"
	Category.create :name => "Spodnice"
	Category.create :name => "Spodnie"
	Category.create :name => "Marynarki i zakiety"
	Category.create :name => "Okrycia wierzchnie"
	Category.create :name => "Buty"
  end

  def self.down
    drop_table :categories
  end
end
