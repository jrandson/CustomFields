class CreateDropdownValues < ActiveRecord::Migration[5.0]
  def change
    create_table :dropdown_values do |t|
      t.string :name
      t.string :content
      t.string :value
      t.references :dropdown, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
