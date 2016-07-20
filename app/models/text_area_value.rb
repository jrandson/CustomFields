class TextAreaValue < ApplicationRecord
  belongs_to :contact
  belongs_to :text_area

  #validates  :value , presence: true, length: { maximum: 300 }
end
