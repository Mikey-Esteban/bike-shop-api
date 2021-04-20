require 'rails_helper'

RSpec.describe Sneaker, type: :model do

  let (:sneaker) { create_sneaker }
  let (:built_sneaker) { build_sneaker }

  context 'when creating' do

    it 'validates name' do
      sneaker.name = nil
      expect(sneaker).to_not be_valid
    end

    it 'validates price' do
      sneaker.price = nil
      expect(sneaker).to_not be_valid
    end

    it 'validates uniqueness of name' do
      sneaker = create_sneaker
      should validate_uniqueness_of(:name)
    end

    it 'validates uniqueness of slug' do
      sneaker = create_sneaker
      should validate_uniqueness_of(:slug)
    end
  end

end
