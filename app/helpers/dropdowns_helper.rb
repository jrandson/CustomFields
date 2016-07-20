module DropdownsHelper

	def get_dropdown_options(string_param)
		if string_param.nil?
			options = []
		else
			options = string_param.split('*')

			options.delete_if{|item| item.empty?}			
			
		end
	end

	def validate_dropdown_options(string_param)
		options = string_param.split('*')

		options_validated = []
		string_param.split('*').each do |option|
			if not option.empty? 
				options_validated << option
			end
		end	
		
		options_validated.join('*')
	end	

end
