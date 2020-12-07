class SearchFacade

  def self.dog_images(number)
    images = DogService.dog_images(number)
    images.map do |dog|
      Dog.new(dog)
    end
  end
end
