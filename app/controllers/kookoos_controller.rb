class KookoosController < ApplicationController
  # GET /kookoos
  # GET /kookoos.json
  def index
    @kookoos = Kookoo.all

    respond_to do |format|
#      format.html # index.html.erb

      render :file => "kookoo_response.xml", :layout => false
    end
  end

end
