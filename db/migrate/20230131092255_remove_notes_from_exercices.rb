class RemoveNotesFromExercices < ActiveRecord::Migration[7.0]
  def change
    remove_column :exercices, :notes, :text
  end
end
