class AddPriorityToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :priority, :string, default: 'Low', null: false
  end
end
