require 'rails_helper'

RSpec.describe do
  describe '::get_animal_data' do
    it 'returns data of the animal by element_code' do
      element_code = "AAABB01220"
      data = AnimalService.get_animal(element_code)


    end
  end
end
