class CreateTextFieldValues < ActiveRecord::Migration[5.0]
  def change
    create_table :text_field_values do |t|
      t.string :name
      t.string :value
      t.references :text_field, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
