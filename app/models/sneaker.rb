class Sneaker < ApplicationRecord
  has_many :sneaker_images

  after_create :update_slug
  before_update :assign_slug

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :slug, uniqueness: true

  def create_slug
    name.downcase.gsub(" ", "-")
  end

  def update_slug
    update slug: assign_slug
  end

  private

  def assign_slug
    self.slug = create_slug
  end
end
