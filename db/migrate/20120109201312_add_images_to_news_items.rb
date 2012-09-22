class AddImagesToNewsItems < ActiveRecord::Migration
  def self.up
    add_column ::NewsItem.table_name, :image_1, :text
    add_column ::NewsItem.table_name, :image_2, :text
  end

  def self.down
    remove_column ::NewsItem.table_name, :image_1
    remove_column ::NewsItem.table_name, :image_2
  end
end
