Rails.application.routes.draw do
  # Root route — landing page shows the list of places
  get("/", { :controller => "places", :action => "index" })

  # Places
  get("/places", { :controller => "places", :action => "index" })
  get("/places/new", { :controller => "places", :action => "new" })
  get("/places/:id", { :controller => "places", :action => "show" })
  post("/places", { :controller => "places", :action => "create" })

  # Entries
  get("/places/:place_id/entries/new", { :controller => "entries", :action => "new" })
  post("/entries", { :controller => "entries", :action => "create" })
end