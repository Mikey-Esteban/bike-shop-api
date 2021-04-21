class SneakerImageSerializer
  include JSONAPI::Serializer
  belongs_to :sneaker
  
  attributes :title, :url, :sneaker_id
end
