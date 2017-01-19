class GamesController < ApplicationController

  def params_method
    @name = params["name_caps"].upcase
    if @name.start_with?("A")
      @letter_a = "hello a man"
    end 
    render "name_page.html.erb"
  end 

  def num_game_method 
    @number = params["number"]
    winning_number = 46
    if @number.to_i < 1 || @number.to_i > 100
      @message = "please pick a number 1 - 100"
    elsif @number.to_i == winning_number
      @message = "you are the greatest at this game"
    elsif @number.to_i > winning_number && @number.to_i <=100
      @message = "guess lower"
    elsif @number.to_i < winning_number && @number.to_i >= 1
      @message = "guess higher"
    end 
    render "num_game.html.erb"
  end 

  def num_game2_method
    @number = params[:wilcard_number]
    winning_number = 46
    if @number.to_i < 1 || @number.to_i > 100
      @message = "please pick a number 1 - 100"
    elsif @number.to_i == winning_number
      @message = "you are the greatest at this game"
    elsif @number.to_i > winning_number && @number.to_i <=100
      @message = "guess lower"
    elsif @number.to_i < winning_number && @number.to_i >= 1
      @message = "guess higher"
    end 


    render "num_game2.html.erb"
  end 

  def counter_method
    @number_of_views = params[:visit].to_i || 1
    render "counter_view.html.erb"
  end 
  def form_input_method
    
    render "form_input.html.erb"
  end

  def form_result_method
    @answer = params[:form_message]
    winning_number = 46
    if @answer.to_i < 1 || @answer.to_i > 100
      @message = "please pick a number 1 - 100"
    elsif @answer.to_i == winning_number
      @message = "you are the greatest at this game"
    elsif @answer.to_i > winning_number && @answer.to_i <=100
      @message = "guess lower"
    elsif @answer.to_i < winning_number && @answer.to_i >= 1
      @message = "guess higher"
    end    
    render "form_result.html.erb"
  end
end
