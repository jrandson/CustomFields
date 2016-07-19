class StaticPagesController < ApplicationController
  def home
  	@contact = Contact.new
  	@user = current_user
  	@text_fields = @user.text_fields.all
  	
  	@text_fields = []

  	@user.text_fields.all.each do |tf|  
  		@text_fields << {'text_field': tf ,'value': TextFieldValue.new}
  	end

  	#debugger
  	
  end

  def contact_fields
  	@user = current_user
  	@text_fields = @user.text_fields.order(:created_at)  	
  end

  private
  	
end
