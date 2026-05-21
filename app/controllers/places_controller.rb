class PlacesController < ApplicationController
  def index
    @places = Place.all
    render({ :template => "places/index" })
  end

  def show
    @place = Place.where({ :id => params.fetch("id") }).first
    render({ :template => "places/show" })
  end

  def new
    render({ :template => "places/new" })
  end

  def create
    a_place = Place.new
    a_place.name = params.fetch("name")
    a_place.save

    redirect_to("/places")
  end
end