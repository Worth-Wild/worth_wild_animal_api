
class AnimalService

  def self.conn
    test = Faraday.new("https://explorer.natureserve.org")
  end

  def self.get_animal(element_code)
    response = conn.get("/api/data/taxonSearch") do |req|
      req.params['elCode'] = element_code
    end

     parse = JSON.parse(response.body, symbolize_names: true)
  end
end
