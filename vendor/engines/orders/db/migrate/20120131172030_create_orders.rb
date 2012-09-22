class CreateOrders < ActiveRecord::Migration
  def self.up
    unless ::Order.table_exists?
      create_table ::Order.table_name, :force => true do |t|
        t.string   "name"
        t.string   "lastname"
        t.string   "email"
        t.string   "address"
        t.string   "country"
        t.string   "zip_code"
        t.string   "region"
        t.string   "city"
        t.string   "street"
        t.string   "house"
        t.string   "housing"
        t.string   "apartment"
        t.string   "phone"

        t.datetime "created_at"
        t.datetime "updated_at"
        t.boolean  "spam",       :default => false
      end

      add_index ::Order.table_name, :id
    end

    # todo: remove at 1.0
    create_table ::OrderSetting.table_name, :force => true do |t|
      t.string   "name"
      t.text     "value"
      t.boolean  "destroyable"
      t.datetime "created_at"
      t.datetime "updated_at"
    end unless ::OrderSetting.table_exists?

    ::Page.reset_column_information if defined?(::Page)

    load(Rails.root.join('db', 'seeds', 'pages_for_orders.rb').to_s)
  end

  def self.down
     drop_table ::Order.table_name
     # todo: remove at 1.0
     drop_table ::OrderSetting.table_name

     ::Page.delete_all({
       :link_url => ("/contact" || "/contact/thank_you")
     }) if defined?(::Page)
  end
end
