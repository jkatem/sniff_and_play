class AddStarToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :star, :integer
  end
end
