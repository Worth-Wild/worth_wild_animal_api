class Api::V1::AnimalController < ApplicationController

  def show
    animal_data = AnimalFacade.get_data(params[:elCode])
    render json: AnimalSerializer.new(animal_data)
  end

end
