class User < ApplicationRecord
	has_many :text_fields,  dependent: :destroy
	has_many :text_areas, dependent: :destroy
	has_many :contacts,  dependent: :destroy
	

	before_save {email.downcase!}
	validates  :name , presence: true, length: { maximum: 50 }	
	validates  :password, presence: true, length: { minimum: 6}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

end
