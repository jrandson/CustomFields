class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  include SessionsHelper

  include DropdownsHelper

  def index
  	render html: "Hello, world!"
  end
  
  def about
  end

  def help
  end

  def contact
  end

end
