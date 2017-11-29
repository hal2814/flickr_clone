class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :view_count
      t.text :description
      t.string :location
      t.date :date
      t.string :camera_type

      t.timestamps
    end
  end
end
