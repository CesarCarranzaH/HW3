class EntriesController < ApplicationController
  def new
    @place = Place.where({ :id => params.fetch("place_id") }).first
    render({ :template => "entries/new" })
  end

  def create
    an_entry = Entry.new
    an_entry.title = params.fetch("title")
    an_entry.description = params.fetch("description")
    an_entry.occurred_on = params.fetch("occurred_on")
    an_entry.place_id = params.fetch("place_id")
    an_entry.save

    redirect_to("/places/#{an_entry.place_id}")
  end
end