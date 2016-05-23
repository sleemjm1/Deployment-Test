class AgeTrackersController < ApplicationController
  before_action :set_age_tracker, only: [:show, :edit, :update, :destroy]

  # GET /age_trackers
  # GET /age_trackers.json
  def index
    @age_trackers = AgeTracker.all
  end

  # GET /age_trackers/1
  # GET /age_trackers/1.json
  def show
  end

  # GET /age_trackers/new
  def new
    @age_tracker = AgeTracker.new
  end

  # GET /age_trackers/1/edit
  def edit
  end

  # POST /age_trackers
  # POST /age_trackers.json
  def create
    @age_tracker = AgeTracker.new(age_tracker_params)

    respond_to do |format|
      if @age_tracker.save
        format.html { redirect_to @age_tracker, notice: 'Age tracker was successfully created.' }
        format.json { render :show, status: :created, location: @age_tracker }
      else
        format.html { render :new }
        format.json { render json: @age_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /age_trackers/1
  # PATCH/PUT /age_trackers/1.json
  def update
    respond_to do |format|
      if @age_tracker.update(age_tracker_params)
        format.html { redirect_to @age_tracker, notice: 'Age tracker was successfully updated.' }
        format.json { render :show, status: :ok, location: @age_tracker }
      else
        format.html { render :edit }
        format.json { render json: @age_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /age_trackers/1
  # DELETE /age_trackers/1.json
  def destroy
    @age_tracker.destroy
    respond_to do |format|
      format.html { redirect_to age_trackers_url, notice: 'Age tracker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_age_tracker
      @age_tracker = AgeTracker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def age_tracker_params
      params.require(:age_tracker).permit(:name, :age)
    end
end
