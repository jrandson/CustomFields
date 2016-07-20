class TextArea < ApplicationRecord
  belongs_to :user
  has_many :text_area_values, dependent: :destroy

  validates  :name , presence: true, length: { maximum: 200 }
end
