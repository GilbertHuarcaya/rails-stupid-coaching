class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if params[:question] === "I am going to work"
      @response = "Great!"
    elsif params[:question].match(/\?$/)
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
