require 'rails_helper'

RSpec.describe SneakerImage, type: :model do

  let (:sneaker) { create_sneaker }
  subject { SneakerImage.new(
    title: 'full jordan landscape',
    url: 'fake-url.com',
    sneaker_id: sneaker.id
  )}

  context 'when creating' do

    it 'validates title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'validates url' do
      subject.url = nil
      expect(subject).to_not be_valid
    end

    it 'validates sneaker_id' do
      subject.sneaker_id = nil
      expect(subject).to_not be_valid
    end
  end

end
