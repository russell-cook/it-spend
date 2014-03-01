class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  rescue_from ActiveRecord::RecordNotFound do
    flash[:notice] = 'The Survey you are trying to view does not exist.'
    redirect_to :controller => "surveys", :action => "index"
  end

  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = current_user.surveys.all
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
    authorize_survey
  end

  # GET /surveys/new
  def new
    @survey = current_user.surveys.new
  end

  # GET /surveys/1/edit
  def edit
    authorize_survey
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = current_user.surveys.build(survey_params)

    respond_to do |format|
      if @survey.save
        format.html { redirect_to @survey, notice: 'Survey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @survey }
      else
        format.html { render action: 'new' }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    def authorize_survey
      s = Survey.find(params[:id])
      if s.user_id != current_user.id
        flash[:notice] = 'You are not authorized to view the requested Survey.'
        redirect_to surveys_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:completing_name, :completing_title, :completing_email, :contact_name, :contact_title, :contact_email, :num_servers, :type_servers, :num_locations, :colocated, :dedicated, :state_owned, :state_owned_sqft, :leased, :leased_sqft, :access_control, :ups, :envir_ctrl, :generator, :fire, :data_server, :data_san, :total_capacity, :used_capacity, :backup, :local_backup, :central_backup, :freq_backup, :freq_backup_other, :who_manages, :who_manages_other, :hard_maint, :hard_maint_amt, :soft_maint, :soft_maint_amt, :contractor_support, :contractor_support_amt)
    end
end
