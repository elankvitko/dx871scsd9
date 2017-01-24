class AddShippingTimeToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :shipping_time, :string
  end
end
