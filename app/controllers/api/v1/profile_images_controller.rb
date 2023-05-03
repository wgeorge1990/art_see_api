class API::V1::ProfileImagesController < ApplicationController
    before_action :set_profile_image, only: %i[ show update destroy]

  def index
    @profile_images = ProfileImage.all
    render json: @profile_images
  end

  def show
    render json: @profile_image
  end

  def create
    @profile_image = ProfileImage.new(profile_image_params)

    if @profile_image.save
      render json: @profile_image
    else
      render json: @profile_image.errors, status: :unprocessable_entity
    end
  end

  def update
    if @profile_image.update(profile_image_params)
      render json: @profile_image
    else
      render json: @profile_image.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @profile_image.destroy
  end

  private
    def set_profile_image
      @profile_image = ProfileImage.find(params[:id])
    end

    def profile_image_params
        params.require(:profile_image).permit(:title, :image)
      end
end
