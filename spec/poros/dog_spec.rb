require 'rails_helper'

describe "Dog PORO" do
  it 'has attributes' do
    dog_data = {
        "breeds": [
            {
                "id": 32,
                "name": "Bearded Collie",
                "bred_for": "Sheep herding",
                "breed_group": "Herding",
                "life_span": "12 - 14 years",
                "temperament": "Self-confidence, Hardy, Lively, Alert, Intelligent, Active"
            }
        ],
        "url": "https://cdn2.thedogapi.com/images/yxsOLj-GU.jpg",
    }

    dog = Dog.new(dog_data)

    expect(dog.image).to eq(dog_data[:url])
    expect(dog.breed_name).to eq(dog_data[:breeds][0][:name])
    expect(dog.life_span).to eq(dog_data[:breeds][0][:life_span])
    expect(dog.temperament).to eq(dog_data[:breeds][0][:temperament])
  end
end
