class ParamsController < ApplicationController

  def query_params
    # http://localhost:3000/params_test?message=testing&second_message=hello
    # ?Key=value
    # ?message=whatever&second_message=whatever
    @message = params[:message]
    @second_message = params[:second_message]
  end

  def guess_a_number
    winning_number = 32
    chosen_number = params[:number].to_i

    if chosen_number > winning_number
      @message = "Too high. Guess lower."
    elsif chosen_number < winning_number
      @message = "Too low. Guess higher."
    else
      @message = "You got the number!"
    end
  end

  def url_params
    # localhost:3000/url_parameter/hello
    @message = params[:message]
    @second_message = params[:second_message]
  end

  def form_display
  end

  def form_result
    @message = params[:mymessage]
  end


end
