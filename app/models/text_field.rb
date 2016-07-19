class TextField < ApplicationRecord
  belongs_to :user
  has_many :text_field_values,  dependent: :destroy
end
