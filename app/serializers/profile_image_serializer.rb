class ProfileImageSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :image_url
end
