class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # @answers = ['hello', 'what is the time']
    # if params[:answer]
    #   @answers = @answers.select { |answer| answer.start_with?(params[:answer]) }
    # end
    @answer_you = params[:answer]
    if params[:answer] == "I am going to work"
      @answer_coach = "Great!"
    elsif params[:answer].include?("?")
      @answer_coach = "Silly question, get dressed and go to work!"
    else 
      @answer_coach = "I don't care, get dressed and go to work!"
    end
  end
end
