class AnimalSerializer

  def self.new(animal_data)
  { "data":
    {
        # 'id': animal_data.id,
        'type': "animal",
        'attributes':
        {
          'common_name': animal_data.common_name,
          'scientific_name': animal_data.scientific_name,
          'kingdom': animal_data.kingdom,
          'phylum': animal_data.phylum,
          'taxclass': animal_data.taxclass,
          'taxorder': animal_data.taxorder,
          'family': animal_data.family,
          'genus': animal_data.genus
          },
          'region': {
            'statesTerritories': animal_data.states,
          },
          'vulnerability': {
            'gRank': animal_data.gRank,
            'gRankReasons': animal_data.gRankReasons
          },
          "habitat_data":
          {
            'habitats': animal_data.major_habitat,
            'habitatComments': animal_data.habitatComments,
            'threatImpactComments': animal_data.threatImpactComments,
            'shortTermTrend': animal_data.shortTermTrend,
            'popSize': animal_data.popSize,
          }
    }
  }

  end

end
