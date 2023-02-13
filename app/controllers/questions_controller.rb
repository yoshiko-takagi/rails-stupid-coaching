class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question_work = 'I am going to work'
    @answer_work = 'Great!'
    @answer_question = 'Silly question, get dressed and go to work!'
    @answer_else = "I don't care, get dressed and go to work!"

    @question = params[:question]
    @answer = stupid_coach
  end

  def stupid_coach
    if @question == @question_work
      @answer_work
    elsif params[:question].end_with?('?')
      @answer_question
    else
      @answer_else
    end
  end
end
