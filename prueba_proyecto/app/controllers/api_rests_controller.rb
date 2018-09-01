class ApiRestsController < ApplicationController
  before_action :set_api_rest, only: [:show, :edit, :update, :destroy]

  # GET /api_rests
  # GET /api_rests.json
  def index
    @api_rests = ApiRest.all
  end

  # GET /api_rests/1
  # GET /api_rests/1.json
  def show
  end

  # GET /api_rests/new
  def new
    @api_rest = ApiRest.new
  end

  # GET /api_rests/1/edit
  def edit
  end

  # POST /api_rests
  # POST /api_rests.json
  def create
    @api_rest = ApiRest.new(api_rest_params)

    respond_to do |format|
      if @api_rest.save
        format.html { redirect_to @api_rest, notice: 'Api rest was successfully created.' }
        format.json { render :show, status: :created, location: @api_rest }
      else
        format.html { render :new }
        format.json { render json: @api_rest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api_rests/1
  # PATCH/PUT /api_rests/1.json
  def update
    respond_to do |format|
      if @api_rest.update(api_rest_params)
        format.html { redirect_to @api_rest, notice: 'Api rest was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_rest }
      else
        format.html { render :edit }
        format.json { render json: @api_rest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api_rests/1
  # DELETE /api_rests/1.json
  def destroy
    @api_rest.destroy
    respond_to do |format|
      format.html { redirect_to api_rests_url, notice: 'Api rest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_rest
      @api_rest = ApiRest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_rest_params
      params.require(:api_rest).permit(:title, :body, :count)
    end
end
