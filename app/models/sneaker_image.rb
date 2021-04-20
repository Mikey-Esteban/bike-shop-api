class SneakerImage < ApplicationRecord
  belongs_to :sneaker

  validates_presence_of :title
  validates_presence_of :url
end
