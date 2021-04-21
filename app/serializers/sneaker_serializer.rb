class SneakerSerializer
  include JSONAPI::Serializer
  # has_many :sneaker_images

  attributes :id, :name, :price, :slug#, :sneaker_images
end
