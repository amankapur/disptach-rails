# encoding: utf-8
class KookoosController < ApplicationController
  # GET /kookoos
# GET /kookoos.json
  def index
    
      #render text: "<response><playtext>Welcome to the dispatch rickshaw service.Your location is being gathered. We will dispatch a rickshaw momentarily. Please enjoy some music.</playtext><hangup></hangup></response>"
      render text: "<?xml version='1.0' encoding='UTF-8'?>
                    <response filler='yes'>
                      <playtext lang='HI'>
                        वोदाफोन रिक्क्षा सर्विस मे आप्का स्वागत हे आप्की कौल फर्वर्र्द की जा रही हे क्रिपीया प्रतीक्ष कीजीये
                      </playtext>
                    <hangup></hangup>
                    </response>"
    end

end
