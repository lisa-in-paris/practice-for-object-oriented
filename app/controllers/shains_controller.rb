class ShainsController < ApplicationController
  before_action :set_shain, only: %i[ show edit update destroy, :standup]

  # GET /shains or /shains.json
  def index
    @shains = Shain.all
  end

  # GET /shains/1 or /shains/1.json
  def show
  end

  # GET /shains/new
  def new
    @shain = Shain.new
  end

  # GET /shains/1/edit
  def edit
  end

  # POST /shains or /shains.json
  def create
    @shain = Shain.new(shain_params)

    respond_to do |format|
      if @shain.save
        format.html { redirect_to @shain, notice: "Shain was successfully created." }
        format.json { render :show, status: :created, location: @shain }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shains/1 or /shains/1.json
  def update
    respond_to do |format|
      if @shain.update(shain_params)
        format.html { redirect_to @shain, notice: "Shain was successfully updated." }
        format.json { render :show, status: :ok, location: @shain }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shains/1 or /shains/1.json
  def destroy
    @shain.destroy
    respond_to do |format|
      format.html { redirect_to shains_url, notice: "Shain was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shain
      @shain = Shain.find(params[:id])
    end

    def standup
    end

    # Only allow a list of trusted parameters through.
    def shain_params
      params.require(:shain).permit(:name, :yakushoku, :kihonkyu)
    end
end
