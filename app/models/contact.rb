class Contact < ApplicationRecord
  belongs_to :user
  has_many :text_field_values , dependent: :destroy


  #validates :user_id, presence: true
  #validates :content, presence: true, length: { maximum: 140 }
end
