class PcUsagesController < ApplicationController
  before_action :set_pc_usage, only: [:show, :edit, :update, :destroy]

  # GET /pc_usages
  # GET /pc_usages.json
  def index
    @pc_usages = PcUsage.all
  end

  # GET /pc_usages/1
  # GET /pc_usages/1.json
  def show
  end

  # GET /pc_usages/new
  def new
    @pc_usage = PcUsage.new
  end

  # GET /pc_usages/1/edit
  def edit
  end

  # POST /pc_usages
  # POST /pc_usages.json
  def create
    @pc_usage = PcUsage.new(pc_usage_params)

    respond_to do |format|
      if @pc_usage.save
        format.html { redirect_to @pc_usage, notice: 'Pc usage was successfully created.' }
        format.json { render :show, status: :created, location: @pc_usage }
      else
        format.html { render :new }
        format.json { render json: @pc_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pc_usages/1
  # PATCH/PUT /pc_usages/1.json
  def update
    respond_to do |format|
      if @pc_usage.update(pc_usage_params)
        format.html { redirect_to @pc_usage, notice: 'Pc usage was successfully updated.' }
        format.json { render :show, status: :ok, location: @pc_usage }
      else
        format.html { render :edit }
        format.json { render json: @pc_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_usages/1
  # DELETE /pc_usages/1.json
  def destroy
    @pc_usage.destroy
    respond_to do |format|
      format.html { redirect_to pc_usages_url, notice: 'Pc usage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc_usage
      @pc_usage = PcUsage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pc_usage_params
      params.require(:pc_usage).permit(:student_id, :pc_id, :start_at, :end_at)
    end
end
