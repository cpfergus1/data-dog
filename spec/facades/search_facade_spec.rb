require 'rails_helper'

describe 'Search Facade' do
  it 'returns dogs' do
    dogs = SearchFacade.dog_images(1)

    expect(dogs).to be_an(Array)
    expect(dogs.size).to eq(1)
    expect(dogs.first).to be_an_instance_of(Dog)
  end
end
