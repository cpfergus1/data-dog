require 'rails_helper'

describe 'Dog Service' do
  it 'can return dog images' do
    response = DogService.dog_images(1)

    expect(response).to be_an(Array)
    expect(response[0]).to be_a(Hash)

    expect(response[0]).to have_key(:url)
    expect(response[0][:url]).to be_a(String)

    expect(response[0]).to have_key(:breeds)
    expect(response[0][:breeds]).to be_an(Array)

    if !response[0][:breeds].empty?
      expect(response[0][:breeds][0]).to have_key(:name)
      expect(response[0][:breeds][0][:name]).to be_a(String)

      expect(response[0][:breeds][0]).to have_key(:life_span)
      expect(response[0][:breeds][0][:life_span]).to be_a(String)

      expect(response[0][:breeds][0]).to have_key(:temperament)
      expect(response[0][:breeds][0][:temperament]).to be_a(String)
    end
  end
end
