# encoding: utf-8
class KookoosController < ApplicationController
  # GET /kookoos
# GET /kookoos.json
  def index
      if params[:event] == "NewCall"
        Ticket.create(
                caller_number: params[:cid],
                kookoo_number: params[:sid],
                called_number: params[:called_number],
                location: "Unknown"
        )
        response = "<response><playtext>Welcome to the rickshaw dispatch service. We will connect you to the nearest rickshaw puller momentarily.</playtext><collectdtmf l="1"><playtext>Please press any number to continue.</playtext></collectdtmf></response>"
      elsif params[:event] = "GotDTMF"
        # This part of the code needs to:
        #   - Get the customer location from the database if it's there
        #       If it's not there, wait for it / get it
        #   - Get the closest puller from the database
        #   - Route the call to the closest puller
        response = "<response><playtext>Your call is being forwarded.</playtext><hangup></hangup></response>"
      else:
        response = "<response><hangup></hangup></response>"
      end
      render text: response
      #render text: "<?xml version='1.0' encoding='UTF-8'?>
      #              <response filler='yes'>
      #                <playtext lang='HI'>
      #                  वोदाफोन रिक्क्षा सर्विस मे आप्का स्वागत हे आप्की कौल फर्वर्र्द की जा रही हे क्रिपीया प्रतीक्ष कीजीये
      #                </playtext>
      #              <hangup></hangup>
      #              </response>"
    end

end
