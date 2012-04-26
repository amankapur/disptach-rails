class KookoosController < ApplicationController
  # GET /kookoos
  # GET /kookoos.json
  def index
    @kookoos = Kookoo.all

    respond_to do |format|
      format.html # index.html.erb
      
    end
  end

end
