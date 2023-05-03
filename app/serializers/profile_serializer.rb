class ProfileSerializer
  include JSONAPI::Serializer
  attributes :id, :headline, :image, :image_url
end
