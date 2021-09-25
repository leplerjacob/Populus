class AddFilenameToPhotos < ActiveRecord::Migration[6.1]
  def change
    add_column :photos, :filename, :string
  end
end
