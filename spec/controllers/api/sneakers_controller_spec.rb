require 'rails_helper'

describe Api::V1::SneakersController, type: :request do

  let ( :sneaker ) { build_sneaker }
  let ( :existing_sneaker ) { create_sneaker }
  let ( :sneakers ) { create_sneakers }

  describe 'GET #index' do
    before do
      @sneakers = sneakers
      get '/api/v1/sneakers'
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end

    it 'returns all sneakers' do
      expect(json['data'].count).to eq 2
    end

    it 'returns sneaker name' do
      first_sneaker = json['data'][0]
      expect(first_sneaker).to have_attribute(:name).with_value(sneaker.name)
    end
  end

  describe 'GET #show' do
    before do
      @sneaker = existing_sneaker
      get '/api/v1/sneakers/air-jordan-1s'
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end

    it 'returns sneaker name' do
      expect(json['data']).to have_attribute(:name).with_value(@sneaker.name)
    end

    it 'returns sneaker price' do
      expect(json['data']).to have_attribute(:price).with_value(@sneaker.price)
    end

    it 'returns sneaker slug' do
      expect(json['data']).to have_attribute(:slug).with_value(@sneaker.slug)
    end
  end


end
