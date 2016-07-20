class DropdownValue < ApplicationRecord
  belongs_to :dropdown
  belongs_to :contact

  #validates  :value , presence: true
  #validates  :content , presence: true
end
