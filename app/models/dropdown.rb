class Dropdown < ApplicationRecord
  belongs_to :user
  has_many :dropdown_values, dependent: :destroy

  validates  :name , presence: true, length: { maximum: 50 }
  validates  :options , presence: true
end
