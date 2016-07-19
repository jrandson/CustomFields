class StaticPagesController < ApplicationController
  def home
  	@contact = Contact.new
  	@user = current_user
    	
  	@text_fields = []

  	@user.text_fields.all.each do |tf|  
  		@text_fields << {'text_field': tf ,'value': TextFieldValue.new}
  	end

    @text_areas = []
    @user.text_areas.all.each do |ta|
      @text_areas << {'text_area': ta, 'value': TextAreaValue.new}
    end  	
  	
  end

  def contact_fields
  	@user = current_user
  	@text_fields = @user.text_fields.all#order(:created_at)  
    @text_areas = @user.text_areas.all	
  end

  private
  	
end
