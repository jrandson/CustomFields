class RemoveUserIdAdd < ActiveRecord::Migration[5.0]
  def change
  	add_column :text_area_values, :text_area_id, :integer
  	remove_column :text_area_values, :user_id, :integer
  end
end
