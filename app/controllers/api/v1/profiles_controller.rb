class Api::V1::ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show update destroy latest]

  def latest
    render json: ProfileSerializer.new(@profile).serializable_hash[data][attributes]
  end


  # GET /api/v1/profiles
  def index
    @profiles = Profile.all
    render json: @profiles.to_json(include: [:image])
  end

  # GET /api/v1/profiles/1
  def show
    render json: @profile.to_json(include: [:image])
  end

  # POST /api/v1/profiles
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      render json: @profile.to_json(include: [:image]), status: :created
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/profiles/1
  def update
    if @profile.update(profile_params)
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/profiles/1
  def destroy
    @profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(
        :user_id, 
        :first_name, 
        :middle_name, 
        :last_name, 
        :bio, 
        :profile_image, 
        :logged_in_at, 
        :logged_out_at, 
        :active, 
        :birthday, 
        :age, 
        :headline, 
        :followers, 
        :following,
        :image,
        :image_url
      )
    end
end
