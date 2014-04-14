class FundingsController < ApplicationController
  before_action :set_funding, only: [:show, :edit, :update, :destroy]

  # GET /fundings
  # GET /fundings.json
  def index
    @fundings = Funding.all
  end

  # GET /fundings/1
  # GET /fundings/1.json
  def show
  end

  # GET /fundings/new
  def new
    @funding = Funding.new
  end

  # GET /fundings/1/edit
  def edit
  end

  # POST /fundings
  # POST /fundings.json
  def create
    @funding = Funding.new(funding_params)

    respond_to do |format|
      if @funding.save
        format.html { redirect_to @funding, notice: 'Funding was successfully created.' }
        format.json { render action: 'show', status: :created, location: @funding }
      else
        format.html { render action: 'new' }
        format.json { render json: @funding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fundings/1
  # PATCH/PUT /fundings/1.json
  def update
    respond_to do |format|
      if @funding.update(funding_params)
        format.html { redirect_to @funding, notice: 'Funding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @funding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundings/1
  # DELETE /fundings/1.json
  def destroy
    @funding.destroy
    respond_to do |format|
      format.html { redirect_to fundings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funding
      @funding = Funding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def funding_params
      params.require(:funding).permit(:amount, :percentage, :approved)
    end
end