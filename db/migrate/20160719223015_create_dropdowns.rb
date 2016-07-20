class CreateDropdowns < ActiveRecord::Migration[5.0]
  def change
    create_table :dropdowns do |t|
      t.string :name
      t.text :options
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
