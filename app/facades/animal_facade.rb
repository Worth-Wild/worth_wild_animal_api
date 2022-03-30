class AnimalFacade

  def self.get_data(element_code)
    data = AnimalService.get_animal(element_code)
    Animal.new(data)
  end

end
