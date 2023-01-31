class RemoveMaxLoadFromExercices < ActiveRecord::Migration[7.0]
  def change
    remove_column :exercices, :max_load, :float
  end
end
