class TextField < ApplicationRecord
  belongs_to :user
  has_many :text_field_values,  dependent: :destroy

  validates :name , presence: true, length: { maximum: 50 }	
  
end
