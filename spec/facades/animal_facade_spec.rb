require 'rails_helper'

RSpec.describe AnimalFacade do
  describe '::animal_search' do
    it 'returns animal data from the API' do
      element_code = "AMAJB01010"
      data = AnimalFacade.get_data(element_code)

      # expect(data).to be_a Animal
      # expect(data.id).to be nil
      # expect(data.photo_url).to be_a String
      # expect(data.host_url).to be_a String
    end
  end
end
