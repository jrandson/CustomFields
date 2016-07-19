class TextArea < ApplicationRecord
  belongs_to :user
  has_many :text_area_values, dependent: :destroy
end
