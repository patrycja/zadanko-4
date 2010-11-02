class DeviseCreateAdmins < ActiveRecord::Migration
  def self.up
    create_table(:admins) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable


      t.timestamps
    end
   Admin.create :email => 'im@admin.com', :password => 'adminpass', :password_confirmation => 'adminpass'
  end

  def self.down
    drop_table :admins
  end
end
