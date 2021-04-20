require 'faker'
require 'factory_bot_rails'

module SneakerHelpers

  def create_sneaker
    FactoryBot.create(:sneaker,
      name: 'Air Jodan 1s',
      price: 195.95,
      slug: 'air-jordan-1s'
    )
  end

  def build_sneaker
    FactoryBot.build(:sneaker,
      name: 'Air Jodan 1s',
      price: 195.95,
      slug: 'air-jordan-1s'
    )
  end

end
