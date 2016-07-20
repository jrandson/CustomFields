class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  before_action :require_login

  def index
    @contacts = current_user.contacts.all
  end

  def show
    @contact = Contact.find(params[:id])    
    
    '''@text_field_values = []
    @contact.text_fields.all.each do |text_field|
       @text_field_values << text_field.text_field_values
    end'''
    
    @text_field_values  = @contact.text_field_values.all
    @text_area_values   = @contact.text_area_values.all
    @dropdown_values    = @contact.dropdown_values.all    
  end

  def create
    
    @contact = Contact.new(contact_params(params[:contact]))
    @contact.user_id = current_user.id   

      Contact.transaction do
        respond_to do |format|
          if @contact.save
            
            if params.has_key?('text_field_values')
              params[:text_field_values].each do |param|
                @text_field_value = TextFieldValue.new(text_field_values_parms(param))
                @text_field_value.contact_id = @contact.id
                @text_field_value.save              
              end
            end

            if params.has_key?('text_area_values')
              params[:text_area_values].each do |param|
                @text_area_value = TextAreaValue.new(text_area_values_params(param))
                @text_area_value.contact_id = @contact.id  
                @text_area_value.save            
              end
            end

            if params.has_key?('dropdown_values')
              params[:dropdown_values].each do |param|
                @dropdown_value = DropdownValue.new(dropdowns_params(param))
                @dropdown_value.contact_id = @contact.id
                @dropdown_value.save
              end
            end

              format.html { redirect_to contact_path(@contact), notice: 'Contact was successfully created.' }
              format.json { render :show, status: :created, location: @contact }                              
            
            else   
              raise ActiveRecord::Rollback
              format.html { render :new }
              format.json { render json: @contact.errors, status: :unprocessable_entity }
          end
        end
      end         
  end

  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params(contact)
      contact.permit(:name, :email)
    end

    def text_field_values_parms(text_field_value)
      text_field_value.permit(:value, :text_field_id, :name)
    end

    def text_area_values_params(text_area_value)
      text_area_value.permit(:value,:text_area_id, :name)
    end

    def dropdowns_params(dropdown_value)
      dropdown_value.permit(:value, :content, :dropdown_id)
    end
end
