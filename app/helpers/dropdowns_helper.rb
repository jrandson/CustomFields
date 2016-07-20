module DropdownsHelper

	def get_dropdown_options(string_param)
		if string_param.nil?
			options = []
		end

		options = string_param.split('*')
	end
end
