class DropdownsController < ApplicationController
  before_action :set_dropdown, only: [:show, :edit, :update, :destroy]

  # GET /dropdowns
  # GET /dropdowns.json
  def index
    @dropdowns = Dropdown.all
  end

  # GET /dropdowns/1
  # GET /dropdowns/1.json
  def show
  end

  # GET /dropdowns/new
  def new
    @dropdown = Dropdown.new
  end

  # GET /dropdowns/1/edit
  def edit
  end

  # POST /dropdowns
  # POST /dropdowns.json
  def create
    @user = current_user
    @dropdown = Dropdown.new(dropdown_params)
    @dropdown.user_id = @user.id
    respond_to do |format|
      
      if @dropdown.save
        format.html { redirect_to @dropdown, notice: 'Dropdown was successfully created.' }
        format.json { render :show, status: :created, location: @dropdown }
      else
        format.html { render :new }
        format.json { render json: @dropdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dropdowns/1
  # PATCH/PUT /dropdowns/1.json
  def update
    respond_to do |format|
      if @dropdown.update(dropdown_params)
        format.html { redirect_to @dropdown, notice: 'Dropdown was successfully updated.' }
        format.json { render :show, status: :ok, location: @dropdown }
      else
        format.html { render :edit }
        format.json { render json: @dropdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dropdowns/1
  # DELETE /dropdowns/1.json
  def destroy
    @dropdown.destroy
    respond_to do |format|
      format.html { redirect_to dropdowns_url, notice: 'Dropdown was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dropdown
      @dropdown = Dropdown.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dropdown_params
      params.require(:dropdown).permit(:name, :options)
    end
end
