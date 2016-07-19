class TextFieldsController < ApplicationController
  before_action :set_text_field, only: [:show, :edit, :update, :destroy]

  # GET /text_fields
  # GET /text_fields.json
  def index
    @text_fields = TextField.all
  end

  # GET /text_fields/1
  # GET /text_fields/1.json
  def show
  end

  # GET /text_fields/new
  def new
    @text_field = TextField.new
  end

  # GET /text_fields/1/edit
  def edit
  end

  # POST /text_fields
  # POST /text_fields.json
  def create
    @text_field = TextField.new(text_field_params)
    @text_field.user_id = current_user.id
    respond_to do |format|
      if @text_field.save
        format.html { redirect_to @text_field, notice: 'Text field was successfully created.' }
        format.json { render :show, status: :created, location: @text_field }
      else
        format.html { render :new }
        format.json { render json: @text_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_fields/1
  # PATCH/PUT /text_fields/1.json
  def update
    respond_to do |format|
      if @text_field.update(text_field_params)
        format.html { redirect_to @text_field, notice: 'Text field was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_field }
      else
        format.html { render :edit }
        format.json { render json: @text_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_fields/1
  # DELETE /text_fields/1.json
  def destroy
    @text_field.destroy
    respond_to do |format|
      format.html { redirect_to contact_fields_path, notice: 'Text field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_field
      @text_field = TextField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_field_params
      params.require(:text_field).permit(:name,:user_id)
    end
end
