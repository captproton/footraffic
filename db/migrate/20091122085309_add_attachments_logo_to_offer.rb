class AddAttachmentsLogoToOffer < ActiveRecord::Migration
  def self.up
    add_column :offers, :logo_file_name, :string
    add_column :offers, :logo_content_type, :string
    add_column :offers, :logo_file_size, :integer
  end

  def self.down
    remove_column :offers, :logo_file_name
    remove_column :offers, :logo_content_type
    remove_column :offers, :logo_file_size
  end
end
