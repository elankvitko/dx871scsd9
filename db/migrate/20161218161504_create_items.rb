class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :store
      t.string :name
      t.string :model_number
      t.references :order

      t.timestamps
    end
  end
end
