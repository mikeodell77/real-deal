class FundingRequirementsController < ApplicationController
  before_action :set_funding_requirement, only: [:show, :edit, :update, :destroy]

  # GET /funding_requirements
  # GET /funding_requirements.json
  def index
    @funding_requirements = FundingRequirement.all
  end

  # GET /funding_requirements/1
  # GET /funding_requirements/1.json
  def show
  end

  # GET /funding_requirements/new
  def new
    @funding_requirement = FundingRequirement.new
  end

  # GET /funding_requirements/1/edit
  def edit
  end

  # POST /funding_requirements
  # POST /funding_requirements.json
  def create
    @funding_requirement = FundingRequirement.new(funding_requirement_params)

    respond_to do |format|
      if @funding_requirement.save
        format.html { redirect_to @funding_requirement, notice: 'Funding requirement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @funding_requirement }
      else
        format.html { render action: 'new' }
        format.json { render json: @funding_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funding_requirements/1
  # PATCH/PUT /funding_requirements/1.json
  def update
    respond_to do |format|
      if @funding_requirement.update(funding_requirement_params)
        format.html { redirect_to @funding_requirement, notice: 'Funding requirement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @funding_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funding_requirements/1
  # DELETE /funding_requirements/1.json
  def destroy
    @funding_requirement.destroy
    respond_to do |format|
      format.html { redirect_to funding_requirements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funding_requirement
      @funding_requirement = FundingRequirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def funding_requirement_params
      params.require(:funding_requirement).permit(:desired_amount, :percentage_to_give)
    end
end
