class GemtipsController < ApplicationController
  before_action :set_gemtip, only: %i[ show edit update destroy ]

  # GET /gemtips or /gemtips.json
  def index
    @gemtips = Gemtip.all
  end

  # GET /gemtips/1 or /gemtips/1.json
  def show
  end

  # GET /gemtips/new
  def new
    @gemtip = Gemtip.new
  end

  # GET /gemtips/1/edit
  def edit
  end

  # POST /gemtips or /gemtips.json
  def create
    @gemtip = Gemtip.new(gemtip_params)

    respond_to do |format|
      if @gemtip.save
        format.html { redirect_to @gemtip, notice: "Gemtip was successfully created." }
        format.json { render :show, status: :created, location: @gemtip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gemtip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gemtips/1 or /gemtips/1.json
  def update
    respond_to do |format|
      if @gemtip.update(gemtip_params)
        format.html { redirect_to @gemtip, notice: "Gemtip was successfully updated." }
        format.json { render :show, status: :ok, location: @gemtip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gemtip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gemtips/1 or /gemtips/1.json
  def destroy
    @gemtip.destroy
    respond_to do |format|
      format.html { redirect_to gemtips_url, notice: "Gemtip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def checktip
      @num = params[:search_string]
      @result = Saytip.runcheck(@num.to_i)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gemtip
      @gemtip = Gemtip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gemtip_params
      params.require(:gemtip).permit(:tipnumb)
    end
    
    
    
    
end
