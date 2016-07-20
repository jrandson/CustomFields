class Dropdown < ApplicationRecord
	before_save :validate_dropdown_options
	after_initialize :validate_dropdown_options

  belongs_to :user
  has_many :dropdown_values, dependent: :destroy

  validates  :name , presence: true, length: { maximum: 50 }
  validates  :options , presence: true

  def get_options
  	options = get_dropdown_options
   end

  private

  	def validate_dropdown_options
  	
  		
  		if not self.options.nil?
			options = self.options.split('*')
		else
			options = []
		end

		options_validated = []
		options.each do |option|
			if not option.empty? 
				options_validated << option
			end
		end	
		
		self.options = options_validated.join('*')	
  	end

  	def get_dropdown_options()
		if self.options.nil?
			options = []
		else
			options = self.options.split('*')
			options.delete_if{|item| item.empty?}			
		end

		self.options = options
	end


end
