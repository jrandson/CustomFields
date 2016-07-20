class Contact < ApplicationRecord
  belongs_to :user
  has_many :text_field_values , dependent: :destroy
  has_many :text_area_values , dependent: :destroy
  has_many :dropdown_values , dependent: :destroy

  validates :user_id, presence: true
  validates :email, presence: true
end
