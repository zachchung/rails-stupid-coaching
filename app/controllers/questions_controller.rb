class QuestionsController < ApplicationController
  # Ask action -> ask.html.erb file
  def ask
  end

  # Answer action -> answer.html.erb file
  def answer
    # @ instance variable (from controller to view)
    # params[] (from view's url to controller)
    @question = params[:question]
    @answer = reply(@question)
  end

  def reply(question)
    if question == "I am going to work"
      "Great!"
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end


# Before refactoring/ method separation:
# def answer
#   if params[:question] == "I am going to work"
#     @answer = "Great!"
#   elsif params[:question].end_with?("?")
#     @answer = "Silly question, get dressed and go to work!"
#   else
#     @answer = "I don't care, get dressed and go to work!"
#   end
# end
