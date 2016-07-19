class TextAreasController < ApplicationController
  before_action :set_text_area, only: [:show, :edit, :update, :destroy]

  # GET /text_areas
  # GET /text_areas.json
  def index
    @text_areas = TextArea.all
  end

  # GET /text_areas/1
  # GET /text_areas/1.json
  def show
  end

  # GET /text_areas/new
  def new
    @text_area = TextArea.new
  end

  # GET /text_areas/1/edit
  def edit
  end

  # POST /text_areas
  # POST /text_areas.json
  def create
    @text_area = TextArea.new(text_area_params)
    @text_area.user_id = current_user.id

    respond_to do |format|
      if @text_area.save
        format.html { redirect_to @text_area, notice: 'Text area was successfully created.' }
        format.json { render :show, status: :created, location: @text_area }
      else
        format.html { render :new }
        format.json { render json: @text_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_areas/1
  # PATCH/PUT /text_areas/1.json
  def update
    respond_to do |format|
      if @text_area.update(text_area_params)
        format.html { redirect_to @text_area, notice: 'Text area was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_area }
      else
        format.html { render :edit }
        format.json { render json: @text_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_areas/1
  # DELETE /text_areas/1.json
  def destroy
    @text_area.destroy
    respond_to do |format|
      format.html { redirect_to text_areas_url, notice: 'Text area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_area
      @text_area = TextArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_area_params
      params.require(:text_area).permit(:name)
    end
end
