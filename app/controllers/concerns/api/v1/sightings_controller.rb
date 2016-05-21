class Api::V1::SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
  end

  def show
    @sighting = Sighting.find_by(id: params[:id])
  end

  def create
    @sighting = Sighting.new(track_number: params[:track_number],
    total_homeless: params[:total_homeless], living_type: params[:living_type])
    @sighting.save

    render :show
  end

  def update
    @sighting = Sighting.find_by(id: params[:id])
    @sighting.update(track_number: params[:track_number],
    total_homeless: params[:total_homeless], living_type: params[:living_type])
    render :show
  end

  def destroy
    @sighting = Sighting.find_by(id: params[:id])
    @sighting.destroy
    render json: @sighting
  end
end
