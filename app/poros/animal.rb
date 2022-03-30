class Animal

  attr_reader :common_name,
              :scientific_name,
              :kingdom,
              :phylum,
              :taxclass,
              :taxorder,
              :family,
              :genus,
              :states,
              :gRank,
              :gRankReasons,
              :major_habitat,
              :habitatComments,
              :threatImpactComments,
              :shortTermTrend,
              :popSize

  def initialize(data)
    @common_name = data[:primaryCommonName]
    @scientific_name = data[:scientificName]
    @kingdom = data[:speciesGlobal][:kingdom]
    @phylum = data[:speciesGlobal][:phylum]
    @taxclass = data[:speciesGlobal][:taxclass]
    @taxorder = data[:speciesGlobal][:taxorder]
    @family = data[:speciesGlobal][:family]
    @genus = data[:speciesGlobal][:genus]
    @states = get_states(data)
    @gRank = data[:grank]
    @gRankReasons = data[:grankReasons]
    @major_habitat = data[:animalCharacteristics][:majorHabitat][:majorHabitatDescEn]
    @habitatComments = data[:speciesCharacteristics][:habitatComments]
    @threatImpactComments = data[:rankInfo][:threatImpactComments]
    @shortTermTrend = data[:rankInfo][:shortTermTrendComments]
    @popSize = data[:rankInfo][:popSize][:popSizeDescEn]

  end

  def get_states(data)
    test = []
    data[:elementNationals].map do |country|
      country[:elementSubnationals].map do |state|
      test << state[:subnation][:nameEn]
      end
    end
    test.flatten
  end
end
