class Api::V1::ProfilesController < Api::V1::BaseController
    def index
        respond_with Profile.all
      end
    
      def create
        respond_with :api, :v1, Profile.create(profile_params)
      end
    
      def destroy
        respond_with Profile.destroy(params[:id])
      end
    
      def update
        profile = Profile.find(params["id"])
        profile.update_attributes(profile_params)
        respond_with user, json: profile
      end
    
      private
    
      def profile_params
        params.require(:profile).permit(:id)
      end
end