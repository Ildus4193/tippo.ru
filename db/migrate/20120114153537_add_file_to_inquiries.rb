class AddFileToInquiries < ActiveRecord::Migration
  def self.up
    add_column ::Inquiry.table_name, :file_id, :integer
  end

  def self.down
    remove_column ::Inquiry.table_name, :file_id
  end
end
