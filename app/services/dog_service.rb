class DogService

  def self.dog_images(number)
    response = conn.get("/v1/images/search") do |req|
      req.params[:limit] = number
    end
    JSON.parse(response.body, symbolize_names: true)
  end


  private
    def self.conn
      Faraday.new("https://api.thedogapi.com") do |f|
        f.headers["x-api-key"] = ENV["DOG_API_KEY"]
      end
    end
end
