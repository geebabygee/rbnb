class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.text :description
      t.string :address
      t.integer :participants
      t.float :longitude
      t.float :latitude
      t.string :title
      t.datetime :date
      t.integer :price

      t.timestamps
    end
  end
end
