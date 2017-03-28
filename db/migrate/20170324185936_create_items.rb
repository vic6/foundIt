class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :location_id
      t.string :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
