require 'rails_helper'

RSpec.describe 'Animal API Endpoint' do
  describe 'GET /animal/:id' do
    it 'returns a animal based on the search param' do
      animal_params = { elCode: "AMAJB01010" }
      get '/api/v1/animal/:id', params: animal_params
      result = JSON.parse(response.body, symbolize_names: true)

      expect(result).to be_a Hash
      expect(result[:data]).to have_key(:type)
      expect(result[:data]).to have_key(:attributes)
      expect(result[:data][:attributes]).to have_key(:common_name)
      expect(result[:data][:attributes]).to have_key(:scientific_name)
      expect(result[:data][:attributes]).to have_key(:kingdom)
      expect(result[:data][:attributes]).to have_key(:phylum)
      expect(result[:data][:attributes]).to have_key(:taxclass)
      expect(result[:data][:attributes]).to have_key(:taxorder)
      expect(result[:data][:attributes]).to have_key(:family)
      expect(result[:data][:attributes]).to have_key(:genus)

      expect(result[:data]).to have_key(:region)
      expect(result[:data][:region]).to have_key(:statesTerritories)

      expect(result[:data]).to have_key(:vulnerability)
      expect(result[:data][:vulnerability]).to have_key(:gRank)
      expect(result[:data][:vulnerability]).to have_key(:gRankReasons)

      expect(result[:data]).to have_key(:habitat_data)
      expect(result[:data][:habitat_data]).to have_key(:habitats)
      expect(result[:data][:habitat_data]).to have_key(:habitatComments)
      expect(result[:data][:habitat_data]).to have_key(:threatImpactComments)
      expect(result[:data][:habitat_data]).to have_key(:shortTermTrend)
      expect(result[:data][:habitat_data]).to have_key(:popSize)

    end
  end
end
