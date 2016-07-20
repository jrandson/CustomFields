class User < ApplicationRecord
	has_many :text_fields,  dependent: :destroy
	has_many :text_areas, dependent: :destroy
	has_many :contacts,  dependent: :destroy
	has_many :dropdowns, dependent: :destroy
	

	before_save {email.downcase!}
	
	validates  :name , presence: true, length: { maximum: 50 }	
	validates  :password, presence: true, length: { minimum: 6}
    validates  :email, presence: true, length: { maximum: 255 }

end
