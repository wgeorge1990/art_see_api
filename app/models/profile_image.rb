class ProfileImage < ApplicationRecord
    has_one_attached :image, dependent: :destroy
    belongs_to :profile

    def image_url
        Rails.application.routes.url_helpers.url_for(image) if image.attached?
    end
end
