class CreateBathrooms < ActiveRecord::Migration
  def change
    create_table :bathrooms do |t|
      t.string :location, null: false
      t.string :address, null: false
      t.text :description
      t.string :image
      t.references :neighborhood, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
