class ApplicationController < ActionController::API
    protect_from_fogery with: :null_session
end
