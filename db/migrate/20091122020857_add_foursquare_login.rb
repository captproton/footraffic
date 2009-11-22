class AddFoursquareLogin < ActiveRecord::Migration
  def self.up
    add_column :users, :foursquare_login, :string
    add_column :users, :foursquare_password, :string
  end

  def self.down
  end
end
