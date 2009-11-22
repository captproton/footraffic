class AddFieldsToOffer < ActiveRecord::Migration
  def self.up
    add_column :offers, :business_id, :integer
    add_column :offers, :title, :string
    add_column :offers, :description, :text
  end

  def self.down
    remove_column :offers, :description
    remove_column :offers, :title
    remove_column :offers, :business_id
  end
end
