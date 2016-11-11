class ParamsController < ApplicationController

  def query_params
    # ?Key=value
    # ?message=whatever
    # &second_message=whatever
    @message = params[:message]
    @second_message = params[:second_message]

  end



end
