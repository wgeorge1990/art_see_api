class Profile < ApplicationRecord
    belongs_to :user
    has_one :profile_image, dependent: :destroy
end
