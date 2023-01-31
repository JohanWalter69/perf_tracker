class CreateLoads < ActiveRecord::Migration[7.0]
  def change
    create_table :loads do |t|
      t.float :max_load
      t.references :exercice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
