class JobsController < ApplicationController
  before_action :set_followup, only: [:show, :edit, :update, :destroy]
  before_action :is_signed_in?




  # GET /jobs/new
  def new
    @followup = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @followup = Followup.new(followup_params)

    respond_to do |format|
      if @followup.save
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @followup.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @followup.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @followup = Followup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def followup_params
      params.require(:followup).permit(:contact, :number, :mode)
    end

end
