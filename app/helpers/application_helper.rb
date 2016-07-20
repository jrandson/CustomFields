module ApplicationHelper
	# Returns the full title on a per-page basis.
	def full_title(page_title = '')
		base_title = "Custom fields App"
		if page_title.empty?
		  base_title
		else
		  page_title + " | " + base_title
		end
	end

	def require_login
      unless logged_in?
        flash['error'] = "You must be logged to access this section"
        redirect_to login_url
      end
    end
end
