require 'rails_helper'

RSpec.describe AnimalFacade do
  describe '::animal_search' do
    it 'returns animal data from the API' do
      element_code = "AAABB01220"
      data = AnimalFacade.get_data(element_code)
      expect(data).to be_a Animal
      expect(data.common_name).to be_a String
      expect(data.scientific_name).to be_a String
      expect(data.family).to be_a String
      expect(data.gRank).to be_a String
      expect(data.gRankReasons).to be_a String
      expect(data.genus).to be_a String
      expect(data.habitatComments).to be_a String
      expect(data.kingdom).to be_a String
      # expect(data.major_habitat).to be_a String
      expect(data.phylum).to be_a String
      expect(data.popSize).to be_a String
      expect(data.shortTermTrend).to be_a String
      expect(data.states).to be_a Array

    end
  end
end
