require 'faker'
require 'factory_bot_rails'

module SneakerHelpers

  def create_sneaker
    FactoryBot.create(:sneaker,
      name: 'Air Jordan 1s',
      price: 195.95,
      slug: 'air-jordan-1s'
    )
  end

  def build_sneaker
    FactoryBot.build(:sneaker,
      name: 'Air Jordan 1s',
      price: 195.95,
      slug: 'air-jordan-1s'
    )
  end

  def create_sneakers
    FactoryBot.create(:sneaker,
      name: 'Air Jordan 1s',
      price: 195.95,
      slug: 'air-jordan-1s'
    )
    FactoryBot.create(:sneaker,
      name: 'Converse Black',
      price: 60.00,
      slug: 'converse-black'
    )
  end

end
