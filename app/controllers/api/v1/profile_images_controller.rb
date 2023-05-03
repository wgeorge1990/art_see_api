class Api::V1::ProfileImagesController < Api::V1::BaseController
    # before_action :set_profile_image, only: %i[ show update destroy]

#   def index
#     @profile_images = ProfileImage.all
#     render json: @profile_images
#   end

#   def show
#     render json: @profile_image
#   end

    # POST /api/v1/profile_images(.:format)
    def create
        @profile_image = ProfileImage.new(profile_image_params)

        # byebug
        # @profile_image.to_json(include: [:image])
        # try this now with the serializer: EventSerializer.new(@event).serializable_hash

        if @profile_image.save
            # render json: @profile_image, status: :created, location: @profile_image.image_url
            render json: ProfileImageSerializer.new(@profile_image).serializable_hash[:data][:attributes], status: :created
        else
            render json: @profile_image.errors, status: :unprocessable_entity
        end
    end

#   def update
#     if @profile_image.update(profile_image_params)
#       render json: @profile_image
#     else
#       render json: @profile_image.errors, status: :unprocessable_entity
#     end
#   end

#   def destroy
#     @profile_image.destroy
#   end

  private
    def set_profile_image
      @profile_image = ProfileImage.find(params[:id])
    end

    def profile_image_params
        params.require(:profile_image).permit(:title, :image)
      end
end
