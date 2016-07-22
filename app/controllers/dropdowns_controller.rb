class DropdownsController < ApplicationController
  before_action :set_dropdown, only: [:show, :edit, :update, :destroy]
  before_action :require_login 
  before_action :call_validate_dropdown_options, only: [:update]

  def index
    @dropdowns = current_user.dropdowns.all
  end

  def show
  end

  def new
    @dropdown = Dropdown.new
  end

  def edit
  end

  def create
    @user = current_user
    @dropdown = Dropdown.new(dropdown_params)
    @dropdown.user_id = @user.id
    @dropdown.options = validate_dropdown_options(dropdown_params[:options])
    
    respond_to do |format|      
      if @dropdown.save
        format.html { redirect_to contact_fields_path, notice: 'Dropdown was successfully created.' }
        format.json { render :show, status: :created, location: @dropdown }
      else
        format.html { render :new }
        format.json { render json: @dropdown.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|           
    
      if @dropdown.update(dropdown_params)
        
        format.html { redirect_to contact_fields_path, notice: 'Dropdown was successfully updated.' }
        format.json { render :show, status: :ok, location: @dropdown }
      else
        format.html { render :edit }
        format.json { render json: @dropdown.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dropdown.destroy
    respond_to do |format|
      format.html { redirect_to dropdowns_url, notice: 'Dropdown was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_dropdown
      @dropdown = Dropdown.find(params[:id])
    end

    def dropdown_params
      params.require(:dropdown).permit(:name, :options)      
    end

    def call_validate_dropdown_options
      params[:dropdown][:options] = validate_dropdown_options(params[:dropdown][:options])
    end
end
