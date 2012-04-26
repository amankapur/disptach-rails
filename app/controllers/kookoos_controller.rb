class KookoosController < ApplicationController
  # GET /kookoos
  # GET /kookoos.json
  def index
    #respond_to :xml
    #respond_to do |format|
      #format.html
     # format.xml  # index.xml.erb
      #render text: "<response><playtext>Welcome to the dispatch rickshaw service.Your location is being gathered. We will dispatch a rickshaw momentarily. Please enjoy some music.</playtext><hangup></hangup></response>", layout: false
      render :file => "kookoo_response.xml", :layout => false
    #end
  end

end
