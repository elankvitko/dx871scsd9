class AddStatusToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :status, :string, default: 'Requested', null: false
  end
end
