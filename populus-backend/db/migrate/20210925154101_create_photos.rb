class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :location
      t.text :description
      t.string :tags
      t.string :filename
      t.references :user

      t.timestamps
    end
  end
end
