class TextFieldValue < ApplicationRecord
  belongs_to :text_field
  belongs_to :contact

  validates  :value , presence: true, length: { maximum: 50 }
end
