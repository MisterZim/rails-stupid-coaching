class QuestionsController < ApplicationController
  def ask
  end

  # def answer
  #   @answers = [ 'Great!', 'Silly question, get dressed and go to work!', 'I dont care, get dressed and go to work!' ]
  #   if params[:question] == 'I am going to work'
  #     @answer = @answers[0]
  #   elsif params[:question].include?('?')
  #     @answer = @answers[1]
  #   else
  #     @answer = @answers[2]
  #   end
  # end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
