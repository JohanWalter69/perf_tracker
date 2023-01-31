class AddImageUrlToExercices < ActiveRecord::Migration[7.0]
  def change
    add_column :exercices, :image_url, :string
  end
end
