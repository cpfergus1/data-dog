class Dog
  attr_reader :image

  def initialize(dog_data)
    @image = dog_data[:url] ? dog_data[:url] : "Unknown"
    @breeds = dog_data[:breeds]
  end

  def breed_name
    breed_info(:name)
  end

  def life_span
    breed_info(:life_span)
  end

  def temperament
    breed_info(:temperament)
  end

  private
    def breed_info(attribute)
      if @breeds.empty? || !@breeds[0][attribute]
        "Unknown"
      else
        @breeds.map do |breed|
          breed[attribute]
        end.join(" ,")
      end
    end

end
