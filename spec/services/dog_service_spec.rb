require 'rails_helper'

describe 'Dog Service' do
  it 'can return dog images' do
    response = DogService.dog_images(1)

    expect(response).to be_an(Array)
    expect(response[0]).to be_a(Hash)
    expect(response[0]).to have_key(:url)
    expect(response[0]).to have_key(:breeds)
    
    if !response[0][:breeds].empty?
      expect(response[0][:breeds][0]).to have_key(:name)
      expect(response[0][:breeds][0]).to have_key(:life_span)
      expect(response[0][:breeds][0]).to have_key(:temperament)
    end
  end
end
