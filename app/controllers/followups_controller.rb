class FollowupsController < ApplicationController
  before_action :set_followup, only: [:show, :edit, :update, :destroy]
  before_action :set_job, only: [:new, :create, :destroy, :edit, :update]
  before_action :is_signed_in?




  # GET /jobs/new
  def new
    @followup = Followup.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @followup = Followup.new(followup_params)
    @followup.job = @job

    respond_to do |format|
      if @followup.save
        format.html { redirect_to @job, notice: 'Follow Up was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @followup.errors, status: :unprocessable_entity }
    end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @followup.update(followup_params)
        format.html { redirect_to @job, notice: 'Follow Up was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @followup.destroy
    respond_to do |format|
      format.html { redirect_to @job, notice: 'Follow Up was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_followup
      @followup = Followup.find(params[:id])
    end

    def set_job
      @job = Job.find(params[:job_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def followup_params
      params.require(:followup).permit(:contact, :number, :mode, :job_id)
    end

end
